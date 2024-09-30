part of 'bluetooth_receiver_bloc.dart';

@freezed
class BluetoothReceiverEvent with _$BluetoothReceiverEvent {
  const factory BluetoothReceiverEvent.listenRemoteIDs() = _ListenRemoteIDs;

  const factory BluetoothReceiverEvent.remoteIDsGotten({
    required Set<RemoteIDEntity> remoteIDEntities,
  }) = _RemoteIDsGotten;

  const factory BluetoothReceiverEvent.remoteIDsNotGotten({
    required BluetoothReceiverFailure bluetoothReceiverFailure,
  }) = _RemoteIDsNotGotten;

  const factory BluetoothReceiverEvent.stopListeningRemoteIDs() =
      _StopListeningRemoteIDs;
}
