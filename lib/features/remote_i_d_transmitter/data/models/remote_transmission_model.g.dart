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
      mIsTest: json['isTest'] as bool,
      mDevice: DeviceModel.fromJson(json['device'] as Map<String, dynamic>),
      mRawData:
          const Uint8ListConverter().fromJson(json['rawData'] as List<int>),
    );

Map<String, dynamic> _$RemoteTransmissionModelToJson(
        RemoteTransmissionModel instance) =>
    <String, dynamic>{
      'remoteData': instance.mRemoteData.toJson(),
      'isTest': instance.mIsTest,
      'device': instance.mDevice.toJson(),
      'rawData': const Uint8ListConverter().toJson(instance.mRawData),
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
