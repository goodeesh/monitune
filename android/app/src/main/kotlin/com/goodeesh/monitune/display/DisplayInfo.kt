package com.goodeesh.monitune.display

import android.app.ActivityManager
import android.content.Context
import android.content.Intent
import android.content.pm.PackageManager
import android.os.Build
import android.os.StatFs
import android.util.DisplayMetrics
import android.view.WindowManager
import java.io.File

/** Read-only device/display facts used to tailor the UI. */
object DisplayInfo {

    fun deviceInfo(context: Context): Map<String, Any> {
        val metrics = DisplayMetrics()
        @Suppress("DEPRECATION")
        (context.getSystemService(Context.WINDOW_SERVICE) as WindowManager)
            .defaultDisplay.getRealMetrics(metrics)

        return mapOf(
            "model" to Build.MODEL,
            "brand" to Build.BRAND,
            "androidVersion" to Build.VERSION.RELEASE,
            "sdkVersion" to Build.VERSION.SDK_INT,
            "cpuAbi" to Build.SUPPORTED_ABIS.firstOrNull().orEmpty(),
            "nativeWidth" to metrics.widthPixels,
            "nativeHeight" to metrics.heightPixels,
            "isMiuiLauncher" to isMiuiLauncher(context),
            "totalRamMB" to totalRamMB(context),
            "availableStorageMB" to availableStorageMB(context),
        )
    }

    /** True when the current default home app is a Xiaomi MIUI/HyperOS launcher. */
    fun isMiuiLauncher(context: Context): Boolean {
        return try {
            val resolve = context.packageManager.resolveActivity(
                Intent(Intent.ACTION_MAIN).addCategory(Intent.CATEGORY_HOME),
                PackageManager.MATCH_DEFAULT_ONLY,
            )
            when (resolve?.activityInfo?.packageName) {
                "com.miui.home",
                "com.miui.launcher",
                "com.mi.android.globalLauncher",
                "com.poco.launcher",
                -> true
                else -> false
            }
        } catch (e: Throwable) {
            false
        }
    }

    private fun totalRamMB(context: Context): Long {
        val am = context.getSystemService(Context.ACTIVITY_SERVICE) as ActivityManager
        val info = ActivityManager.MemoryInfo()
        am.getMemoryInfo(info)
        return info.totalMem / (1024 * 1024)
    }

    private fun availableStorageMB(context: Context): Long {
        val stat = StatFs(File(context.filesDir.absolutePath).absolutePath)
        return stat.availableBytes / (1024 * 1024)
    }
}
