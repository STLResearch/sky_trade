part of 'device_metadata_bloc.dart';

@freezed
class DeviceMetadataState with _$DeviceMetadataState {
  const factory DeviceMetadataState.initial() = _Initial;

  const factory DeviceMetadataState.sendingDeviceMetadata() =
      _SendingDeviceMetadata;

  const factory DeviceMetadataState.sentDeviceMetadata() =
      _SentDeviceMetadataSent;

  const factory DeviceMetadataState.failedToSendDeviceMetadata({
    required DeviceMetadataFailure deviceMetadataFailure,
  }) = _FailedToSendDeviceMetadata;
}
