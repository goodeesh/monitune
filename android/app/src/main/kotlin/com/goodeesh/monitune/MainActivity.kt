package com.goodeesh.monitune

import android.content.Context
import android.content.Intent
import android.content.pm.PackageManager
import android.os.Build
import android.os.PowerManager
import android.provider.Settings
import android.util.Log
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import com.goodeesh.monitune.display.DisplayInfo
import com.goodeesh.monitune.display.DisplaySafetyWatchdog
import com.goodeesh.monitune.display.ExternalDisplayService
import com.goodeesh.monitune.display.OrientationLock
import com.goodeesh.monitune.display.OrientationOverlayService
import com.goodeesh.monitune.display.ShizukuDisplayManager
import kotlin.concurrent.thread
import android.Manifest
import android.net.Uri

class MainActivity : FlutterActivity() {

    companion object {
        private const val CHANNEL = "com.goodeesh.monitune/core"
        private const val TAG = "MainActivity"
    }

    override fun onCreate(savedInstanceState: android.os.Bundle?) {
        super.onCreate(savedInstanceState)

        ShizukuDisplayManager.init { granted ->
            flutterEngine?.dartExecutor?.binaryMessenger?.let { messenger ->
                MethodChannel(messenger, CHANNEL).invokeMethod("onShizukuPermissionResult", granted)
            }
            if (granted) {
                autoHardenPhantomKiller()
            }
        }

        autoHardenPhantomKiller()
    }

