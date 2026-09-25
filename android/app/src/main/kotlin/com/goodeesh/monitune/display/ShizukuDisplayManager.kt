package com.goodeesh.monitune.display

import android.app.Activity
import android.content.Context
import android.content.pm.PackageManager
import android.os.Build
import android.os.IBinder
import android.os.Process
import android.provider.Settings
import android.util.DisplayMetrics
import android.util.Log
import android.view.Surface
import android.view.WindowManager
import com.goodeesh.monitune.privilege.RootShell
import org.lsposed.hiddenapibypass.HiddenApiBypass
import rikka.shizuku.Shizuku
import java.io.BufferedReader

/**
 * Privileged display engine.
 *
 * Two execution paths are supported:
 *  1. A persistent [WRITE_SECURE_SETTINGS] grant → direct WindowManager binder
 *     calls. No Shizuku/ADB/Wi-Fi required, survives reboots.
 *  2. A privileged shell (Shizuku `newProcess`, then root `su`).
 *
 * The app attempts to self-grant [WRITE_SECURE_SETTINGS] whenever Shizuku or
 * root is available, so a single authorization makes it self-sufficient.
 */
object ShizukuDisplayManager {
    private const val TAG = "ShizukuDisplayManager"
    const val SHIZUKU_PERMISSION_REQUEST_CODE = 9001

    const val WRITE_SECURE_SETTINGS = "android.permission.WRITE_SECURE_SETTINGS"

    private var binderReceivedListener: Shizuku.OnBinderReceivedListener? = null
    private var binderDeadListener: Shizuku.OnBinderDeadListener? = null
    private var permissionResultListener: Shizuku.OnRequestPermissionResultListener? = null

    @Volatile
    var isCustomDisplayActive: Boolean = false
        private set

    @Volatile
    var isOrientationOverrideActive: Boolean = false
        private set

    fun init(onPermissionResult: ((Boolean) -> Unit)? = null) {
        try {
            binderReceivedListener = Shizuku.OnBinderReceivedListener {
                Log.i(TAG, "Shizuku binder received")
            }.also { Shizuku.addBinderReceivedListenerSticky(it) }

            binderDeadListener = Shizuku.OnBinderDeadListener {
                Log.w(TAG, "Shizuku binder died")
            }.also { Shizuku.addBinderDeadListener(it) }

            permissionResultListener = Shizuku.OnRequestPermissionResultListener { requestCode, grantResult ->
                if (requestCode == SHIZUKU_PERMISSION_REQUEST_CODE) {
                    val granted = grantResult == PackageManager.PERMISSION_GRANTED
                    Log.i(TAG, "Shizuku permission request result: $granted")
                    onPermissionResult?.invoke(granted)
                }
            }.also { Shizuku.addRequestPermissionResultListener(it) }
        } catch (e: Throwable) {
            Log.w(TAG, "Failed to initialize Shizuku listeners: ${e.message}")
        }
    }

    fun isShizukuAvailable(): Boolean = try {
        Shizuku.pingBinder()
    } catch (e: Throwable) {
        false
    }

    fun isPermissionGranted(context: Context): Boolean = try {
        if (isShizukuAvailable()) {
            Shizuku.checkSelfPermission() == PackageManager.PERMISSION_GRANTED
        } else {
            false
        }
    } catch (e: Throwable) {
        false
    }

    fun requestPermission(activity: Activity) {
        try {
            if (isShizukuAvailable()) {
                Shizuku.requestPermission(SHIZUKU_PERMISSION_REQUEST_CODE)
            }
        } catch (e: Throwable) {
            Log.e(TAG, "Failed to request Shizuku permission", e)
        }
    }

    /** True if the app holds a persistent [WRITE_SECURE_SETTINGS] grant. */
    fun hasWriteSecureSettings(context: Context): Boolean = try {
        context.checkSelfPermission(WRITE_SECURE_SETTINGS) == PackageManager.PERMISSION_GRANTED
    } catch (e: Throwable) {
        false
    }

