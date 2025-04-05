part of 'network_remote_i_d_receiver_bloc.dart';

@freezed
class NetworkRemoteIDReceiverEvent with _$NetworkRemoteIDReceiverEvent {
  const factory NetworkRemoteIDReceiverEvent.listenRemoteIDs() =
      _ListenRemoteIDs;

  const factory NetworkRemoteIDReceiverEvent.remoteIDsGetting() =
      _RemoteIDsGetting;

  const factory NetworkRemoteIDReceiverEvent.remoteIDsGotten({
    required List<RemoteIDEntity> remoteIDEntities,
  }) = _RemoteIDsGotten;

  const factory NetworkRemoteIDReceiverEvent.remoteIDsListeningStarted() =
      _RemoteIDsListeningStarted;

  const factory NetworkRemoteIDReceiverEvent.requestRemoteIDsAround({
    required String geoHash,
  }) = _RequestRemoteIDsAround;
}
