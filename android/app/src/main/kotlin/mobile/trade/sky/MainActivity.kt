package mobile.trade.sky

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodChannel
import mobile.trade.sky.core.utils.constants.IN_APP_UPDATE_CHANNEL_NAME
import mobile.trade.sky.core.utils.constants.WIFI_ADAPTER_STATE_BROADCAST_RECEIVER_CHANNEL_NAME
import mobile.trade.sky.features.in_app_update.InAppUpdateHandler
import mobile.trade.sky.features.wifi.WifiAdapterStateBroadcastReceiver

class MainActivity : FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        registerWifiAdapterStateBroadcastReceiverUsing(flutterEngine)
        registerInAppUpdateManagerUsing(flutterEngine)
    }

    private fun registerWifiAdapterStateBroadcastReceiverUsing(flutterEngine: FlutterEngine) =
        EventChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            WIFI_ADAPTER_STATE_BROADCAST_RECEIVER_CHANNEL_NAME
        ).setStreamHandler(WifiAdapterStateBroadcastReceiver(this@MainActivity))

    private fun registerInAppUpdateManagerUsing(flutterEngine: FlutterEngine) = MethodChannel(
        flutterEngine.dartExecutor.binaryMessenger,
        IN_APP_UPDATE_CHANNEL_NAME
    ).setMethodCallHandler(InAppUpdateHandler(this@MainActivity))
}
