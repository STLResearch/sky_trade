// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'u_a_s_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UASModel _$UASModelFromJson(Map<String, dynamic> json) => UASModel(
      mId: json['id'] as String,
      mRemoteData:
          RemoteDataModel.fromJson(json['remoteData'] as Map<String, dynamic>),
      mCreatedAt: json['createdAt'] as String,
      mUpdateAt: json['updateAt'] as String,
    );

Map<String, dynamic> _$UASModelToJson(UASModel instance) => <String, dynamic>{
      'id': instance.mId,
      'remoteData': instance.mRemoteData,
      'createdAt': instance.mCreatedAt,
      'updateAt': instance.mUpdateAt,
    };

RemoteDataModel _$RemoteDataModelFromJson(Map<String, dynamic> json) =>
    RemoteDataModel(
      mSelfId: SelfIdModel.fromJson(json['selfId'] as Map<String, dynamic>),
      mSystem: SystemModel.fromJson(json['system'] as Map<String, dynamic>),
      mLocation:
          LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      mConnection:
          ConnectionModel.fromJson(json['connection'] as Map<String, dynamic>),
      mMacAddress: (json['macAddress'] as num).toInt(),
      mOperatorId:
          OperatorIdModel.fromJson(json['operatorId'] as Map<String, dynamic>),
      mIdentification1: IdentificationModel.fromJson(
          json['identification1'] as Map<String, dynamic>),
      mIdentification2: IdentificationModel.fromJson(
          json['identification2'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RemoteDataModelToJson(RemoteDataModel instance) =>
    <String, dynamic>{
      'selfId': instance.mSelfId,
      'system': instance.mSystem,
      'location': instance.mLocation,
      'connection': instance.mConnection,
      'macAddress': instance.mMacAddress,
      'operatorId': instance.mOperatorId,
      'identification1': instance.mIdentification1,
      'identification2': instance.mIdentification2,
    };

SelfIdModel _$SelfIdModelFromJson(Map<String, dynamic> json) => SelfIdModel(
      mDescriptionType: json['descriptionType'] as String,
      mOperationDescription: (json['operationDescription'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$SelfIdModelToJson(SelfIdModel instance) =>
    <String, dynamic>{
      'descriptionType': instance.mDescriptionType,
      'operationDescription': instance.mOperationDescription,
    };

SystemModel _$SystemModelFromJson(Map<String, dynamic> json) => SystemModel(
      mCategory: json['category'] as String,
      mAreaCount: (json['areaCount'] as num).toInt(),
      mAreaFloor: (json['areaFloor'] as num).toInt(),
      mAreaRadius: (json['areaRadius'] as num).toInt(),
      mClassValue: json['classValue'] as String,
      mAreaCeiling: (json['areaCeiling'] as num).toInt(),
      mSystemTimestamp: (json['systemTimestamp'] as num).toInt(),
      mOperatorLatitude: (json['operatorLatitude'] as num).toDouble(),
      mOperatorLongitude: (json['operatorLongitude'] as num).toDouble(),
      mClassificationType: json['classificationType'] as String,
      mOperatorAltitudeGeo: (json['operatorAltitudeGeo'] as num).toDouble(),
      mOperatorLocationType: json['operatorLocationType'] as String,
    );

Map<String, dynamic> _$SystemModelToJson(SystemModel instance) =>
    <String, dynamic>{
      'category': instance.mCategory,
      'areaCount': instance.mAreaCount,
      'areaFloor': instance.mAreaFloor,
      'areaRadius': instance.mAreaRadius,
      'classValue': instance.mClassValue,
      'areaCeiling': instance.mAreaCeiling,
      'systemTimestamp': instance.mSystemTimestamp,
      'operatorLatitude': instance.mOperatorLatitude,
      'operatorLongitude': instance.mOperatorLongitude,
      'classificationType': instance.mClassificationType,
      'operatorAltitudeGeo': instance.mOperatorAltitudeGeo,
      'operatorLocationType': instance.mOperatorLocationType,
    };

LocationModel _$LocationModelFromJson(Map<String, dynamic> json) =>
    LocationModel(
      mHeight: (json['height'] as num).toInt(),
      mStatus: json['status'] as String,
      mDistance: (json['distance'] as num).toInt(),
      mLatitude: (json['latitude'] as num).toDouble(),
      mDirection: (json['direction'] as num).toInt(),
      mLongitude: (json['longitude'] as num).toDouble(),
      mHeightType: json['heightType'] as String,
      mBaroAccuracy: json['baroAccuracy'] as String,
      mTimeAccuracy: (json['timeAccuracy'] as num).toDouble(),
      mSpeedAccuracy: json['speedAccuracy'] as String,
      mSpeedVertical: (json['speedVertical'] as num).toInt(),
      mSpeedHorizontal: (json['speedHorizontal'] as num).toInt(),
      mAltitudeGeodetic: (json['altitudeGeodetic'] as num).toInt(),
      mAltitudePressure: (json['altitudePressure'] as num).toInt(),
      mVerticalAccuracy: json['verticalAccuracy'] as String,
      mLocationTimestamp: (json['locationTimestamp'] as num).toInt(),
      mHorizontalAccuracy: json['horizontalAccuracy'] as String,
    );

Map<String, dynamic> _$LocationModelToJson(LocationModel instance) =>
    <String, dynamic>{
      'height': instance.mHeight,
      'status': instance.mStatus,
      'distance': instance.mDistance,
      'latitude': instance.mLatitude,
      'direction': instance.mDirection,
      'longitude': instance.mLongitude,
      'heightType': instance.mHeightType,
      'baroAccuracy': instance.mBaroAccuracy,
      'timeAccuracy': instance.mTimeAccuracy,
      'speedAccuracy': instance.mSpeedAccuracy,
      'speedVertical': instance.mSpeedVertical,
      'speedHorizontal': instance.mSpeedHorizontal,
      'altitudeGeodetic': instance.mAltitudeGeodetic,
      'altitudePressure': instance.mAltitudePressure,
      'verticalAccuracy': instance.mVerticalAccuracy,
      'locationTimestamp': instance.mLocationTimestamp,
      'horizontalAccuracy': instance.mHorizontalAccuracy,
    };

ConnectionModel _$ConnectionModelFromJson(Map<String, dynamic> json) =>
    ConnectionModel(
      mRssi: (json['rssi'] as num).toInt(),
      mLastSeen: (json['lastSeen'] as num).toInt(),
      mMsgDelta: (json['msgDelta'] as num).toInt(),
      mFirstSeen: (json['firstSeen'] as num).toInt(),
      mMacAddress: json['macAddress'] as String,
      mTransportType: json['transportType'] as String,
    );

Map<String, dynamic> _$ConnectionModelToJson(ConnectionModel instance) =>
    <String, dynamic>{
      'rssi': instance.mRssi,
      'lastSeen': instance.mLastSeen,
      'msgDelta': instance.mMsgDelta,
      'firstSeen': instance.mFirstSeen,
      'macAddress': instance.mMacAddress,
      'transportType': instance.mTransportType,
    };

OperatorIdModel _$OperatorIdModelFromJson(Map<String, dynamic> json) =>
    OperatorIdModel(
      mOperatorId: (json['operatorId'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$OperatorIdModelToJson(OperatorIdModel instance) =>
    <String, dynamic>{
      'operatorId': instance.mOperatorId,
    };

IdentificationModel _$IdentificationModelFromJson(Map<String, dynamic> json) =>
    IdentificationModel(
      mUasId: (json['uasId'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      mIdType: json['idType'] as String,
      mUaType: json['uaType'] as String,
    );

Map<String, dynamic> _$IdentificationModelToJson(
        IdentificationModel instance) =>
    <String, dynamic>{
      'uasId': instance.mUasId,
      'idType': instance.mIdType,
      'uaType': instance.mUaType,
    };
