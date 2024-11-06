part of 'u_a_s_receiver_bloc.dart';

@freezed
class UASReceiverEvent with _$UASReceiverEvent {

  const factory UASReceiverEvent.startRemoteIDStream() = _StartRemoteIDStream;

  const factory UASReceiverEvent.emitRemoteIDData({
    required Set<RemoteIDEntity> remoteIDEntities,
  }) = _EmitRemoteIDData;

  const factory UASReceiverEvent.emitUASReceiverFailure({
    required UASReceiverFailure uasReceiverFailure,
  }) = _EmitUASReceiverFailure;

  const factory UASReceiverEvent.notifyGeoHashChange({
    required GeoHash userGeoHash,
    required GeoHash currentGeoHash,
  }) = _NotifyGeoHashChange;

  const factory UASReceiverEvent.stopRemoteIDStream() = _StopRemoteIDStream;

}
