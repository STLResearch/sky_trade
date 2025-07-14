part of 'device_uuid_bloc.dart';

@freezed
class DeviceUUIDState with _$DeviceUUIDState {
  const factory DeviceUUIDState.initial() = _Initial;

  const factory DeviceUUIDState.deviceUUIDExists() = _DeviceUUIDExists;

  const factory DeviceUUIDState.deviceUUIDDoesNotExist() =
      _DeviceUUIDDoesNotExist;

  const factory DeviceUUIDState.generatedAndSavedDeviceUUID() =
      _GeneratedAndSavedDeviceUUID;
}
