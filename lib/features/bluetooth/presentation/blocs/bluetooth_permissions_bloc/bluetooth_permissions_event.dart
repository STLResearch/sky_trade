part of 'bluetooth_permissions_bloc.dart';

@freezed
class BluetoothPermissionsEvent with _$BluetoothPermissionsEvent {
  const factory BluetoothPermissionsEvent.requestPermissions() =
      _RequestPermissions;
}
