part of 'remote_i_d_transmitter_bloc.dart';

@freezed
class RemoteIDTransmitterState with _$RemoteIDTransmitterState {
  const factory RemoteIDTransmitterState.initial() = _Initial;

  const factory RemoteIDTransmitterState.startingTransmitter() =
      _StartingTransmitter;

  const factory RemoteIDTransmitterState.startedTransmitter() =
      _StartedTransmitter;

  const factory RemoteIDTransmitterState.transmittedRemoteID() =
      _TransmittedRemoteID;
}
