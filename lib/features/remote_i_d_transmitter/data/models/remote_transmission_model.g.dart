// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_transmission_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RemoteTransmissionModel _$RemoteTransmissionModelFromJson(
        Map<String, dynamic> json) =>
    RemoteTransmissionModel(
      mRemoteData:
          RemoteIDModel.fromJson(json['remoteData'] as Map<String, dynamic>),
      mDevice: json['device'] == null
          ? null
          : DeviceModel.fromJson(json['device'] as Map<String, dynamic>),
      mIsTest: json['isTest'] as bool,
      mVersion: json['version'] as String,
    );

Map<String, dynamic> _$RemoteTransmissionModelToJson(
        RemoteTransmissionModel instance) =>
    <String, dynamic>{
      'remoteData': instance.mRemoteData.toJson(),
      'device': instance.mDevice?.toJson(),
      'isTest': instance.mIsTest,
      'version': instance.mVersion,
    };

DeviceModel _$DeviceModelFromJson(Map<String, dynamic> json) => DeviceModel(
      mLatitude: (json['latitude'] as num).toDouble(),
      mLongitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$DeviceModelToJson(DeviceModel instance) =>
    <String, dynamic>{
      'latitude': instance.mLatitude,
      'longitude': instance.mLongitude,
    };
