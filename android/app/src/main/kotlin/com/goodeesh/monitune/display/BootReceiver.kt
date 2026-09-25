package com.goodeesh.monitune.display

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.os.Build
import android.util.Log

/** Re-arms the external-display watcher after a reboot if the user enabled it. */
class BootReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent?) {
        if (intent?.action != Intent.ACTION_BOOT_COMPLETED) return
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
