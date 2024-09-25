// ignore_for_file: lines_longer_than_80_chars

part of 'bluetooth_adapter_state_bloc.dart';

@freezed
class BluetoothAdapterStateEvent with _$BluetoothAdapterStateEvent {
  const factory BluetoothAdapterStateEvent.listenBluetoothAdapterState() =
      _ListenBluetoothAdapterState;

  const factory BluetoothAdapterStateEvent.bluetoothAdapterStateGotten({
    required BluetoothAdapterStateEntity bluetoothAdapterStateEntity,
  }) = _BluetoothAdapterStateGotten;

  const factory BluetoothAdapterStateEvent.bluetoothAdapterStateNotGotten({
    required BluetoothAdapterStateFailure bluetoothAdapterStateFailure,
  }) = _BluetoothAdapterStateNotGotten;

  const factory BluetoothAdapterStateEvent.stopListeningBluetoothAdapterState() =
      _StopListeningBluetoothAdapterState;
}
