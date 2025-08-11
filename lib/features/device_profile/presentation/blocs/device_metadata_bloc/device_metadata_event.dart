// SPDX-License-Identifier: UNLICENSED
                            
part of 'device_metadata_bloc.dart';

@freezed
class DeviceMetadataEvent with _$DeviceMetadataEvent {
  const factory DeviceMetadataEvent.sendDeviceMetadata() = _SendDeviceMetadata;
}
