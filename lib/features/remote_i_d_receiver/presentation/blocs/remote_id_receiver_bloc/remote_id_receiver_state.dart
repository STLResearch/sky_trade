part of 'remote_id_receiver_bloc.dart';

@freezed
class RemoteIdReceiverState with _$RemoteIdReceiverState {

  const factory RemoteIdReceiverState.initial() = _Initial;

  const factory RemoteIdReceiverState.gettingRemoteIDs() = _GettingRemoteIDs;

  const factory RemoteIdReceiverState.gotRemoteIDs({
    required Set<RemoteIdEntity> remoteIdEntities,
  }) = _GotRemoteIDs;

  const factory RemoteIdReceiverState.failedToGetRemoteIDs({
    required RemoteIdReceiverFailure remoteIdReceiverFailure,
  }) = _FailedToGetRemoteIDs;
}
