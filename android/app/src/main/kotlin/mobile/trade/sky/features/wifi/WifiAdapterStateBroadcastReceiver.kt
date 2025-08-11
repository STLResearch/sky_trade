// SPDX-License-Identifier: UNLICENSED
                            
package mobile.trade.sky.features.wifi

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.net.wifi.WifiManager
import android.os.Handler
import android.os.Looper
import io.flutter.plugin.common.EventChannel
import mobile.trade.sky.core.utils.enums.WifiAdapterState

class WifiAdapterStateBroadcastReceiver(private val context: Context) :
    EventChannel.StreamHandler {
    private var mainThreadHandler: Handler = Handler(Looper.getMainLooper())
    private var wifiAdapterStateBroadcastReceiver: BroadcastReceiver? = null

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        if (wifiAdapterStateBroadcastReceiver == null) {
            wifiAdapterStateBroadcastReceiver = object : BroadcastReceiver() {
                override fun onReceive(context: Context?, intent: Intent?) {
                    val wifiAdapterState = intent?.getIntExtra(
                        WifiManager.EXTRA_WIFI_STATE,
                        WifiManager.WIFI_STATE_UNKNOWN
                    )

                    sendWifiAdapterStateUsing(
                        wifiAdapterState = wifiAdapterState,
                        eventSink = events
                    )
                }
            }

            val wifiAdapterStateIntentFilter = IntentFilter(
                WifiManager.WIFI_STATE_CHANGED_ACTION
            )

            context.registerReceiver(
                wifiAdapterStateBroadcastReceiver,
                wifiAdapterStateIntentFilter
            )
        }
    }

    override fun onCancel(arguments: Any?) {
        if (wifiAdapterStateBroadcastReceiver != null) {
            context.unregisterReceiver(wifiAdapterStateBroadcastReceiver)
            wifiAdapterStateBroadcastReceiver = null
        }
    }

    private fun sendWifiAdapterStateUsing(
        wifiAdapterState: Int?,
        eventSink: EventChannel.EventSink?
    ) {
        val wifiAdapterStateString = when (wifiAdapterState) {
            WifiManager.WIFI_STATE_ENABLING -> WifiAdapterState.ENABLING.value
            WifiManager.WIFI_STATE_ENABLED -> WifiAdapterState.ENABLED.value
            WifiManager.WIFI_STATE_DISABLING -> WifiAdapterState.DISABLING.value
            WifiManager.WIFI_STATE_DISABLED -> WifiAdapterState.DISABLED.value
            else -> WifiAdapterState.UNKNOWN.value
        }

        val runnable = Runnable {
            eventSink?.success(wifiAdapterStateString)
        }

        mainThreadHandler.post(runnable)
    }
}