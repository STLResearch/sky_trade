// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insights_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InsightsModel _$InsightsModelFromJson(Map<String, dynamic> json) =>
    InsightsModel(
      mUserId: (json['userId'] as num).toInt(),
      mDevicesObserved: (json['devicesObserved'] as num).toInt(),
      mDevices: (json['devices'] as List<dynamic>)
          .map((e) => DeviceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InsightsModelToJson(InsightsModel instance) =>
    <String, dynamic>{
      'userId': instance.mUserId,
      'devicesObserved': instance.mDevicesObserved,
      'devices': instance.mDevices,
    };

DeviceModel _$DeviceModelFromJson(Map<String, dynamic> json) => DeviceModel(
      mId: json['id'] as String,
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
      mId: (json['id'] as num).toInt(),
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.mId,
    };