    /**
     * While privileged access is available (Shizuku or root), permanently grant
     * the app [WRITE_SECURE_SETTINGS]. Idempotent.
     */
    fun ensureWriteSecureSettings(context: Context): Boolean {
        if (hasWriteSecureSettings(context)) {
            Log.i(TAG, "WRITE_SECURE_SETTINGS already granted")
            return true
        }
        if (!isShizukuAvailable() && !RootShell(context).hasRoot()) {
            Log.w(TAG, "Cannot self-grant WRITE_SECURE_SETTINGS: neither Shizuku nor root available")
            return false
        }
        Log.i(TAG, "Self-granting WRITE_SECURE_SETTINGS via privileged shell")
        val ok = executePrivilegedCommand(context, "pm grant ${context.packageName} $WRITE_SECURE_SETTINGS")
        if (!ok) {
            Log.e(TAG, "Self-grant pm grant failed")
            return false
        }
        val granted = hasWriteSecureSettings(context)
        if (granted) {
            Log.i(TAG, "Self-grant WRITE_SECURE_SETTINGS succeeded — app is now Shizuku-independent")
        } else {
            Log.w(TAG, "pm grant exited 0 but permission is not reflected")
        }
        return granted
    }

    /** Baseline 100% scale = 160 DPI. */
    fun calculateDensityDpi(scalePercent: Int): Int {
        val density = (160.0 * (scalePercent.coerceIn(50, 400) / 100.0)).toInt()
        return density.coerceIn(72, 640)
    }

    fun formatWmSizeForDevice(context: Context, targetLandscapeWidth: Int, targetLandscapeHeight: Int): String {
        val (w, h) = naturalSizeForDevice(context, targetLandscapeWidth, targetLandscapeHeight)
        return "${w}x${h}"
    }

    /**
     * Returns the forced display size in the device's natural (unrotated)
     * orientation. `wm size` and WindowManagerService.setForcedDisplaySize
     * interpret dimensions as the natural orientation, so a landscape target
     * must be swapped on portrait-natural phones.
     */
    fun naturalSizeForDevice(context: Context, targetLandscapeWidth: Int, targetLandscapeHeight: Int): Pair<Int, Int> {
        val wm = context.getSystemService(Context.WINDOW_SERVICE) as WindowManager
        val metrics = DisplayMetrics()
        @Suppress("DEPRECATION")
        val display = wm.defaultDisplay
        display.getRealMetrics(metrics)

        val rotation = display.rotation
        val isRotated90or270 = rotation == Surface.ROTATION_90 || rotation == Surface.ROTATION_270
        val naturalWidth = if (isRotated90or270) metrics.heightPixels else metrics.widthPixels
        val naturalHeight = if (isRotated90or270) metrics.widthPixels else metrics.heightPixels

        val isNaturalPortrait = naturalHeight >= naturalWidth
        val shortSide = kotlin.math.min(targetLandscapeWidth, targetLandscapeHeight)
        val longSide = kotlin.math.max(targetLandscapeWidth, targetLandscapeHeight)

        return if (isNaturalPortrait) shortSide to longSide else longSide to shortSide
    }

