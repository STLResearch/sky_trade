part of 'cached_remote_i_d_transmitter_bloc.dart';

@freezed
class CachedRemoteIDTransmitterState with _$CachedRemoteIDTransmitterState {
  const factory CachedRemoteIDTransmitterState.initial() = _Initial;

  const factory CachedRemoteIDTransmitterState.startingTransmitter() =
      _StartingTransmitter;

  const factory CachedRemoteIDTransmitterState.startedTransmitter() =
      _StartedTransmitter;

  const factory CachedRemoteIDTransmitterState.transmittingRemoteID() =
      _TransmittingRemoteID;

  const factory CachedRemoteIDTransmitterState.transmittedRemoteID() =
      _TransmittedRemoteID;
}
