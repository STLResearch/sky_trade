// SPDX-License-Identifier: UNLICENSED
                            
part of 'device_uuid_bloc.dart';

@freezed
class DeviceUUIDState with _$DeviceUUIDState {
  const factory DeviceUUIDState.initial() = _Initial;

  const factory DeviceUUIDState.checkingDeviceUUIDExists() =
      _CheckingDeviceUUIDExists;

  const factory DeviceUUIDState.deviceUUIDExists() = _DeviceUUIDExists;

  const factory DeviceUUIDState.generatingAndCachingDeviceUUID() =
      _GeneratingAndCachingDeviceUUID;

  const factory DeviceUUIDState.generatedAndCachedDeviceUUID() =
      _GeneratedAndCachedDeviceUUID;
}
