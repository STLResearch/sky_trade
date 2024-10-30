part of 'remote_i_d_receiver_bloc.dart';

@freezed
class RemoteIDReceiverEvent with _$RemoteIDReceiverEvent {
  const factory RemoteIDReceiverEvent.listenRemoteIDs() = _ListenRemoteIDs;

  const factory RemoteIDReceiverEvent.remoteIDsGetting() = _RemoteIDsGetting;

  const factory RemoteIDReceiverEvent.remoteIDsGotten({
    required Set<RemoteIDEntity> remoteIDEntities,
  }) = _RemoteIDsGotten;

  const factory RemoteIDReceiverEvent.remoteIDsNotGotten({
    required RemoteIDReceiverFailure remoteIDReceiverFailure,
  }) = _RemoteIDsNotGotten;

  const factory RemoteIDReceiverEvent.stopListeningRemoteIDs() =
      _StopListeningRemoteIDs;
}