    /**
     * Applies target resolution and density.
     *
     * @param applyDensity when false the Android UI density is left untouched
     *   (launcher-safe mode), so MIUI/HyperOS home-screen icon grids stay put.
     */
    fun applyDisplayProfile(
        context: Context,
        width: Int,
        height: Int,
        scalePercent: Int,
        forceLandscape: Boolean = true,
        applyDensity: Boolean = true,
        enableWatchdog: Boolean = true,
    ): Boolean {
        val density = calculateDensityDpi(scalePercent)
        val wmSizeStr = formatWmSizeForDevice(context, width, height)
        val rotationCmd = if (forceLandscape) {
            "settings put system accelerometer_rotation 0 && settings put system user_rotation 1 && content insert --uri content://settings/system --bind name:s:accelerometer_rotation --bind value:i:0 && content insert --uri content://settings/system --bind name:s:user_rotation --bind value:i:1"
        } else {
            "settings put system accelerometer_rotation 1 && content insert --uri content://settings/system --bind name:s:accelerometer_rotation --bind value:i:1"
        }
        val densityCmd = if (applyDensity) "wm density $density" else null
        val cmd = listOfNotNull("wm size $wmSizeStr", densityCmd, rotationCmd).joinToString(" && ")
        val densityLabel = if (applyDensity) "@ ${scalePercent}% (${density} DPI)" else "(density unchanged — launcher-safe)"
        Log.i(TAG, "Applying display profile: $wmSizeStr $densityLabel, forceLandscape=$forceLandscape")

        if (!hasWriteSecureSettings(context)) {
            ensureWriteSecureSettings(context)
        }

        var success = false
        if (hasWriteSecureSettings(context)) {
            success = applyDisplayProfileViaWss(context, width, height, scalePercent, applyDensity)
            if (!success) {
                Log.w(TAG, "WSS display path failed, falling back to privileged shell")
            }
        }
        if (!success) {
            success = executePrivilegedCommand(context, cmd)
        }
        if (success) {
            setOrientationOverride(context, forceLandscape)
            isCustomDisplayActive = true
            if (enableWatchdog) {
                DisplaySafetyWatchdog.notifyDisplayProfileApplied(context)
            }
        }
        return success
    }

    fun resetDisplay(context: Context): Boolean {
        Log.i(TAG, "Resetting display to native defaults")
        val cmd = "wm size reset && wm density reset && settings put system accelerometer_rotation 1 && content insert --uri content://settings/system --bind name:s:accelerometer_rotation --bind value:i:1"

        var success = false
        if (hasWriteSecureSettings(context)) {
            success = resetDisplayViaWss(context)
            if (!success) {
                Log.w(TAG, "WSS reset failed, falling back to privileged shell")
            }
        }
        if (!success) {
            success = executePrivilegedCommand(context, cmd)
        }
        if (success) {
            setOrientationOverride(context, false)
            isCustomDisplayActive = false
            DisplaySafetyWatchdog.notifyDisplayProfileReset()
        }
        return success
    }

    // ── WRITE_SECURE_SETTINGS / WindowManager direct path ──

    fun applyDisplayProfileViaWss(
        context: Context,
        width: Int,
        height: Int,
        scalePercent: Int,
        applyDensity: Boolean = true,
    ): Boolean {
        val density = calculateDensityDpi(scalePercent)
        val (naturalW, naturalH) = naturalSizeForDevice(context, width, height)
        val densityLabel = if (applyDensity) "@ $density DPI" else "(density unchanged — launcher-safe)"
        Log.i(TAG, "Applying via WMS binder: ${width}x$height (natural ${naturalW}x$naturalH) $densityLabel")
        val okSize = callWindowManager("setForcedDisplaySize", 0, naturalW, naturalH)
        val okDensity = if (applyDensity) {
            callWindowManager("setForcedDisplayDensityForUser", 0, density, currentUserId())
        } else {
            true
        }
        if (okSize && okDensity) {
            return true
        }
        Log.e(TAG, "WSS apply failed (size=$okSize density=$okDensity)")
        return false
    }

    fun resetDisplayViaWss(context: Context): Boolean {
        Log.i(TAG, "Resetting display via WMS binder")
        val okSize = callWindowManager("clearForcedDisplaySize", 0)
        val okDensity = callWindowManager("clearForcedDisplayDensityForUser", 0, currentUserId())
        if (okSize && okDensity) {
            return true
        }
        Log.e(TAG, "WSS reset failed (size=$okSize density=$okDensity)")
        return false
    }

    /** Result of one privileged shell command. */
    data class ShellResult(
        val command: String,
        val exitCode: Int,
        val stdout: String,
        val stderr: String,
    ) {
        val ok: Boolean get() = exitCode == 0
        fun toMap(): Map<String, Any> = mapOf(
            "command" to command,
            "exit" to exitCode,
            "stdout" to stdout,
            "stderr" to stderr,
        )
    }

    /** True when a privileged shell (Shizuku or root) is usable right now. */
    fun hasPrivilegedShell(context: Context): Boolean =
        (isShizukuAvailable() && isPermissionGranted(context)) || RootShell(context).hasRoot()

