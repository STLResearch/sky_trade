part of 'device_metadata_bloc.dart';

@freezed
class DeviceMetadataEvent with _$DeviceMetadataEvent {
  const factory DeviceMetadataEvent.sendLatestDeviceMetadata() =
      _SendLatestDeviceMetadata;
}
