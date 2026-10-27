package com.goodeesh.monitune.display

import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.app.Service
import android.content.Context
import android.content.Intent
import android.content.pm.ServiceInfo
import android.hardware.display.DisplayManager
import android.os.Build
import android.os.IBinder
import android.provider.Settings
import android.util.Log
import com.goodeesh.monitune.MainActivity
import com.goodeesh.monitune.R
import kotlin.concurrent.thread

/**
 * Foreground service that watches for external displays (HDMI/DP/USB or wireless)
 * and applies the saved display profile automatically when one connects, then
 * resets to native when it disconnects.
 *
 * Uses a `specialUse` foreground service type so it survives in the background.
 */
class ExternalDisplayService : Service(), DisplayManager.DisplayListener {

    companion object {
        private const val TAG = "ExternalDisplayService"

        const val ACTION_START = "com.goodeesh.monitune.action.START_WATCH"
        const val ACTION_STOP = "com.goodeesh.monitune.action.STOP_WATCH"
        const val ACTION_UPDATE = "com.goodeesh.monitune.action.UPDATE_WATCH"

        const val EXTRA_WIDTH = "width"
        const val EXTRA_HEIGHT = "height"
        const val EXTRA_SCALE = "scale"
        const val EXTRA_FORCE_LANDSCAPE = "forceLandscape"
        const val EXTRA_APPLY_DENSITY = "applyDensity"
        const val EXTRA_AUTO_RESET = "autoReset"
        const val EXTRA_BLACKOUT = "blackoutPhone"

        private const val PREFS = "monitune_auto"
        private const val KEY_ENABLED = "enabled"
        private const val KEY_WIDTH = "width"
        private const val KEY_HEIGHT = "height"
        private const val KEY_SCALE = "scale"
        private const val KEY_FORCE_LANDSCAPE = "forceLandscape"
        private const val KEY_APPLY_DENSITY = "applyDensity"
        private const val KEY_AUTO_RESET = "autoReset"
        private const val KEY_BLACKOUT = "blackoutPhone"
        private const val KEY_SAVED_BRIGHTNESS = "savedBrightness"
        private const val KEY_SAVED_BRIGHTNESS_MODE = "savedBrightnessMode"
        private const val KEY_BLACKOUT_ACTIVE = "isBlackoutActive"

        private const val CHANNEL_ID = "monitune_watch"
        private const val NOTIFICATION_ID = 4101

        @Volatile
        private var running = false

        fun isEnabled(context: Context): Boolean =
            context.getSharedPreferences(PREFS, Context.MODE_PRIVATE).getBoolean(KEY_ENABLED, false)

        fun isBlackoutEnabled(context: Context): Boolean =
            context.getSharedPreferences(PREFS, Context.MODE_PRIVATE).getBoolean(KEY_BLACKOUT, false)

        fun isRunning(): Boolean = running

        fun restoreBlackout(context: Context) {
            val prefs = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
            if (!prefs.getBoolean(KEY_BLACKOUT_ACTIVE, false)) return
            val savedBrightness = prefs.getInt(KEY_SAVED_BRIGHTNESS, -1)
            val savedMode = prefs.getInt(KEY_SAVED_BRIGHTNESS_MODE, -1)
            try {
                val targetBrightness = if (savedBrightness >= 0) savedBrightness else 128
                Settings.System.putInt(context.contentResolver, Settings.System.SCREEN_BRIGHTNESS, targetBrightness)
                if (savedMode >= 0) {
                    Settings.System.putInt(context.contentResolver, Settings.System.SCREEN_BRIGHTNESS_MODE, savedMode)
                }
                Log.i(TAG, "Restored screen brightness=$targetBrightness mode=$savedMode")
            } catch (e: Throwable) {
                Log.e(TAG, "Failed to restore screen brightness", e)
            } finally {
                prefs.edit()
                    .remove(KEY_SAVED_BRIGHTNESS)
                    .remove(KEY_SAVED_BRIGHTNESS_MODE)
                    .putBoolean(KEY_BLACKOUT_ACTIVE, false)
                    .apply()
            }
        }

        fun setEnabled(context: Context, enabled: Boolean) {
            context.getSharedPreferences(PREFS, Context.MODE_PRIVATE).edit()
                .putBoolean(KEY_ENABLED, enabled)
                .apply()
        }

        fun saveConfig(
            context: Context,
            width: Int,
            height: Int,
            scale: Int,
            forceLandscape: Boolean,
            applyDensity: Boolean,
            autoReset: Boolean,
            blackout: Boolean = false,
            enabled: Boolean,
        ) {
            context.getSharedPreferences(PREFS, Context.MODE_PRIVATE).edit()
                .putInt(KEY_WIDTH, width)
                .putInt(KEY_HEIGHT, height)
                .putInt(KEY_SCALE, scale)
                .putBoolean(KEY_FORCE_LANDSCAPE, forceLandscape)
                .putBoolean(KEY_APPLY_DENSITY, applyDensity)
                .putBoolean(KEY_AUTO_RESET, autoReset)
                .putBoolean(KEY_BLACKOUT, blackout)
                .putBoolean(KEY_ENABLED, enabled)
                .apply()
        }

        /** Name of a currently-connected presentation display, or null. */
        fun connectedExternalDisplay(context: Context): String? {
            val dm = context.getSystemService(Context.DISPLAY_SERVICE) as? DisplayManager ?: return null
            return dm.getDisplays(DisplayManager.DISPLAY_CATEGORY_PRESENTATION).firstOrNull()?.let { d ->
                d.name?.takeIf { it.isNotBlank() } ?: "External display"
            }
        }
    }

