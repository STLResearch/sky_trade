part of 'remote_i_d_receiver_bloc.dart';

@freezed
class RemoteIDReceiverState with _$RemoteIDReceiverState {
  const factory RemoteIDReceiverState.initial() = _Initial;

  const factory RemoteIDReceiverState.gettingRemoteIDs() = _GettingRemoteIDs;

  const factory RemoteIDReceiverState.gotRemoteIDs({
    required Set<RemoteIDEntity> remoteIDEntities,
  }) = _GotRemoteIDs;

  const factory RemoteIDReceiverState.failedToGetRemoteIDs({
    required RemoteIDReceiverFailure remoteIDReceiverFailure,
  }) = _FailedToGetRemoteIDs;
}