    /**
     * Runs one command through Shizuku (shell) or root and captures the result.
     * Returns null when no privileged shell is available.
     */
    fun runPrivilegedShell(context: Context, command: String): ShellResult? {
        if (isShizukuAvailable() && isPermissionGranted(context)) {
            try {
                val newProcessMethod = Shizuku::class.java.getDeclaredMethod(
                    "newProcess",
                    Array<String>::class.java,
                    Array<String>::class.java,
                    String::class.java,
                ).apply { isAccessible = true }
                val process = newProcessMethod.invoke(null, arrayOf("sh", "-c", command), null, null) as java.lang.Process
                val stdout = process.inputStream.bufferedReader().use(BufferedReader::readText)
                val stderr = process.errorStream.bufferedReader().use(BufferedReader::readText)
                val exit = process.waitFor()
                return ShellResult(command, exit, stdout.trim(), stderr.trim())
            } catch (e: Throwable) {
                Log.e(TAG, "Shizuku shell command failed", e)
                return ShellResult(command, -1, "", e.message ?: "Shizuku error")
            }
        }
        val rootShell = RootShell(context)
        if (rootShell.hasRoot()) {
            return try {
                ShellResult(command, 0, rootShell.exec(command).trim(), "")
            } catch (e: Throwable) {
                ShellResult(command, -1, "", e.message ?: "root error")
            }
        }
        return null
    }

    /**
     * Forces (or releases) landscape regardless of app orientation requests —
     * e.g. a HyperOS/MIUI launcher that hard-locks portrait.
     *
     * Several levers are tried together because ROMs gate them differently:
     *  1. `device_config window_manager allow_ignore_orientation_request true` +
     *     `wm set-ignore-orientation-request -d 0 true` (display-wide; some ROMs
     *     silently ignore this — verified via `wm get-ignore-orientation-request`).
     *  2. Per-app compat overrides (`am compat enable`) that make the launcher /
     *     recents ignore their own fixed orientation:
     *       - 254631730 OVERRIDE_ENABLE_COMPAT_IGNORE_REQUESTED_ORIENTATION
     *       - 265464455 OVERRIDE_ANY_ORIENTATION
     *       - 310816437 OVERRIDE_ANY_ORIENTATION_TO_USER
     *  3. `wm user-rotation lock 1` to freeze the display to landscape.
     *
     * All of these need `SET_ORIENTATION` / compat-override rights, i.e. the
     * privileged shell (Shizuku or root). Command outputs are reported per-command.
     *
     * Android 12+ only.
     */
    fun setOrientationOverride(context: Context, landscape: Boolean): Map<String, Any> {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.S) {
            return mapOf(
                "status" to "unsupported",
                "reason" to "Orientation override requires Android 12+ (API 31).",
                "results" to emptyList<Any>(),
            )
        }
        if (!hasPrivilegedShell(context)) {
            return mapOf(
                "status" to "needs_shizuku",
                "reason" to "Start Shizuku (or use root), then try again.",
                "results" to emptyList<Any>(),
            )
        }

        val commands = if (landscape) enableOrientationCommands() else disableOrientationCommands()
        val results = commands.mapNotNull { runPrivilegedShell(context, it) }
        val applied = results.count { it.ok }

        // Whether the display-wide override actually stuck (works on AOSP; MIUI
        // gates it). The compat overrides have no query command, so they are
        // validated by the user seeing Home/recents stay landscape.
        val displayIgnore = landscape &&
            runPrivilegedShell(context, "wm get-ignore-orientation-request -d 0")
                ?.stdout?.trim().orEmpty().contains("true")

