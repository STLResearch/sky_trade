part of 'wifi_adapter_state_bloc.dart';

@freezed
class WifiAdapterStateState with _$WifiAdapterStateState {
  const factory WifiAdapterStateState.initial() = _Initial;

  const factory WifiAdapterStateState.gettingWifiAdapterState() =
      _GettingWifiAdapterState;

  const factory WifiAdapterStateState.gotWifiAdapterState({
    required WifiAdapterStateEntity wifiAdapterStateEntity,
  }) = _GotWifiAdapterState;

  const factory WifiAdapterStateState.failedToGetWifiAdapterState({
    required WifiAdapterStateFailure wifiAdapterStateFailure,
  }) = _FailedToGetWifiAdapterState;
}