    override fun onDestroy() {
        DisplaySafetyWatchdog.unregister(this)
        ShizukuDisplayManager.cleanup()
        super.onDestroy()
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            when (call.method) {

                "getDisplayStatus" -> {
                    val status = HashMap<String, Any>(ShizukuDisplayManager.getDisplayMetrics(this))
                    status["hasPrivilegedShell"] = ShizukuDisplayManager.hasPrivilegedShell(this)
                    status["hasOverlayPermission"] = Settings.canDrawOverlays(this)
                    status["hasWriteSettingsPermission"] = Settings.System.canWrite(this)
                    status["hasNotificationPermission"] = hasNotificationPermission()
                    status["orientationOverlayRunning"] = OrientationOverlayService.isRunning()
                    result.success(status)
                }

                "getDeviceInfo" -> result.success(DisplayInfo.deviceInfo(this))

                "requestShizukuPermission" -> {
                    ShizukuDisplayManager.requestPermission(this)
                    result.success(true)
                }

                "selfGrantWriteSecureSettings" -> {
                    thread {
                        val granted = ShizukuDisplayManager.ensureWriteSecureSettings(this)
                        val hardened = if (granted) {
                            ShizukuDisplayManager.hardenPhantomProcessKiller(this)
                        } else {
                            false
                        }
                        runOnUiThread {
                            result.success(
                                mapOf(
                                    "granted" to granted,
                                    "hasWriteSecureSettings" to ShizukuDisplayManager.hasWriteSecureSettings(this),
                                    "ppkHardened" to hardened,
                                ),
                            )
                        }
                    }
                }

                "hardenPhantomProcessKiller" -> {
                    thread {
                        val hardened = ShizukuDisplayManager.hardenPhantomProcessKiller(this)
                        runOnUiThread { result.success(hardened) }
                    }
                }

                "applyDisplayProfile" -> {
                    val width = call.argument<Int>("width") ?: 1920
                    val height = call.argument<Int>("height") ?: 1080
                    val scalePercent = call.argument<Int>("scalePercent") ?: 100
                    val forceLandscape = call.argument<Boolean>("forceLandscape") ?: true
                    val applyDensity = call.argument<Boolean>("applyDensity") ?: true
                    thread {
                        val ok = ShizukuDisplayManager.applyDisplayProfile(
                            this, width, height, scalePercent, forceLandscape, applyDensity,
                        )
                        runOnUiThread { result.success(ok) }
                    }
                }

                "resetDisplay" -> {
                    thread {
                        val ok = ShizukuDisplayManager.resetDisplay(this)
                        runOnUiThread { result.success(ok) }
                    }
                }

                "startCountdownSafety" -> {
                    val seconds = call.argument<Int>("seconds") ?: 15
                    DisplaySafetyWatchdog.startCountdownTimer(this, seconds) {
                        OrientationLock.release(this)
                        runOnUiThread {
                            flutterEngine?.dartExecutor?.binaryMessenger?.let { messenger ->
                                MethodChannel(messenger, CHANNEL).invokeMethod("onDisplayCountdownTimeout", null)
                            }
                        }
                    }
                    result.success(true)
                }

                "confirmDisplayProfile" -> {
                    DisplaySafetyWatchdog.confirmDisplayProfile()
                    result.success(true)
                }

                "setOrientationLock" -> {
                    val landscape = call.argument<Boolean>("landscape") ?: true
                    thread {
                        val status = ShizukuDisplayManager.setOrientationOverride(this, landscape)
                        runOnUiThread { result.success(status) }
                    }
                }

                "hasOverlayPermission" -> result.success(Settings.canDrawOverlays(this))

                "hasWriteSettingsPermission" -> result.success(Settings.System.canWrite(this))

                "requestWriteSettingsPermission" -> {
                    try {
                        startActivity(Intent(
                            Settings.ACTION_MANAGE_WRITE_SETTINGS,
                            Uri.parse("package:$packageName"),
                        ))
                    } catch (e: Throwable) {
                        Log.w(TAG, "Failed to open write-settings screen: ${e.message}")
                    }
                    result.success(true)
                }

                "requestOverlayPermission" -> {
                    try {
                        val intent = Intent(
                            Settings.ACTION_MANAGE_OVERLAY_PERMISSION,
                            Uri.parse("package:$packageName"),
                        )
                        startActivity(intent)
                    } catch (e: Throwable) {
                        Log.w(TAG, "Failed to open overlay permission settings: ${e.message}")
                    }
                    result.success(true)
                }

                "startOrientationOverlay" -> {
                    OrientationLock.setEnabled(this, true)
                    OrientationLock.applyRotationSettings(this, landscape = true)
                    startOverlayService(OrientationOverlayService.ACTION_START)
                    result.success(true)
                }

                "stopOrientationOverlay" -> {
                    OrientationLock.release(this)
                    result.success(true)
                }

                "isOrientationOverlayRunning" -> result.success(OrientationOverlayService.isRunning())

                "hasNotificationPermission" -> result.success(hasNotificationPermission())

                "requestNotificationPermission" -> {
                    ensureNotificationPermission()
                    result.success(true)
                }

                "hasPrivilegedShell" -> {
                    result.success(ShizukuDisplayManager.hasPrivilegedShell(this))
                }

                "startExternalDisplayWatch" -> {
                    ExternalDisplayService.saveConfig(
                        this,
                        width = call.argument<Int>("width") ?: 1920,
                        height = call.argument<Int>("height") ?: 1080,
                        scale = call.argument<Int>("scalePercent") ?: 100,
                        forceLandscape = call.argument<Boolean>("forceLandscape") ?: true,
                        applyDensity = call.argument<Boolean>("applyDensity") ?: true,
                        autoReset = call.argument<Boolean>("autoReset") ?: true,
                        enabled = true,
                    )
                    ensureNotificationPermission()
                    startDisplayWatchService(ExternalDisplayService.ACTION_START)
                    result.success(true)
                }

                "updateExternalDisplayWatch" -> {
                    ExternalDisplayService.saveConfig(
                        this,
                        width = call.argument<Int>("width") ?: 1920,
                        height = call.argument<Int>("height") ?: 1080,
                        scale = call.argument<Int>("scalePercent") ?: 100,
                        forceLandscape = call.argument<Boolean>("forceLandscape") ?: true,
                        applyDensity = call.argument<Boolean>("applyDensity") ?: true,
                        autoReset = call.argument<Boolean>("autoReset") ?: true,
                        enabled = true,
                    )
                    startDisplayWatchService(ExternalDisplayService.ACTION_UPDATE)
                    result.success(true)
                }

                "stopExternalDisplayWatch" -> {
                    ExternalDisplayService.setEnabled(this, false)
                    startDisplayWatchService(ExternalDisplayService.ACTION_STOP)
                    result.success(true)
                }

                "isExternalDisplayWatchRunning" -> {
                    result.success(ExternalDisplayService.isRunning() && ExternalDisplayService.isEnabled(this))
                }

                "getExternalDisplayName" -> {
                    result.success(ExternalDisplayService.connectedExternalDisplay(this))
                }

                "isBatteryOptimized" -> result.success(isBatteryOptimized())

                "requestBatteryOptimization" -> {
                    requestIgnoreBatteryOptimization()
                    result.success(true)
                }

                else -> result.notImplemented()
            }
        }
    }

    private fun autoHardenPhantomKiller() {
        thread(name = "ppk-harden") {
            try {
                for (i in 1..20) {
                    if (ShizukuDisplayManager.isShizukuAvailable()) break
                    Thread.sleep(500)
                }
                val hardened = ShizukuDisplayManager.hardenPhantomProcessKiller(this)
                Log.i(TAG, "PPK hardening result: $hardened")
            } catch (e: Throwable) {
                Log.w(TAG, "PPK hardening skipped: ${e.message}")
            }
        }
    }

    private fun isBatteryOptimized(): Boolean {
        val pm = getSystemService(Context.POWER_SERVICE) as PowerManager
        return !pm.isIgnoringBatteryOptimizations(packageName)
    }

    private fun requestIgnoreBatteryOptimization() {
        if (!isBatteryOptimized()) return
        val intent = Intent(Settings.ACTION_REQUEST_IGNORE_BATTERY_OPTIMIZATIONS).apply {
            data = Uri.parse("package:$packageName")
        }
        startActivity(intent)
    }

    private fun startDisplayWatchService(action: String) {
        try {
            val intent = Intent(this, ExternalDisplayService::class.java).setAction(action)
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                startForegroundService(intent)
            } else {
                startService(intent)
            }
        } catch (e: Throwable) {
            Log.w(TAG, "Failed to start display watch service: ${e.message}")
        }
    }

    private fun startOverlayService(action: String) {
        try {
            val intent = Intent(this, OrientationOverlayService::class.java).setAction(action)
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                startForegroundService(intent)
            } else {
                startService(intent)
            }
        } catch (e: Throwable) {
            Log.w(TAG, "Failed to start orientation overlay service: ${e.message}")
        }
    }

    private fun hasNotificationPermission(): Boolean {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.TIRAMISU) return true
        return checkSelfPermission(Manifest.permission.POST_NOTIFICATIONS) == PackageManager.PERMISSION_GRANTED
    }

    private fun ensureNotificationPermission() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            if (checkSelfPermission(Manifest.permission.POST_NOTIFICATIONS) != PackageManager.PERMISSION_GRANTED) {
                requestPermissions(arrayOf(Manifest.permission.POST_NOTIFICATIONS), 9100)
            }
        }
    }
}
