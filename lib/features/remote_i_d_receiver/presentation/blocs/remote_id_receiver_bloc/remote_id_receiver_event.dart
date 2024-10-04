part of 'remote_id_receiver_bloc.dart';

@freezed
class RemoteIdReceiverEvent with _$RemoteIdReceiverEvent {
  const factory RemoteIdReceiverEvent.listenRemoteIDs({
    required UsedTechnologies technologyType,
  }) = _ListenRemoteIDs;

  const factory RemoteIdReceiverEvent.remoteIDsGotten({
    required Set<RemoteIdEntity> remoteIdEntities,
  }) = _RemoteIDsGotten;

  const factory RemoteIdReceiverEvent.remoteIDsNotGotten({
    required RemoteIdReceiverFailure remoteIdReceiverFailure,
  }) = _RemoteIDsNotGotten;

  const factory RemoteIdReceiverEvent.stopListeningRemoteIDs({
    required UsedTechnologies technologyType,
  }) = _StopListeningRemoteIDs;
}