    private lateinit var displayManager: DisplayManager
    private var listening = false
    private var wasConnected = false

    override fun onBind(intent: Intent?): IBinder? = null

    override fun onCreate() {
        super.onCreate()
        displayManager = getSystemService(Context.DISPLAY_SERVICE) as DisplayManager
        if (connectedExternalDisplay(this) == null) {
            restoreBlackout(this)
        }
        createChannel()
    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        when (intent?.action) {
            ACTION_STOP -> {
                getSharedPreferences(PREFS, Context.MODE_PRIVATE).edit().putBoolean(KEY_ENABLED, false).apply()
                restoreBlackout(this)
                stopWatching()
                return START_NOT_STICKY
            }

            ACTION_START, ACTION_UPDATE -> {
                saveFromIntent(intent)
                startForegroundNotification()
                startWatching()
                evaluateDisplays()
            }

            else -> {
                if (isEnabled(this)) {
                    startForegroundNotification()
                    startWatching()
                    evaluateDisplays()
                } else {
                    stopSelf()
                    return START_NOT_STICKY
                }
            }
        }
        return START_STICKY
    }

    private fun saveFromIntent(intent: Intent) {
        val prefs = getSharedPreferences(PREFS, Context.MODE_PRIVATE)
        prefs.edit()
            .putInt(KEY_WIDTH, intent.getIntExtra(EXTRA_WIDTH, prefs.getInt(KEY_WIDTH, 1920)))
            .putInt(KEY_HEIGHT, intent.getIntExtra(EXTRA_HEIGHT, prefs.getInt(KEY_HEIGHT, 1080)))
            .putInt(KEY_SCALE, intent.getIntExtra(EXTRA_SCALE, prefs.getInt(KEY_SCALE, 100)))
            .putBoolean(KEY_FORCE_LANDSCAPE, intent.getBooleanExtra(EXTRA_FORCE_LANDSCAPE, prefs.getBoolean(KEY_FORCE_LANDSCAPE, true)))
            .putBoolean(KEY_APPLY_DENSITY, intent.getBooleanExtra(EXTRA_APPLY_DENSITY, prefs.getBoolean(KEY_APPLY_DENSITY, true)))
            .putBoolean(KEY_AUTO_RESET, intent.getBooleanExtra(EXTRA_AUTO_RESET, prefs.getBoolean(KEY_AUTO_RESET, true)))
            .putBoolean(KEY_BLACKOUT, intent.getBooleanExtra(EXTRA_BLACKOUT, prefs.getBoolean(KEY_BLACKOUT, false)))
            .putBoolean(KEY_ENABLED, true)
            .apply()
    }

    private fun applyBlackout() {
        val prefs = getSharedPreferences(PREFS, Context.MODE_PRIVATE)
        if (!prefs.getBoolean(KEY_BLACKOUT, false)) return
        if (prefs.getBoolean(KEY_BLACKOUT_ACTIVE, false)) return

        try {
            val currentBrightness = Settings.System.getInt(contentResolver, Settings.System.SCREEN_BRIGHTNESS, 128)
            val currentMode = Settings.System.getInt(contentResolver, Settings.System.SCREEN_BRIGHTNESS_MODE, Settings.System.SCREEN_BRIGHTNESS_MODE_AUTOMATIC)

            prefs.edit()
                .putInt(KEY_SAVED_BRIGHTNESS, currentBrightness)
                .putInt(KEY_SAVED_BRIGHTNESS_MODE, currentMode)
                .putBoolean(KEY_BLACKOUT_ACTIVE, true)
                .apply()

            Settings.System.putInt(contentResolver, Settings.System.SCREEN_BRIGHTNESS_MODE, Settings.System.SCREEN_BRIGHTNESS_MODE_MANUAL)
            Settings.System.putInt(contentResolver, Settings.System.SCREEN_BRIGHTNESS, 0)
            Log.i(TAG, "Applied screen blackout: brightness 0 (saved: $currentBrightness, mode: $currentMode)")
        } catch (e: Throwable) {
            Log.e(TAG, "Failed to apply screen blackout", e)
            prefs.edit()
                .remove(KEY_SAVED_BRIGHTNESS)
                .remove(KEY_SAVED_BRIGHTNESS_MODE)
                .putBoolean(KEY_BLACKOUT_ACTIVE, false)
                .apply()
        }
    }

