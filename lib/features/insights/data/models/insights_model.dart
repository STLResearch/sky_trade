import 'package:json_annotation/json_annotation.dart';
import 'package:sky_trade/core/resources/strings/networking.dart'
    show
        createdAtKey,
        devicesKey,
        devicesObservedKey,
        idKey,
        ipAddressKey,
        isTestKey,
        remoteDataKey,
        updatedAtKey,
        userIdKey,
        userKey;
import 'package:sky_trade/core/utils/converters/date_time_converter.dart'
    show StringDateTimeConverter;
import 'package:sky_trade/features/insights/domain/entities/insights_entity.dart';
import 'package:sky_trade/features/remote_i_d_receiver/data/models/remote_i_d_model.dart'
    show RemoteIDModel;

part 'insights_model.g.dart';

@JsonSerializable()
final class InsightsModel extends InsightsEntity {
  const InsightsModel({
    required this.mUserId,
    required this.mDevicesObserved,
    required this.mDevices,
  }) : super(
          userId: mUserId,
          devicesObserved: mDevicesObserved,
          devices: mDevices,
        );

  factory InsightsModel.fromJson(Map<String, dynamic> json) =>
      _$InsightsModelFromJson(json);

  @JsonKey(name: userIdKey)
  final String mUserId;

  @JsonKey(name: devicesObservedKey)
  final int mDevicesObserved;

  @JsonKey(name: devicesKey)
  final List<DeviceModel> mDevices;

  Map<String, dynamic> toJson() => _$InsightsModelToJson(this);
}

@JsonSerializable()
final class DeviceModel extends DeviceEntity {
  const DeviceModel({
    required this.mId,
    required this.mIpAddress,
    required this.mIsTest,
    required this.mRemoteData,
    required this.mCreatedAt,
    required this.mUpdatedAt,
    required this.mUser,
  }) : super(
          id: mId,
          ipAddress: mIpAddress,
          isTest: mIsTest,
          remoteData: mRemoteData,
          createdAt: mCreatedAt,
          updatedAt: mUpdatedAt,
          user: mUser,
        );

  factory DeviceModel.fromJson(Map<String, dynamic> json) =>
      _$DeviceModelFromJson(json);

  @JsonKey(name: idKey)
  final String mId;

  @JsonKey(name: ipAddressKey)
  final String mIpAddress;

  @JsonKey(name: isTestKey)
  final bool mIsTest;

  @JsonKey(name: remoteDataKey)
  final RemoteIDModel mRemoteData;

  @JsonKey(name: createdAtKey)
  @StringDateTimeConverter()
  final DateTime mCreatedAt;

  @JsonKey(name: updatedAtKey)
  @StringDateTimeConverter()
  final DateTime mUpdatedAt;

  @JsonKey(name: userKey)
  final UserModel mUser;

  Map<String, dynamic> toJson() => _$DeviceModelToJson(this);
}

@JsonSerializable()
final class UserModel extends UserEntity {
  const UserModel({
    required this.mId,
  }) : super(
          id: mId,
        );

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  @JsonKey(name: idKey)
  final int mId;

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
