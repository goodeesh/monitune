package com.goodeesh.monitune.display

import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.app.Service
import android.content.Context
import android.content.Intent
import android.content.pm.ActivityInfo
import android.content.pm.ServiceInfo
import android.graphics.PixelFormat
import android.os.Build
import android.os.IBinder
import android.util.Log
import android.view.Gravity
import android.view.View
import android.view.WindowManager
import com.goodeesh.monitune.MainActivity
import com.goodeesh.monitune.R

/**
 * Forces the display to landscape by adding a 1x1 invisible overlay window whose
 * layout params request [ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE].
 *
 * Overlay windows sit above normal activities, so the display rotates even for
 * apps that lock themselves to portrait — including the HyperOS/MIUI launcher.
 * Requires the SYSTEM_ALERT_WINDOW ("Display over other apps") permission.
 */
class OrientationOverlayService : Service() {

    companion object {
        private const val TAG = "OrientationOverlay"
        const val ACTION_START = "com.goodeesh.monitune.action.START_ORIENTATION_OVERLAY"
        const val ACTION_STOP = "com.goodeesh.monitune.action.STOP_ORIENTATION_OVERLAY"
        private const val CHANNEL_ID = "monitune_orientation"
        private const val NOTIFICATION_ID = 4102

        @Volatile
        private var running = false

        fun isRunning(): Boolean = running
    }

    private var windowManager: WindowManager? = null
    private var overlayView: View? = null

    override fun onBind(intent: Intent?): IBinder? = null

    override fun onCreate() {
        super.onCreate()
        windowManager = getSystemService(Context.WINDOW_SERVICE) as WindowManager
        createChannel()
    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        when (intent?.action) {
            ACTION_STOP -> {
                OrientationLock.setEnabled(this, false)
                removeOverlay()
                stopForeground(STOP_FOREGROUND_REMOVE)
                stopSelf()
                return START_NOT_STICKY
            }
            else -> {
                if (!OrientationLock.isEnabled(this)) {
                    stopSelf()
                    return START_NOT_STICKY
                }
                startForegroundNotification()
                addOverlay()
            }
        }
        return START_STICKY
    }

    private fun addOverlay() {
        if (overlayView != null) return
        val wm = windowManager ?: return
        val view = View(this)
        val params = WindowManager.LayoutParams(
            1,
            1,
            WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY,
            WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE
                or WindowManager.LayoutParams.FLAG_NOT_TOUCHABLE
                or WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN
                or WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS,
            PixelFormat.TRANSLUCENT,
        ).apply {
            gravity = Gravity.TOP or Gravity.START
            screenOrientation = ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE
        }
        try {
            wm.addView(view, params)
            overlayView = view
            running = true
            Log.i(TAG, "Orientation overlay added (forced landscape)")
        } catch (e: Throwable) {
            Log.e(TAG, "Failed to add orientation overlay", e)
            running = false
            stopSelf()
        }
    }

    private fun removeOverlay() {
        val view = overlayView ?: return
        try {
            windowManager?.removeView(view)
            Log.i(TAG, "Orientation overlay removed")
        } catch (e: Throwable) {
            Log.w(TAG, "Failed to remove overlay: ${e.message}")
        }
        overlayView = null
        running = false
    }

    private fun createChannel() {
        val nm = getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
        if (nm.getNotificationChannel(CHANNEL_ID) == null) {
            val channel = NotificationChannel(
                CHANNEL_ID,
                "Landscape lock",
                NotificationManager.IMPORTANCE_LOW,
            ).apply {
                description = "Shown while Monitune forces the display to landscape."
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
            .setContentTitle("Monitune")
            .setContentText("Landscape lock active")
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
        removeOverlay()
        running = false
        super.onDestroy()
    }
}
