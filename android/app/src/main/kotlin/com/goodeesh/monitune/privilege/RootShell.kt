package com.goodeesh.monitune.privilege

import android.content.Context
import android.util.Log
import java.io.File

/**
 * Minimal root command executor.
 *
 * Detects a standard Android `su` binary (Magisk, KernelSU, stock) and runs
 * commands through it. This is a clean-room implementation; it does not depend
 * on any other runtime.
 */
class RootShell(@Suppress("UNUSED_PARAMETER") private val context: Context) {

    companion object {
        private const val TAG = "RootShell"

        private val SU_PATHS = listOf(
            "/system/bin/su",
            "/system/xbin/su",
            "/sbin/su",
            "/su/bin/su",
            "/magisk/.core/bin/su",
            "/data/local/xbin/su",
            "/data/local/bin/su",
            "/vendor/bin/su",
            "/vendor/xbin/su",
        )

        @Volatile private var cachedSuPath: String? = null

        @Volatile private var cachedRootState: Boolean? = null
    }

    fun findSuPath(): String? {
        cachedSuPath?.let { return it }

        val pathSu = runCatching {
            val process = ProcessBuilder("sh", "-c", "command -v su")
                .redirectErrorStream(true)
                .start()
            val output = process.inputStream.bufferedReader().readText().trim()
            process.waitFor()
            if (process.exitValue() == 0 && output.isNotEmpty() && File(output).exists()) output else null
        }.getOrNull()

        if (pathSu != null) {
            cachedSuPath = pathSu
            return pathSu
        }

        for (path in SU_PATHS) {
            if (File(path).exists()) {
                cachedSuPath = path
                return path
            }
        }
        return null
    }

    fun hasRoot(): Boolean {
        cachedRootState?.let { return it }
        val su = findSuPath() ?: return false
        val result = runCatching { execSync(su, "id -u") }.getOrDefault("")
        val hasRoot = result.trim() == "0"
        cachedRootState = hasRoot
        Log.i(TAG, "Root check: $hasRoot (su=$su)")
        return hasRoot
    }

    fun exec(command: String): String {
        val su = findSuPath() ?: throw RootException("No su binary found. Is this device rooted?")
        return execSync(su, command)
    }

    fun resetCache() {
        cachedSuPath = null
        cachedRootState = null
    }

    private fun execSync(su: String, command: String): String {
        Log.d(TAG, "su exec: $command")
        val process = ProcessBuilder(su, "-c", command)
            .redirectErrorStream(true)
            .start()
        val output = process.inputStream.bufferedReader().readText()
        process.waitFor()
        return output
    }

    class RootException(message: String) : Exception(message)
}
