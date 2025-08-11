// SPDX-License-Identifier: UNLICENSED
                            
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drone_insights_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrackedDroneInsightsModel _$TrackedDroneInsightsModelFromJson(
        Map<String, dynamic> json) =>
    TrackedDroneInsightsModel(
      mUserId: json['userId'],
      mDevicesObserved: (json['devicesObserved'] as num).toInt(),
      mDevices: (json['devices'] as List<dynamic>)
          .map((e) => DeviceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TrackedDroneInsightsModelToJson(
        TrackedDroneInsightsModel instance) =>
    <String, dynamic>{
      'userId': instance.mUserId,
      'devicesObserved': instance.mDevicesObserved,
      'devices': instance.mDevices,
    };

DeviceModel _$DeviceModelFromJson(Map<String, dynamic> json) => DeviceModel(
      mId: json['id'],
      mIpAddress: json['ipAddress'] as String,
      mIsTest: json['isTest'] as bool,
      mRemoteData:
          RemoteIDModel.fromJson(json['remoteData'] as Map<String, dynamic>),
      mCreatedAt:
          const StringDateTimeConverter().fromJson(json['createdAt'] as String),
      mUpdatedAt:
          const StringDateTimeConverter().fromJson(json['updatedAt'] as String),
      mUser: UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DeviceModelToJson(DeviceModel instance) =>
    <String, dynamic>{
      'id': instance.mId,
      'ipAddress': instance.mIpAddress,
      'isTest': instance.mIsTest,
      'remoteData': instance.mRemoteData,
      'createdAt': const StringDateTimeConverter().toJson(instance.mCreatedAt),
      'updatedAt': const StringDateTimeConverter().toJson(instance.mUpdatedAt),
      'user': instance.mUser,
    };

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      mId: json['id'],
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.mId,
    };

FilteredDroneInsightsModel _$FilteredDroneInsightsModelFromJson(
        Map<String, dynamic> json) =>
    FilteredDroneInsightsModel(
      mFilterRange: json['filterRange'] as String,
      mIntervals: (json['intervals'] as List<dynamic>)
          .map((e) => IntervalsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FilteredDroneInsightsModelToJson(
        FilteredDroneInsightsModel instance) =>
    <String, dynamic>{
      'filterRange': instance.mFilterRange,
      'intervals': instance.mIntervals,
    };

IntervalsModel _$IntervalsModelFromJson(Map<String, dynamic> json) =>
    IntervalsModel(
      mFrom: const StringDateTimeConverter().fromJson(json['from'] as String),
      mTo: const StringDateTimeConverter().fromJson(json['to'] as String),
      mValue: (json['value'] as num).toInt(),
    );

Map<String, dynamic> _$IntervalsModelToJson(IntervalsModel instance) =>
    <String, dynamic>{
      'from': const StringDateTimeConverter().toJson(instance.mFrom),
      'to': const StringDateTimeConverter().toJson(instance.mTo),
      'value': instance.mValue,
    };
