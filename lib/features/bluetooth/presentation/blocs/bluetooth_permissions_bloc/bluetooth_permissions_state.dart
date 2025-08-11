// SPDX-License-Identifier: UNLICENSED
                            
part of 'bluetooth_permissions_bloc.dart';

@freezed
class BluetoothPermissionsState with _$BluetoothPermissionsState {
  const factory BluetoothPermissionsState.initial() = _Initial;

  const factory BluetoothPermissionsState.requestingPermissions() =
      _RequestingPermissions;

  const factory BluetoothPermissionsState.maybeGrantedPermissions({
    required BluetoothPermissionsEntity bluetoothPermissionsEntity,
  }) = _MaybeGrantedPermissions;

  const factory BluetoothPermissionsState.cannotRequestPermissions({
    required BluetoothPermissionsFailure bluetoothPermissionsFailure,
  }) = _CannotRequestPermissions;
}
