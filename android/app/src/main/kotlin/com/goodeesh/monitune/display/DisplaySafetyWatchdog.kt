package com.goodeesh.monitune.display

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.os.Handler
import android.os.Looper
import android.os.PowerManager
import android.util.Log

/**
 * Safety net for display changes.
 *
 *  - A confirmation countdown auto-reverts the profile if the user does not
 *    confirm within the timeout.
 *  - If the user turns the screen off, the resolution is reverted so the
 *    device is never left in an unusable state.
 */
object DisplaySafetyWatchdog {
    private const val TAG = "DisplaySafetyWatchdog"

    private var screenOffReceiver: BroadcastReceiver? = null
    private var countdownHandler: Handler? = null
    private var countdownRunnable: Runnable? = null
    private var isWatchdogActive = false
    private var lastAppliedTimestamp: Long = 0L

    fun notifyDisplayProfileApplied(context: Context) {
        isWatchdogActive = true
        lastAppliedTimestamp = System.currentTimeMillis()
        registerScreenOffReceiver(context)
    }

    fun notifyDisplayProfileReset() {
        isWatchdogActive = false
        cancelCountdownTimer()
    }

    fun startCountdownTimer(context: Context, durationSeconds: Int = 15, onTimeout: () -> Unit) {
        cancelCountdownTimer()
        val handler = Handler(Looper.getMainLooper())
        countdownHandler = handler
        val runnable = Runnable {
            Log.w(TAG, "Display profile confirmation timed out after ${durationSeconds}s — auto-reverting!")
            ShizukuDisplayManager.resetDisplay(context)
            onTimeout()
        }
        countdownRunnable = runnable
        handler.postDelayed(runnable, durationSeconds * 1000L)
    }

    fun confirmDisplayProfile() {
        Log.i(TAG, "Display profile confirmed by user — countdown cancelled")
        cancelCountdownTimer()
    }

    fun cancelCountdownTimer() {
        countdownRunnable?.let { countdownHandler?.removeCallbacks(it) }
        countdownRunnable = null
        countdownHandler = null
    }

    private fun registerScreenOffReceiver(context: Context) {
        if (screenOffReceiver != null) return
        try {
            val receiver = object : BroadcastReceiver() {
                override fun onReceive(ctx: Context?, intent: Intent?) {
                    if (intent?.action == Intent.ACTION_SCREEN_OFF && isWatchdogActive) {
                        // Ignore momentary screen-off flicker during framebuffer reallocation.
                        val elapsed = System.currentTimeMillis() - lastAppliedTimestamp
                        if (elapsed < 3500L) {
                            Log.d(TAG, "Ignoring screen-off during reallocation grace period (${elapsed}ms)")
                            return
                        }

                        val pm = ctx?.getSystemService(Context.POWER_SERVICE) as? PowerManager
                        if (pm != null && pm.isInteractive) {
                            Log.d(TAG, "Screen still interactive; ignoring spurious screen-off")
                            return
                        }

                        Log.i(TAG, "Screen turned off — reverting display for safety")
                        ctx?.let { OrientationLock.release(it) }
                        ctx?.let { ShizukuDisplayManager.resetDisplay(it) }
                    }
                }
            }
            screenOffReceiver = receiver
            val filter = IntentFilter(Intent.ACTION_SCREEN_OFF)
            context.applicationContext.registerReceiver(receiver, filter)
        } catch (e: Throwable) {
            Log.w(TAG, "Failed to register screen-off safety receiver: ${e.message}")
        }
    }

    fun unregister(context: Context) {
        cancelCountdownTimer()
        screenOffReceiver?.let {
            try {
                context.applicationContext.unregisterReceiver(it)
            } catch (_: Throwable) {}
            screenOffReceiver = null
        }
    }
}
