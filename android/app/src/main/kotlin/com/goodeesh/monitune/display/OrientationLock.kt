package com.goodeesh.monitune.display

import android.content.Context
import android.content.Intent
import android.provider.Settings
import android.util.Log

/** Shared persisted state and control for the Force Landscape lock. */
object OrientationLock {
    private const val TAG = "OrientationLock"
    private const val PREFS = "monitune_orientation"
    private const val KEY_ENABLED = "enabled"

    /**
     * The rotation settings as they were before the lock was applied, and
     * whether they are currently saved. A reset restores these instead of
     * forcing auto-rotate on, so a user who keeps rotation locked gets the lock
     * back; clearing the flag makes a second reset a no-op.
     */
    private const val KEY_APPLIED = "rotation_saved_applied"
    private const val KEY_SAVED_ACCELEROMETER = "saved_accelerometer_rotation"
    private const val KEY_SAVED_USER_ROTATION = "saved_user_rotation"

    private fun prefs(context: Context) =
        context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)

    fun isEnabled(context: Context): Boolean =
        prefs(context).getBoolean(KEY_ENABLED, false)

    fun setEnabled(context: Context, enabled: Boolean) {
        prefs(context).edit().putBoolean(KEY_ENABLED, enabled).apply()
    }

    /**
     * Persists landscape rotation settings when "Modify system settings" is
     * granted. The previous values are captured once, before the first change.
     */
    fun applyRotationSettings(context: Context, landscape: Boolean) {
        try {
            if (!Settings.System.canWrite(context)) return
            val cr = context.contentResolver
            if (landscape) {
                captureRotationSettings(context)
                Settings.System.putInt(cr, Settings.System.ACCELEROMETER_ROTATION, 0)
                Settings.System.putInt(cr, Settings.System.USER_ROTATION, 1)
            } else {
                restoreRotationSettings(context)
            }
        } catch (e: Throwable) {
            Log.w(TAG, "applyRotationSettings failed: ${e.message}")
        }
    }

    /**
     * Puts the rotation settings back to what they were before Force Landscape
     * was applied. A no-op when nothing was captured or it was already restored,
     * so reset paths can call it more than once safely.
     */
    fun restoreRotationSettings(context: Context) {
        val p = prefs(context)
        if (!p.getBoolean(KEY_APPLIED, false)) return
        try {
            if (!Settings.System.canWrite(context)) {
                Log.w(TAG, "Cannot restore rotation: Modify system settings not granted")
                return
            }
            val cr = context.contentResolver
            val accel = p.getInt(KEY_SAVED_ACCELEROMETER, 1)
            val user = p.getInt(KEY_SAVED_USER_ROTATION, 0)
            Settings.System.putInt(cr, Settings.System.ACCELEROMETER_ROTATION, accel)
            Settings.System.putInt(cr, Settings.System.USER_ROTATION, user)
            p.edit()
                .putBoolean(KEY_APPLIED, false)
                .remove(KEY_SAVED_ACCELEROMETER)
                .remove(KEY_SAVED_USER_ROTATION)
                .apply()
        } catch (e: Throwable) {
            Log.w(TAG, "restoreRotationSettings failed: ${e.message}")
        }
    }

    /** Records the user's rotation settings once, before the lock changes them. */
    private fun captureRotationSettings(context: Context) {
        val p = prefs(context)
        if (p.getBoolean(KEY_APPLIED, false)) return
        val cr = context.contentResolver
        val accel = Settings.System.getInt(cr, Settings.System.ACCELEROMETER_ROTATION, 1)
        val user = Settings.System.getInt(cr, Settings.System.USER_ROTATION, 0)
        p.edit()
            .putBoolean(KEY_APPLIED, true)
            .putInt(KEY_SAVED_ACCELEROMETER, accel)
            .putInt(KEY_SAVED_USER_ROTATION, user)
            .apply()
    }

    /**
     * Fully releases the landscape lock: clears the pref, stops the app overlay
     * service, and puts the rotation settings back as they were.
     */
    fun release(context: Context) {
        setEnabled(context, false)
        try {
            context.stopService(Intent(context, OrientationOverlayService::class.java))
        } catch (e: Throwable) {
            Log.w(TAG, "stopService failed: ${e.message}")
        }
        restoreRotationSettings(context)
    }
}
