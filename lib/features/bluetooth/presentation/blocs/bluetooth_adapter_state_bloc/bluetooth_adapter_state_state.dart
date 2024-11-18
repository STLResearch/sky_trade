part of 'bluetooth_adapter_state_bloc.dart';

@freezed
class BluetoothAdapterStateState with _$BluetoothAdapterStateState {
  const factory BluetoothAdapterStateState.initial() = _Initial;

  const factory BluetoothAdapterStateState.gettingBluetoothAdapterState() =
      _GettingBluetoothAdapterState;

  const factory BluetoothAdapterStateState.gotBluetoothAdapterState({
    required BluetoothAdapterStateEntity bluetoothAdapterStateEntity,
  }) = _GotBluetoothAdapterState;

  const factory BluetoothAdapterStateState.failedToGetBluetoothAdapterState({
    required BluetoothAdapterStateFailure bluetoothAdapterStateFailure,
  }) = _FailedToGetBluetoothAdapterState;
}
