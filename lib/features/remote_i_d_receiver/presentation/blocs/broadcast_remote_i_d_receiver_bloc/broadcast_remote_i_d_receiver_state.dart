part of 'broadcast_remote_i_d_receiver_bloc.dart';

@freezed
class BroadcastRemoteIDReceiverState with _$BroadcastRemoteIDReceiverState {
  const factory BroadcastRemoteIDReceiverState.initial() = _Initial;

  const factory BroadcastRemoteIDReceiverState.gettingRemoteIDs() =
      _GettingRemoteIDs;

  const factory BroadcastRemoteIDReceiverState.gotRemoteIDs({
    required List<RemoteIDEntity> remoteIDEntities,
  }) = _GotRemoteIDs;

  const factory BroadcastRemoteIDReceiverState.failedToGetRemoteIDs({
    required RemoteIDReceiverFailure remoteIDReceiverFailure,
  }) = _FailedToGetRemoteIDs;
}
