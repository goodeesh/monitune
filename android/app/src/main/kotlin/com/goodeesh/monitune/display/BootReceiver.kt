package com.goodeesh.monitune.display

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.os.Build
import android.util.Log

/** Re-arms the external-display watcher after a reboot if the user enabled it. */
class BootReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent?) {
        val action = intent?.action
        if (action != Intent.ACTION_BOOT_COMPLETED && action != Intent.ACTION_MY_PACKAGE_REPLACED) return

        if (ExternalDisplayService.connectedExternalDisplay(context) == null || !ExternalDisplayService.isEnabled(context)) {
            ExternalDisplayService.restoreBlackout(context)
        }

        if (!ExternalDisplayService.isEnabled(context)) return
        try {
            val service = Intent(context, ExternalDisplayService::class.java)
                .setAction(ExternalDisplayService.ACTION_UPDATE)
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                context.startForegroundService(service)
            } else {
                context.startService(service)
            }
        } catch (e: Throwable) {
            Log.w("BootReceiver", "Could not start external display watch: ${e.message}")
        }
    }
}
