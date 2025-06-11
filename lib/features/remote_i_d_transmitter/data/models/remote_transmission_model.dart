import 'package:json_annotation/json_annotation.dart';
import 'package:sky_trade/core/resources/strings/networking.dart'
    show
        deviceKey,
        isTestKey,
        latitudeKey,
        longitudeKey,
        remoteDataKey,
        versionKey;
import 'package:sky_trade/features/remote_i_d_receiver/data/models/remote_i_d_model.dart'
    show RemoteIDModel;
import 'package:sky_trade/features/remote_i_d_transmitter/domain/entities/remote_transmission_entity.dart';

part 'remote_transmission_model.g.dart';

@JsonSerializable(explicitToJson: true)
final class RemoteTransmissionModel extends RemoteTransmissionEntity {
  const RemoteTransmissionModel({
    required this.mRemoteData,
    required this.mDevice,
    required this.mIsTest,
    required this.mVersion,
  }) : super(
          remoteData: mRemoteData,
          device: mDevice,
          isTest: mIsTest,
          version: mVersion,
        );

  factory RemoteTransmissionModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RemoteTransmissionModelFromJson(json);

  @JsonKey(name: remoteDataKey)
  final RemoteIDModel mRemoteData;

  @JsonKey(name: deviceKey)
  final DeviceModel? mDevice;

  @JsonKey(name: isTestKey)
  final bool mIsTest;

  @JsonKey(name: versionKey)
  final String mVersion;

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
