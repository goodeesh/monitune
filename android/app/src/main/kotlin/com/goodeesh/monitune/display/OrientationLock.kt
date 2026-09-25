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

    fun isEnabled(context: Context): Boolean =
        context.getSharedPreferences(PREFS, Context.MODE_PRIVATE).getBoolean(KEY_ENABLED, false)

    fun setEnabled(context: Context, enabled: Boolean) {
        context.getSharedPreferences(PREFS, Context.MODE_PRIVATE).edit()
            .putBoolean(KEY_ENABLED, enabled)
            .apply()
    }

    /** Persists landscape rotation settings when "Modify system settings" is granted. */
    fun applyRotationSettings(context: Context, landscape: Boolean) {
        try {
            if (!Settings.System.canWrite(context)) return
            val cr = context.contentResolver
            if (landscape) {
                Settings.System.putInt(cr, Settings.System.ACCELEROMETER_ROTATION, 0)
                Settings.System.putInt(cr, Settings.System.USER_ROTATION, 1)
            } else {
                Settings.System.putInt(cr, Settings.System.ACCELEROMETER_ROTATION, 1)
            }
        } catch (e: Throwable) {
            Log.w(TAG, "applyRotationSettings failed: ${e.message}")
        }
    }

    /**
     * Fully releases the landscape lock: clears the pref, stops the app overlay
     * service, and restores auto-rotate.
     */
    fun release(context: Context) {
        setEnabled(context, false)
        try {
            context.stopService(Intent(context, OrientationOverlayService::class.java))
        } catch (e: Throwable) {
            Log.w(TAG, "stopService failed: ${e.message}")
        }
        applyRotationSettings(context, false)
    }
}
