part of 'device_uuid_bloc.dart';

@freezed
class DeviceUUIDEvent with _$DeviceUUIDEvent {
  const factory DeviceUUIDEvent.checkAndMaybeGenerateAndCacheDeviceUUID() =
      _CheckAndMaybeGenerateAndCacheDeviceUUID;
}
