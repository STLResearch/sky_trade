part of 'wifi_receiver_bloc.dart';

@freezed
class WifiReceiverEvent with _$WifiReceiverEvent {
  const factory WifiReceiverEvent.listenRemoteIDs() = _ListenRemoteIDs;

  const factory WifiReceiverEvent.remoteIDsGotten({
    required Set<RemoteIDEntity> remoteIDEntities,
  }) = _RemoteIDsGotten;

  const factory WifiReceiverEvent.remoteIDsNotGotten({
    required WifiReceiverFailure wifiReceiverFailure,
  }) = _RemoteIDsNotGotten;

  const factory WifiReceiverEvent.stopListeningRemoteIDs() =
      _StopListeningRemoteIDs;
}
