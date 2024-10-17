part of 'remote_i_d_transmitter_bloc.dart';

@freezed
class RemoteIDTransmitterEvent with _$RemoteIDTransmitterEvent {
  const factory RemoteIDTransmitterEvent.startTransmitter() = _StartTransmitter;

  const factory RemoteIDTransmitterEvent.remoteIDTransmitted() =
      _RemoteIDTransmitted;

  const factory RemoteIDTransmitterEvent.transmitterStarted() =
      _TransmitterStarted;

  const factory RemoteIDTransmitterEvent.transmitterStopped() =
      _TransmitterStopped;

  const factory RemoteIDTransmitterEvent.transmitRemoteID({
    required RemoteIDEntity remoteID,
  }) = _TransmitRemoteID;

  const factory RemoteIDTransmitterEvent.stopTransmitter() = _StopTransmitter;
}
