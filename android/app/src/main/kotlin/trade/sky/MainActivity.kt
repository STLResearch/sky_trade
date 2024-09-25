package trade.sky

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.EventChannel
import trade.sky.core.utils.constants.WIFI_ADAPTER_STATE_BROADCAST_RECEIVER_CHANNEL_NAME
import trade.sky.features.wifi.WifiAdapterStateBroadcastReceiver

class MainActivity : FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        registerWifiAdapterStateBroadcastReceiverUsing(flutterEngine)
    }

    private fun registerWifiAdapterStateBroadcastReceiverUsing(flutterEngine: FlutterEngine) =
        EventChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            WIFI_ADAPTER_STATE_BROADCAST_RECEIVER_CHANNEL_NAME
        ).setStreamHandler(WifiAdapterStateBroadcastReceiver(applicationContext))
}
