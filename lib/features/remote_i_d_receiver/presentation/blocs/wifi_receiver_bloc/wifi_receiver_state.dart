part of 'wifi_receiver_bloc.dart';

@freezed
class WifiReceiverState with _$WifiReceiverState {
  const factory WifiReceiverState.initial() = _Initial;

  const factory WifiReceiverState.gettingRemoteIDs() = _GettingRemoteIDs;

  const factory WifiReceiverState.gotRemoteIDs({
    required Set<RemoteIdEntity> remoteIDEntities,
  }) = _GotRemoteIDs;

  const factory WifiReceiverState.failedToGetRemoteIDs({
    required WifiReceiverFailure wifiReceiverFailure,
  }) = _FailedToGetRemoteIDs;
}
