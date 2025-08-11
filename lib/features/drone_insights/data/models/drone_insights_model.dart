// SPDX-License-Identifier: UNLICENSED
                            
import 'package:json_annotation/json_annotation.dart';
import 'package:sky_trade/core/resources/strings/networking.dart'
    show
        createdAtKey,
        devicesKey,
        devicesObservedKey,
        filterRangeKey,
        fromKey,
        idKey,
        intervalsKey,
        ipAddressKey,
        isTestKey,
        remoteDataKey,
        toKey,
        updatedAtKey,
        userIdKey,
        userKey,
        valueKey;
import 'package:sky_trade/core/utils/converters/date_time_converter.dart'
    show StringDateTimeConverter;
import 'package:sky_trade/features/drone_insights/domain/entities/drone_insights_entity.dart';
import 'package:sky_trade/features/remote_i_d_receiver/data/models/remote_i_d_model.dart'
    show RemoteIDModel;

part 'drone_insights_model.g.dart';

@JsonSerializable()
final class TrackedDroneInsightsModel extends TrackedDroneInsightsEntity {
  const TrackedDroneInsightsModel({
    required this.mUserId,
    required this.mDevicesObserved,
    required this.mDevices,
  }) : super(
          userId: mUserId,
          devicesObserved: mDevicesObserved,
          devices: mDevices,
        );

  factory TrackedDroneInsightsModel.fromJson(Map<String, dynamic> json) =>
      _$TrackedDroneInsightsModelFromJson(json);

  @JsonKey(name: userIdKey)
  final dynamic mUserId;

  @JsonKey(name: devicesObservedKey)
  final int mDevicesObserved;

  @JsonKey(name: devicesKey)
  final List<DeviceModel> mDevices;

  Map<String, dynamic> toJson() => _$TrackedDroneInsightsModelToJson(this);
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
  final dynamic mId;

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
  final dynamic mId;

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}

@JsonSerializable()
final class FilteredDroneInsightsModel extends FilteredDroneInsightsEntity {
  const FilteredDroneInsightsModel({
    required this.mFilterRange,
    required this.mIntervals,
  }) : super(
          filterRange: mFilterRange,
          intervals: mIntervals,
        );

  factory FilteredDroneInsightsModel.fromJson(Map<String, dynamic> json) =>
      _$FilteredDroneInsightsModelFromJson(json);

  @JsonKey(name: filterRangeKey)
  final String mFilterRange;

  @JsonKey(name: intervalsKey)
  final List<IntervalsModel> mIntervals;

  Map<String, dynamic> toJson() => _$FilteredDroneInsightsModelToJson(this);
}

@JsonSerializable()
final class IntervalsModel extends IntervalsEntity {
  const IntervalsModel({
    required this.mFrom,
    required this.mTo,
    required this.mValue,
  }) : super(
          from: mFrom,
          to: mTo,
          value: mValue,
        );

  factory IntervalsModel.fromJson(Map<String, dynamic> json) =>
      _$IntervalsModelFromJson(json);

  @JsonKey(name: fromKey)
  @StringDateTimeConverter()
  final DateTime mFrom;

  @JsonKey(name: toKey)
  @StringDateTimeConverter()
  final DateTime mTo;

  @JsonKey(name: valueKey)
  final int mValue;

  Map<String, dynamic> toJson() => _$IntervalsModelToJson(this);
}
