part of 'broadcast_remote_i_d_receiver_bloc.dart';

@freezed
class BroadcastRemoteIDReceiverEvent with _$BroadcastRemoteIDReceiverEvent {
  const factory BroadcastRemoteIDReceiverEvent.listenRemoteIDs() =
      _ListenRemoteIDs;

  const factory BroadcastRemoteIDReceiverEvent.remoteIDsGetting() =
      _RemoteIDsGetting;

  const factory BroadcastRemoteIDReceiverEvent.remoteIDsGotten({
    required List<RemoteIDEntity> remoteIDEntities,
  }) = _RemoteIDsGotten;

  const factory BroadcastRemoteIDReceiverEvent.remoteIDsNotGotten({
    required RemoteIDReceiverFailure remoteIDReceiverFailure,
  }) = _RemoteIDsNotGotten;
}
