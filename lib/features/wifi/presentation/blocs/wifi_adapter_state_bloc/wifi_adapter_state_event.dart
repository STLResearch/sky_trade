part of 'wifi_adapter_state_bloc.dart';

@freezed
class WifiAdapterStateEvent with _$WifiAdapterStateEvent {
  const factory WifiAdapterStateEvent.listenWifiAdapterState() =
      _ListenWifiAdapterState;

  const factory WifiAdapterStateEvent.wifiAdapterStateGotten({
    required WifiAdapterStateEntity wifiAdapterStateEntity,
  }) = _WifiAdapterStateGotten;

  const factory WifiAdapterStateEvent.wifiAdapterStateNotGotten({
    required WifiAdapterStateFailure wifiAdapterStateFailure,
  }) = _WifiAdapterStateNotGotten;

  const factory WifiAdapterStateEvent.stopListeningWifiAdapterState() =
      _StopListeningWifiAdapterState;
}
