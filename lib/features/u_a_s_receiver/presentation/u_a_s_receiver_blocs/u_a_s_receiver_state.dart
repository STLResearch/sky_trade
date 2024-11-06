part of 'u_a_s_receiver_bloc.dart';

@freezed
class UASReceiverState with _$UASReceiverState {

  const factory UASReceiverState.initial() = _Initial;

  const factory UASReceiverState.startedRemoteIDStream() =
      _StartedRemoteIDStream;

  const factory UASReceiverState.emittedRemoteIDData({
    required Set<RemoteIDEntity> remoteIDEntities,
  }) = _EmittedRemoteIDData;

  const factory UASReceiverState.emittedUASReceiverFailure({
    required UASReceiverFailure uasReceiverFailure,
  }) = _EmittedUASReceiverFailure;

  const factory UASReceiverState.notifiedGeoHashChange() =
      _NotifiedGeoHashChange;

  const factory UASReceiverState.stoppedRemoteIDStream() =
      _StoppedRemoteIDStream;

}
