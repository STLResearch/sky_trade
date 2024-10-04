part of 'remote_id_transmitter_bloc.dart';

@freezed
class RemoteIdTransmitterEvent with _$RemoteIdTransmitterEvent {

  const factory RemoteIdTransmitterEvent.startTransmitter() = _StartTransmitter;

  const factory RemoteIdTransmitterEvent.transmitRemoteId({
    required RemoteIdReceiverOperationType operationType,
    required RemoteIdEntity remoteID,
  }) = _TransmitRemoteId;

  const factory RemoteIdTransmitterEvent.stopTransmitter() = _StopTransmitter;
}
