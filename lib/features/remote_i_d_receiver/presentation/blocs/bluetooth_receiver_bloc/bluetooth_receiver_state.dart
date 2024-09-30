part of 'bluetooth_receiver_bloc.dart';

@freezed
class BluetoothReceiverState with _$BluetoothReceiverState {
  const factory BluetoothReceiverState.initial() = _Initial;

  const factory BluetoothReceiverState.gettingRemoteIDs() = _GettingRemoteIDs;

  const factory BluetoothReceiverState.gotRemoteIDs({
    required Set<RemoteIDEntity> remoteIDEntities,
  }) = _GotRemoteIDs;

  const factory BluetoothReceiverState.failedToGetRemoteIDs({
    required BluetoothReceiverFailure bluetoothReceiverFailure,
  }) = _FailedToGetRemoteIDs;
}
