part of 'device_metadata_bloc.dart';

@freezed
class DeviceMetadataState with _$DeviceMetadataState {
  const factory DeviceMetadataState.initial() = _Initial;

  const factory DeviceMetadataState.sendingDeviceMetadata() =
      _SendingDeviceMetadata;

  const factory DeviceMetadataState.sentDeviceMetadataSuccessfully() =
      _SentDeviceMetadataSentSuccessfully;

  const factory DeviceMetadataState.failedToSentDeviceMetadata() =
      _FailedToSentDeviceMetadata;
}
