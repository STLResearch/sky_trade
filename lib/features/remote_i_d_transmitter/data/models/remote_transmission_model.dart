import 'dart:typed_data' show Uint8List;

import 'package:json_annotation/json_annotation.dart';
import 'package:sky_trade/core/resources/strings/networking.dart'
    show
        deviceKey,
        isTestKey,
        latitudeKey,
        longitudeKey,
        rawDataKey,
        remoteDataKey;
import 'package:sky_trade/core/utils/converters/uint8_list_converter.dart';
import 'package:sky_trade/features/remote_i_d_receiver/data/models/remote_i_d_model.dart'
    show RemoteIDModel;
import 'package:sky_trade/features/remote_i_d_transmitter/domain/entities/remote_transmission_entity.dart';

part 'remote_transmission_model.g.dart';

@JsonSerializable(explicitToJson: true)
final class RemoteTransmissionModel extends RemoteTransmissionEntity {
  const RemoteTransmissionModel({
    required this.mRemoteData,
    required this.mIsTest,
    required this.mDevice,
    required this.mRawData,
  }) : super(
          remoteData: mRemoteData,
          isTest: mIsTest,
          device: mDevice,
          rawData: mRawData,
        );

  factory RemoteTransmissionModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RemoteTransmissionModelFromJson(json);

  @JsonKey(name: remoteDataKey)
  final RemoteIDModel mRemoteData;

  @JsonKey(name: isTestKey)
  final bool mIsTest;

  @JsonKey(name: deviceKey)
  final DeviceModel mDevice;

  @JsonKey(name: rawDataKey)
  @Uint8ListConverter()
  final Uint8List mRawData;

  Map<String, dynamic> toJson() => _$RemoteTransmissionModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
final class DeviceModel extends DeviceEntity {
  const DeviceModel({
    required this.mLatitude,
    required this.mLongitude,
  }) : super(
          latitude: mLatitude,
          longitude: mLongitude,
        );

  factory DeviceModel.fromJson(Map<String, dynamic> json) =>
      _$DeviceModelFromJson(json);

  @JsonKey(name: latitudeKey)
  final double mLatitude;

  @JsonKey(name: longitudeKey)
  final double mLongitude;

  Map<String, dynamic> toJson() => _$DeviceModelToJson(this);
}
