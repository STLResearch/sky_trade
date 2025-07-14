part of 'device_uuid_bloc.dart';

@freezed
class DeviceUUIDEvent with _$DeviceUUIDEvent {
  const factory DeviceUUIDEvent.checkDeviceUUIDExists() =
      _CheckDeviceUUIDExists;

  const factory DeviceUUIDEvent.generateAndSaveDeviceUUID() =
      _GenerateAndSaveDeviceUUID;
}