        isOrientationOverrideActive = landscape && applied > 0
        val status = when {
            results.isEmpty() -> "needs_shizuku"
            results.all { it.ok } -> "ok"
            applied > 0 -> "partial"
            else -> "failed"
        }
        Log.i(TAG, "Orientation landscape=$landscape status=$status applied=$applied/${results.size} displayIgnore=$displayIgnore")
        return mapOf(
            "status" to status,
            "applied" to applied,
            "total" to results.size,
            "displayIgnore" to displayIgnore,
            "verified" to if (displayIgnore) "true" else "false",
            "results" to results.map { it.toMap() },
        )
    }

    /**
     * Best-effort shell levers alongside the overlay. On HyperOS these are gated
     * off for third-party apps, so the real Force Landscape mechanism is
     * [OrientationOverlayService]; these are kept only because they are harmless
     * and help on stock Android.
     */
    private fun enableOrientationCommands(): List<String> = listOf(
        "wm set-ignore-orientation-request -d 0 true",
        "settings put system accelerometer_rotation 0; settings put system user_rotation 1",
    )

    /** Reverses the best-effort shell levers. */
    private fun disableOrientationCommands(): List<String> = listOf(
        "wm set-ignore-orientation-request -d 0 false",
        "settings put system accelerometer_rotation 1",
    )

    /** Live state of the orientation override (not persisted across reboots). */
    fun getOrientationOverrideActive(): Boolean = isOrientationOverrideActive

    private fun currentUserId(): Int = Process.myUid() / 100000

    private fun callWindowManager(methodName: String, vararg args: Any): Boolean {
        return try {
            val wm = windowManagerService() ?: return false
            val paramTypes = args.map { it::class.javaPrimitiveType ?: it::class.java }.toTypedArray()
            val method = wm.javaClass.getMethod(methodName, *paramTypes)
            method.invoke(wm, *args)
            true
        } catch (e: Throwable) {
            Log.e(TAG, "IWindowManager.$methodName failed", e)
            false
        }
    }

    private fun windowManagerService(): Any? {
        return try {
            HiddenApiBypass.addHiddenApiExemptions("L")
            val serviceManagerClass = Class.forName("android.os.ServiceManager")
            val getService = serviceManagerClass.getMethod("getService", String::class.java)
            val binder = getService.invoke(null, "window") as? IBinder ?: return null
            val stubClass = Class.forName("android.view.IWindowManager\$Stub")
            val asInterface = stubClass.getMethod("asInterface", IBinder::class.java)
            asInterface.invoke(null, binder)
        } catch (e: Throwable) {
            Log.e(TAG, "Failed to obtain IWindowManager binder", e)
            null
        }
    }

    /** Executes a command via Shizuku ADB shell, falling back to root. */
    fun executePrivilegedCommand(context: Context, command: String): Boolean {
        if (isShizukuAvailable() && isPermissionGranted(context)) {
            try {
                Log.i(TAG, "Executing via Shizuku: $command")
                val newProcessMethod = Shizuku::class.java.getDeclaredMethod(
                    "newProcess",
                    Array<String>::class.java,
                    Array<String>::class.java,
                    String::class.java,
                ).apply { isAccessible = true }

                val process = newProcessMethod.invoke(null, arrayOf("sh", "-c", command), null, null) as java.lang.Process
                val output = process.inputStream.bufferedReader().use(BufferedReader::readText)
                val error = process.errorStream.bufferedReader().use(BufferedReader::readText)
                val exitCode = process.waitFor()
                if (exitCode == 0) {
                    return true
                }
                Log.w(TAG, "Shizuku command exited with $exitCode. Output: $output, Error: $error")
            } catch (e: Throwable) {
                Log.e(TAG, "Shizuku command execution failed", e)
            }
        }

        val rootShell = RootShell(context)
        if (rootShell.hasRoot()) {
            Log.i(TAG, "Executing via Root: $command")
            return try {
                rootShell.exec(command)
                true
            } catch (e: Throwable) {
                Log.e(TAG, "Root execution failed", e)
                false
            }
        }

        Log.e(TAG, "Neither Shizuku permission nor Root is available to execute: $command")
        return false
    }

    /** Runs a command via the privileged shell and returns stdout, or null. */
    fun executePrivilegedOutput(context: Context, command: String): String? {
        if (isShizukuAvailable() && isPermissionGranted(context)) {
            try {
                val newProcessMethod = Shizuku::class.java.getDeclaredMethod(
                    "newProcess",
                    Array<String>::class.java,
                    Array<String>::class.java,
                    String::class.java,
                ).apply { isAccessible = true }
                val process = newProcessMethod.invoke(null, arrayOf("sh", "-c", command), null, null) as java.lang.Process
                val output = process.inputStream.bufferedReader().use(BufferedReader::readText)
                process.waitFor()
                return output
            } catch (e: Throwable) {
                Log.e(TAG, "Shizuku output command failed", e)
            }
        }
        return null
    }

    /** Current display metrics and privilege status. */
    @Suppress("DEPRECATION")
    fun getDisplayMetrics(context: Context): Map<String, Any> {
        val wm = context.getSystemService(Context.WINDOW_SERVICE) as WindowManager
        val metrics = DisplayMetrics()
        wm.defaultDisplay.getRealMetrics(metrics)
        return mapOf(
            "width" to metrics.widthPixels,
            "height" to metrics.heightPixels,
            "densityDpi" to metrics.densityDpi,
            "density" to metrics.density,
            "rotation" to wm.defaultDisplay.rotation,
            "isCustomActive" to isCustomDisplayActive,
            "isOrientationOverrideActive" to isOrientationOverrideActive,
            "isShizukuAvailable" to isShizukuAvailable(),
            "isShizukuGranted" to isPermissionGranted(context),
            "hasRoot" to RootShell(context).hasRoot(),
            "hasWriteSecureSettings" to hasWriteSecureSettings(context),
            "ppkHardened" to isPhantomKillerHardened(context),
        )
    }

    /**
     * True if Android's Phantom Process Killer is disabled. This is optional
     * hardening; a display-only app has no long-running child processes, but it
     * is kept for users who run the app alongside heavier workloads.
     */
    fun isPhantomKillerHardened(context: Context): Boolean {
        return try {
            var monitor = runCatching {
                Settings.Global.getString(context.contentResolver, "settings_enable_monitor_phantom_procs")
            }.getOrNull()?.trim().orEmpty()
            if (monitor.isEmpty() && isShizukuAvailable() && isPermissionGranted(context)) {
                monitor = executePrivilegedOutput(context, "settings get global settings_enable_monitor_phantom_procs")
                    ?.trim().orEmpty()
            }
            var cap = ""
            if (isShizukuAvailable() && isPermissionGranted(context)) {
                cap = executePrivilegedOutput(context, "/system/bin/device_config get activity_manager max_phantom_processes")
                    ?.trim().orEmpty()
            }
            val ok = monitor == "false" && (cap.isEmpty() || cap == "2147483647")
            Log.i(TAG, "PPK check: monitor=$monitor cap=$cap hardened=$ok")
            ok
        } catch (e: Throwable) {
            Log.w(TAG, "isPhantomKillerHardened failed: ${e.message}")
            false
        }
    }

    /**
     * Disables the Phantom Process Killer via the privileged shell. Idempotent.
     */
    fun hardenPhantomProcessKiller(context: Context): Boolean {
        return try {
            if (!isPhantomKillerHardened(context)) {
                if (hasWriteSecureSettings(context)) {
                    runCatching {
                        Settings.Global.putString(
                            context.contentResolver,
                            "settings_enable_monitor_phantom_procs",
                            "false",
                        )
                    }
                }
                if (isShizukuAvailable() && isPermissionGranted(context)) {
                    val commands = listOf(
                        "/system/bin/device_config set_sync_disabled_for_tests persistent",
                        "/system/bin/device_config put activity_manager max_phantom_processes 2147483647",
                        "settings put global settings_enable_monitor_phantom_procs false",
                    )
                    for (cmd in commands) {
                        executePrivilegedOutput(context, cmd)
                    }
                }
            }
            isPhantomKillerHardened(context)
        } catch (e: Throwable) {
            Log.e(TAG, "PPK hardening failed", e)
            false
        }
    }

    fun cleanup() {
        try {
            binderReceivedListener?.let { Shizuku.removeBinderReceivedListener(it) }
            binderDeadListener?.let { Shizuku.removeBinderDeadListener(it) }
            permissionResultListener?.let { Shizuku.removeRequestPermissionResultListener(it) }
        } catch (_: Throwable) {}
    }
}
