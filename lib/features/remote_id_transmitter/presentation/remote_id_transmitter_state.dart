part of 'remote_id_transmitter_bloc.dart';

@freezed
class RemoteIdTransmitterState with _$RemoteIdTransmitterState {

  const factory RemoteIdTransmitterState.initial() = _Initial;

  const factory RemoteIdTransmitterState.active() = _Active;

  const factory RemoteIdTransmitterState.transmitting() = _Transmitting;

  const factory RemoteIdTransmitterState.stopping() = Stopping;

}