    private fun startWatching() {
        if (!listening) {
            displayManager.registerDisplayListener(this, null)
            listening = true
            running = true
            Log.i(TAG, "Watching for external displays")
        }
    }

    private fun stopWatching() {
        if (listening) {
            try {
                displayManager.unregisterDisplayListener(this)
            } catch (_: Throwable) {}
            listening = false
        }
        running = false
        stopForeground(STOP_FOREGROUND_REMOVE)
        stopSelf()
    }

    private fun evaluateDisplays() {
        val connected = displayManager
            .getDisplays(DisplayManager.DISPLAY_CATEGORY_PRESENTATION)
            .isNotEmpty()

        if (connected && !wasConnected) {
            wasConnected = true
            Log.i(TAG, "External display connected — applying profile")
            applyStoredProfile()
            applyBlackout()
        } else if (connected && wasConnected) {
            val prefs = getSharedPreferences(PREFS, Context.MODE_PRIVATE)
            val blackoutRequested = prefs.getBoolean(KEY_BLACKOUT, false)
            val blackoutActive = prefs.getBoolean(KEY_BLACKOUT_ACTIVE, false)
            if (blackoutRequested && !blackoutActive) {
                applyBlackout()
            } else if (!blackoutRequested && blackoutActive) {
                restoreBlackout(this)
            }
        } else if (!connected && wasConnected) {
            wasConnected = false
            Log.i(TAG, "External display disconnected")
            restoreBlackout(this)
            if (autoReset()) {
                OrientationLock.release(this)
                thread(name = "monitune-auto-reset") {
                    ShizukuDisplayManager.resetDisplay(this)
                }
            }
        }
    }

    private fun applyStoredProfile() {
        val prefs = getSharedPreferences(PREFS, Context.MODE_PRIVATE)
        val width = prefs.getInt(KEY_WIDTH, 1920)
        val height = prefs.getInt(KEY_HEIGHT, 1080)
        val scale = prefs.getInt(KEY_SCALE, 100)
        val landscape = prefs.getBoolean(KEY_FORCE_LANDSCAPE, true)
        val density = prefs.getBoolean(KEY_APPLY_DENSITY, true)
        if (landscape) {
            enableOrientationLock()
        }
        thread(name = "monitune-auto-apply") {
            ShizukuDisplayManager.applyDisplayProfile(
                this,
                width,
                height,
                scale,
                landscape,
                density,
                enableWatchdog = false,
            )
        }
    }

    /** Engages the landscape lock as part of applying the profile. */
    private fun enableOrientationLock() {
        OrientationLock.setEnabled(this, true)
        OrientationLock.applyRotationSettings(this, true)
        try {
            val intent = Intent(this, OrientationOverlayService::class.java)
                .setAction(OrientationOverlayService.ACTION_START)
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                startForegroundService(intent)
            } else {
                startService(intent)
            }
        } catch (e: Throwable) {
            Log.w(TAG, "Failed to start orientation overlay: ${e.message}")
        }
    }

    private fun autoReset(): Boolean =
        getSharedPreferences(PREFS, Context.MODE_PRIVATE).getBoolean(KEY_AUTO_RESET, true)

    // ── DisplayListener ──

    override fun onDisplayAdded(displayId: Int) = evaluateDisplays()
    override fun onDisplayRemoved(displayId: Int) = evaluateDisplays()
    override fun onDisplayChanged(displayId: Int) {}

    // ── Notification ──

    private fun createChannel() {
        val nm = getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
        if (nm.getNotificationChannel(CHANNEL_ID) == null) {
            val channel = NotificationChannel(
                CHANNEL_ID,
                getString(R.string.notif_external_display_channel_name),
                NotificationManager.IMPORTANCE_LOW,
            ).apply {
                description = getString(R.string.notif_external_display_channel_desc)
                setShowBadge(false)
            }
            nm.createNotificationChannel(channel)
        }
    }

    private fun startForegroundNotification() {
        val contentIntent = PendingIntent.getActivity(
            this,
            0,
            Intent(this, MainActivity::class.java),
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE,
        )
        val notification: Notification = Notification.Builder(this, CHANNEL_ID)
            .setContentTitle(getString(R.string.notif_external_display_title))
            .setContentText(getString(R.string.notif_external_display_desc))
            .setSmallIcon(R.drawable.ic_stat_monitune)
            .setOngoing(true)
            .setContentIntent(contentIntent)
            .build()

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.UPSIDE_DOWN_CAKE) {
            startForeground(NOTIFICATION_ID, notification, ServiceInfo.FOREGROUND_SERVICE_TYPE_SPECIAL_USE)
        } else {
            startForeground(NOTIFICATION_ID, notification)
        }
    }

    override fun onDestroy() {
        restoreBlackout(this)
        if (listening) {
            try {
                displayManager.unregisterDisplayListener(this)
            } catch (_: Throwable) {}
            listening = false
        }
        running = false
        super.onDestroy()
    }
}
