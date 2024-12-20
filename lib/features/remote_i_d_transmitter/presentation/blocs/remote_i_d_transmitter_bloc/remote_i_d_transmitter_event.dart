part of 'remote_i_d_transmitter_bloc.dart';

@freezed
class RemoteIDTransmitterEvent with _$RemoteIDTransmitterEvent {
  const factory RemoteIDTransmitterEvent.startTransmitter() = _StartTransmitter;

  const factory RemoteIDTransmitterEvent.remoteIDTransmitted() =
      _RemoteIDTransmitted;

  const factory RemoteIDTransmitterEvent.transmitterStarted() =
      _TransmitterStarted;

  const factory RemoteIDTransmitterEvent.transmitRemoteID({
    required List<RemoteIDEntity> remoteIDEntities,
    required double? deviceLatitude,
    required double? deviceLongitude,
  }) = _TransmitRemoteID;
}
