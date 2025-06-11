// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_i_d_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RemoteIDModel _$RemoteIDModelFromJson(Map<String, dynamic> json) =>
    RemoteIDModel(
      mConnection:
          ConnectionModel.fromJson(json['connection'] as Map<String, dynamic>),
      mBasicIDs: (json['basicIds'] as List<dynamic>?)
          ?.map((e) => BasicIDModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      mLocation: json['location'] == null
          ? null
          : LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      mSystem: json['system'] == null
          ? null
          : SystemModel.fromJson(json['system'] as Map<String, dynamic>),
      mSelfID: json['selfId'] == null
          ? null
          : SelfIDModel.fromJson(json['selfId'] as Map<String, dynamic>),
      mOperatorID: json['operatorId'] == null
          ? null
          : OperatorIDModel.fromJson(
              json['operatorId'] as Map<String, dynamic>),
      mAuthentication: json['authentication'] == null
          ? null
          : AuthenticationModel.fromJson(
              json['authentication'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RemoteIDModelToJson(RemoteIDModel instance) =>
    <String, dynamic>{
      'connection': instance.mConnection.toJson(),
      'basicIds': instance.mBasicIDs?.map((e) => e.toJson()).toList(),
      'location': instance.mLocation?.toJson(),
      'system': instance.mSystem?.toJson(),
      'selfId': instance.mSelfID?.toJson(),
      'operatorId': instance.mOperatorID?.toJson(),
      'authentication': instance.mAuthentication?.toJson(),
    };

ConnectionModel _$ConnectionModelFromJson(Map<String, dynamic> json) =>
    ConnectionModel(
      mMacAddress: json['macAddress'] as String,
      mLastSeen:
          const DateTimeConverter().fromJson((json['lastSeen'] as num).toInt()),
      mMessageSource: $enumDecodeNullable(
              _$RemoteIDMessageSourceEnumMap, json['messageSource']) ??
          RemoteIDMessageSource.unknown,
      mRssi: (json['rssi'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ConnectionModelToJson(ConnectionModel instance) =>
    <String, dynamic>{
      'macAddress': instance.mMacAddress,
      'lastSeen': const DateTimeConverter().toJson(instance.mLastSeen),
      'messageSource': _$RemoteIDMessageSourceEnumMap[instance.mMessageSource]!,
      'rssi': instance.mRssi,
    };

const _$RemoteIDMessageSourceEnumMap = {
  RemoteIDMessageSource.skyTradeBackend: 'SkyTrade_Backend',
  RemoteIDMessageSource.bluetoothLegacy: 'Bluetooth_Legacy',
  RemoteIDMessageSource.bluetoothLongRange: 'Bluetooth_Long_Range',
  RemoteIDMessageSource.wifiNan: 'WiFi_NAN',
  RemoteIDMessageSource.wifiBeacon: 'WiFi_Beacon',
  RemoteIDMessageSource.unknown: 'Unknown',
};

BasicIDModel _$BasicIDModelFromJson(Map<String, dynamic> json) => BasicIDModel(
      mType:
          $enumDecodeNullable(_$UnmannedAircraftTypeEnumMap, json['uaType']) ??
              UnmannedAircraftType.none,
      mIDType: $enumDecodeNullable(
              _$UnmannedAircraftIDTypeEnumMap, json['idType']) ??
          UnmannedAircraftIDType.none,
      mSerialNumber: json['serialNumber'] as String?,
      mRegistrationID: json['registrationId'] as String?,
      mID: const NullableUint8ListConverter()
          .fromJson(json['uasId'] as List<int>?),
      mRawData: const NullableUint8ListConverter()
          .fromJson(json['rawData'] as List<int>?),
    );

Map<String, dynamic> _$BasicIDModelToJson(BasicIDModel instance) =>
    <String, dynamic>{
      'uaType': _$UnmannedAircraftTypeEnumMap[instance.mType]!,
      'idType': _$UnmannedAircraftIDTypeEnumMap[instance.mIDType]!,
      'serialNumber': instance.mSerialNumber,
      'registrationId': instance.mRegistrationID,
      'uasId': const NullableUint8ListConverter().toJson(instance.mID),
      'rawData': const NullableUint8ListConverter().toJson(instance.mRawData),
    };

const _$UnmannedAircraftTypeEnumMap = {
  UnmannedAircraftType.none: 'None',
  UnmannedAircraftType.aeroplane: 'Aeroplane',
  UnmannedAircraftType.helicopterOrMultirotor: 'Helicopter_or_Multirotor',
  UnmannedAircraftType.gyroplane: 'Gyroplane',
  UnmannedAircraftType.hybridLift: 'Hybrid_Lift',
  UnmannedAircraftType.ornithopter: 'Ornithopter',
  UnmannedAircraftType.glider: 'Glider',
  UnmannedAircraftType.kite: 'Kite',
  UnmannedAircraftType.freeBalloon: 'Free_balloon',
  UnmannedAircraftType.captiveBalloon: 'Captive_balloon',
  UnmannedAircraftType.airship: 'Airship',
  UnmannedAircraftType.freeFallParachute: 'Free_fall_parachute',
  UnmannedAircraftType.rocket: 'Rocket',
  UnmannedAircraftType.tetheredPoweredAircraft: 'Tethered_powered_aircraft',
  UnmannedAircraftType.groundObstacle: 'Ground_obstacle',
  UnmannedAircraftType.other: 'Other',
};

const _$UnmannedAircraftIDTypeEnumMap = {
  UnmannedAircraftIDType.none: 'None',
  UnmannedAircraftIDType.serialNumber: 'Serial_Number',
  UnmannedAircraftIDType.cAARegistrationID: 'CAA_Registration_ID',
  UnmannedAircraftIDType.uTMAssignedID: 'UTM_Assigned_ID',
  UnmannedAircraftIDType.specificSessionID: 'Specific_Session_ID',
};

LocationModel _$LocationModelFromJson(Map<String, dynamic> json) =>
    LocationModel(
      mOperationalStatus: $enumDecodeNullable(
              _$UnmannedAircraftOperationalStatusEnumMap, json['status']) ??
          UnmannedAircraftOperationalStatus.none,
      mHeightType: $enumDecodeNullable(
              _$UnmannedAircraftHeightTypeEnumMap, json['heightType']) ??
          UnmannedAircraftHeightType.aboveTakeoff,
      mHorizontalAccuracy: $enumDecodeNullable(
              _$UnmannedAircraftHorizontalAccuracyEnumMap,
              json['horizontalAccuracy']) ??
          UnmannedAircraftHorizontalAccuracy.unknown,
      mVerticalAccuracy: $enumDecodeNullable(
              _$UnmannedAircraftVerticalOrBarometerAccuracyEnumMap,
              json['verticalAccuracy']) ??
          UnmannedAircraftVerticalOrBarometerAccuracy.unknown,
      mBarometerAccuracy: $enumDecodeNullable(
              _$UnmannedAircraftVerticalOrBarometerAccuracyEnumMap,
              json['baroAccuracy']) ??
          UnmannedAircraftVerticalOrBarometerAccuracy.unknown,
      mSpeedAccuracy: $enumDecodeNullable(
              _$UnmannedAircraftSpeedAccuracyEnumMap, json['speedAccuracy']) ??
          UnmannedAircraftSpeedAccuracy.unknown,
      mDirection: (json['direction'] as num?)?.toInt(),
      mHorizontalSpeed: (json['speedHorizontal'] as num?)?.toDouble(),
      mVerticalSpeed: (json['speedVertical'] as num?)?.toDouble(),
      mLatitude: (json['latitude'] as num?)?.toDouble(),
      mLongitude: (json['longitude'] as num?)?.toDouble(),
      mLocation: json['location'] == null
          ? null
          : CoordinatesModel.fromJson(json['location'] as Map<String, dynamic>),
      mAltitudePressure: (json['altitudePressure'] as num?)?.toDouble(),
      mAltitudeGeodetic: (json['altitudeGeodetic'] as num?)?.toDouble(),
      mHeight: (json['height'] as num?)?.toDouble(),
      mTimestamp: const NullableDurationConverter()
          .fromJson((json['locationTimestamp'] as num?)?.toDouble()),
      mTimestampAccuracy: const NullableDurationConverter()
          .fromJson((json['timeAccuracy'] as num?)?.toDouble()),
      mRawData: const NullableUint8ListConverter()
          .fromJson(json['rawData'] as List<int>?),
    );

Map<String, dynamic> _$LocationModelToJson(LocationModel instance) =>
    <String, dynamic>{
      'status': _$UnmannedAircraftOperationalStatusEnumMap[
          instance.mOperationalStatus]!,
      'heightType': _$UnmannedAircraftHeightTypeEnumMap[instance.mHeightType]!,
      'horizontalAccuracy': _$UnmannedAircraftHorizontalAccuracyEnumMap[
          instance.mHorizontalAccuracy]!,
      'verticalAccuracy': _$UnmannedAircraftVerticalOrBarometerAccuracyEnumMap[
          instance.mVerticalAccuracy]!,
      'baroAccuracy': _$UnmannedAircraftVerticalOrBarometerAccuracyEnumMap[
          instance.mBarometerAccuracy]!,
      'speedAccuracy':
          _$UnmannedAircraftSpeedAccuracyEnumMap[instance.mSpeedAccuracy]!,
      'direction': instance.mDirection,
      'speedHorizontal': instance.mHorizontalSpeed,
      'speedVertical': instance.mVerticalSpeed,
      'latitude': instance.mLatitude,
      'longitude': instance.mLongitude,
      'location': instance.mLocation?.toJson(),
      'altitudePressure': instance.mAltitudePressure,
      'altitudeGeodetic': instance.mAltitudeGeodetic,
      'height': instance.mHeight,
      'locationTimestamp':
          const NullableDurationConverter().toJson(instance.mTimestamp),
      'timeAccuracy':
          const NullableDurationConverter().toJson(instance.mTimestampAccuracy),
      'rawData': const NullableUint8ListConverter().toJson(instance.mRawData),
    };

const _$UnmannedAircraftOperationalStatusEnumMap = {
  UnmannedAircraftOperationalStatus.none: 'None',
  UnmannedAircraftOperationalStatus.ground: 'Ground',
  UnmannedAircraftOperationalStatus.airborne: 'Airborne',
  UnmannedAircraftOperationalStatus.emergency: 'Emergency',
  UnmannedAircraftOperationalStatus.remoteIDSystemFailure:
      'Remote_ID_System_Failure',
};

const _$UnmannedAircraftHeightTypeEnumMap = {
  UnmannedAircraftHeightType.aboveGroundLevel: 'Ground',
  UnmannedAircraftHeightType.aboveTakeoff: 'Takeoff',
};

const _$UnmannedAircraftHorizontalAccuracyEnumMap = {
  UnmannedAircraftHorizontalAccuracy.unknown: 'Unknown',
  UnmannedAircraftHorizontalAccuracy.kilometers_18_52: 'kilometers_18_52',
  UnmannedAircraftHorizontalAccuracy.kilometers_7_408: 'kilometers_7_408',
  UnmannedAircraftHorizontalAccuracy.kilometers_3_704: 'kilometers_3_704',
  UnmannedAircraftHorizontalAccuracy.kilometers_1_852: 'kilometers_1_852',
  UnmannedAircraftHorizontalAccuracy.meters_926: 'meters_926',
  UnmannedAircraftHorizontalAccuracy.meters_555_6: 'meters_555_6',
  UnmannedAircraftHorizontalAccuracy.meters_185_2: 'meters_185_2',
  UnmannedAircraftHorizontalAccuracy.meters_92_6: 'meters_92_6',
  UnmannedAircraftHorizontalAccuracy.meters_30: 'meters_30',
  UnmannedAircraftHorizontalAccuracy.meters_10: 'meters_10',
  UnmannedAircraftHorizontalAccuracy.meters_3: 'meters_3',
  UnmannedAircraftHorizontalAccuracy.meters_1: 'meters_1',
};

const _$UnmannedAircraftVerticalOrBarometerAccuracyEnumMap = {
  UnmannedAircraftVerticalOrBarometerAccuracy.unknown: 'Unknown',
  UnmannedAircraftVerticalOrBarometerAccuracy.meters_150: 'meters_150',
  UnmannedAircraftVerticalOrBarometerAccuracy.meters_45: 'meters_45',
  UnmannedAircraftVerticalOrBarometerAccuracy.meters_25: 'meters_25',
  UnmannedAircraftVerticalOrBarometerAccuracy.meters_10: 'meters_10',
  UnmannedAircraftVerticalOrBarometerAccuracy.meters_3: 'meters_3',
  UnmannedAircraftVerticalOrBarometerAccuracy.meters_1: 'meters_1',
};

const _$UnmannedAircraftSpeedAccuracyEnumMap = {
  UnmannedAircraftSpeedAccuracy.unknown: 'Unknown',
  UnmannedAircraftSpeedAccuracy.meterPerSecond_10: 'meter_per_second_10',
  UnmannedAircraftSpeedAccuracy.meterPerSecond_3: 'meter_per_second_3',
  UnmannedAircraftSpeedAccuracy.meterPerSecond_1: 'meter_per_second_1',
  UnmannedAircraftSpeedAccuracy.meterPerSecond_0_3: 'meter_per_second_0_3',
};

SystemModel _$SystemModelFromJson(Map<String, dynamic> json) => SystemModel(
      mOperatorLocationType: $enumDecodeNullable(
              _$UnmannedAircraftOperatorLocationTypeEnumMap,
              json['operatorLocationType']) ??
          UnmannedAircraftOperatorLocationType.invalid,
      mClassificationType: $enumDecodeNullable(
              _$UnmannedAircraftClassificationTypeEnumMap,
              json['classificationType']) ??
          UnmannedAircraftClassificationType.undeclared,
      mAreaCount: (json['areaCount'] as num).toInt(),
      mAreaRadius: (json['areaRadius'] as num).toInt(),
      mTimestamp: const DateTimeConverter()
          .fromJson((json['systemTimestamp'] as num).toInt()),
      mOperatorLatitude: (json['operatorLatitude'] as num?)?.toDouble(),
      mOperatorLongitude: (json['operatorLongitude'] as num?)?.toDouble(),
      mOperatorLocation: json['operatorCoordinates'] == null
          ? null
          : CoordinatesModel.fromJson(
              json['operatorCoordinates'] as Map<String, dynamic>),
      mOperatorAltitude: (json['operatorAltitudeGeo'] as num?)?.toDouble(),
      mAreaCeiling: (json['areaCeiling'] as num?)?.toDouble(),
      mAreaFloor: (json['areaFloor'] as num?)?.toDouble(),
      mCategory: $enumDecodeNullable(
              _$UnmannedAircraftCategoryEnumMap, json['category']) ??
          UnmannedAircraftCategory.undefined,
      mClassValue: $enumDecodeNullable(
              _$UnmannedAircraftClassValueEnumMap, json['classValue']) ??
          UnmannedAircraftClassValue.undefined,
      mRawData: const NullableUint8ListConverter()
          .fromJson(json['rawData'] as List<int>?),
    );

Map<String, dynamic> _$SystemModelToJson(SystemModel instance) =>
    <String, dynamic>{
      'operatorLocationType': _$UnmannedAircraftOperatorLocationTypeEnumMap[
          instance.mOperatorLocationType]!,
      'classificationType': _$UnmannedAircraftClassificationTypeEnumMap[
          instance.mClassificationType]!,
      'category': _$UnmannedAircraftCategoryEnumMap[instance.mCategory]!,
      'classValue': _$UnmannedAircraftClassValueEnumMap[instance.mClassValue]!,
      'areaCount': instance.mAreaCount,
      'areaRadius': instance.mAreaRadius,
      'systemTimestamp': const DateTimeConverter().toJson(instance.mTimestamp),
      'operatorLatitude': instance.mOperatorLatitude,
      'operatorLongitude': instance.mOperatorLongitude,
      'operatorCoordinates': instance.mOperatorLocation?.toJson(),
      'operatorAltitudeGeo': instance.mOperatorAltitude,
      'areaCeiling': instance.mAreaCeiling,
      'areaFloor': instance.mAreaFloor,
      'rawData': const NullableUint8ListConverter().toJson(instance.mRawData),
    };

const _$UnmannedAircraftOperatorLocationTypeEnumMap = {
  UnmannedAircraftOperatorLocationType.invalid: 'Invalid',
  UnmannedAircraftOperatorLocationType.takeoff: 'TakeOff',
  UnmannedAircraftOperatorLocationType.dynamic: 'Dynamic',
  UnmannedAircraftOperatorLocationType.fixed: 'Fixed',
};

const _$UnmannedAircraftClassificationTypeEnumMap = {
  UnmannedAircraftClassificationType.undeclared: 'Undeclared',
  UnmannedAircraftClassificationType.europeanUnion: 'EU',
};

const _$UnmannedAircraftCategoryEnumMap = {
  UnmannedAircraftCategory.undefined: 'Undefined',
  UnmannedAircraftCategory.europeanUnionOpen: 'EU_Open',
  UnmannedAircraftCategory.europeanUnionSpecific: 'EU_Specific',
  UnmannedAircraftCategory.europeanUnionCertified: 'EU_Certified',
};

const _$UnmannedAircraftClassValueEnumMap = {
  UnmannedAircraftClassValue.undefined: 'Undefined',
  UnmannedAircraftClassValue.europeanUnionClass0: 'EU_Class_0',
  UnmannedAircraftClassValue.europeanUnionClass1: 'EU_Class_1',
  UnmannedAircraftClassValue.europeanUnionClass2: 'EU_Class_2',
  UnmannedAircraftClassValue.europeanUnionClass3: 'EU_Class_3',
  UnmannedAircraftClassValue.europeanUnionClass4: 'EU_Class_4',
  UnmannedAircraftClassValue.europeanUnionClass5: 'EU_Class_5',
  UnmannedAircraftClassValue.europeanUnionClass6: 'EU_Class_6',
  UnmannedAircraftClassValue.europeanUnionClass7: 'EU_Class_7',
};

CoordinatesModel _$CoordinatesModelFromJson(Map<String, dynamic> json) =>
    CoordinatesModel(
      mLatitude: (json['latitude'] as num).toDouble(),
      mLongitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$CoordinatesModelToJson(CoordinatesModel instance) =>
    <String, dynamic>{
      'latitude': instance.mLatitude,
      'longitude': instance.mLongitude,
    };

SelfIDModel _$SelfIDModelFromJson(Map<String, dynamic> json) => SelfIDModel(
      mDescriptionType: $enumDecodeNullable(
              _$UnmannedAircraftSelfIDDescriptionTypeEnumMap,
              json['descriptionType']) ??
          UnmannedAircraftSelfIDDescriptionType.invalid,
      mOperationDescription: const NullableUint8ListConverter()
          .fromJson(json['operationDescription'] as List<int>?),
      mDescription: json['description'] as String?,
      mRawData: const NullableUint8ListConverter()
          .fromJson(json['rawData'] as List<int>?),
    );

Map<String, dynamic> _$SelfIDModelToJson(SelfIDModel instance) =>
    <String, dynamic>{
      'descriptionType': _$UnmannedAircraftSelfIDDescriptionTypeEnumMap[
          instance.mDescriptionType]!,
      'operationDescription': const NullableUint8ListConverter()
          .toJson(instance.mOperationDescription),
      'description': instance.mDescription,
      'rawData': const NullableUint8ListConverter().toJson(instance.mRawData),
    };

const _$UnmannedAircraftSelfIDDescriptionTypeEnumMap = {
  UnmannedAircraftSelfIDDescriptionType.invalid: 'Invalid',
  UnmannedAircraftSelfIDDescriptionType.text: 'Text',
  UnmannedAircraftSelfIDDescriptionType.emergency: 'Emergency',
  UnmannedAircraftSelfIDDescriptionType.extendedStatus: 'Extended_Status',
  UnmannedAircraftSelfIDDescriptionType.private: 'Private',
};

OperatorIDModel _$OperatorIDModelFromJson(Map<String, dynamic> json) =>
    OperatorIDModel(
      mOperatorIDType: (json['operatorIdType'] as num?)?.toInt(),
      mOperatorIDClassification: $enumDecodeNullable(
          _$UnmannedAircraftOperatorIDTypeEnumMap,
          json['operatorIdClassification']),
      mOperatorID: const NullableUint8ListConverter()
          .fromJson(json['operatorId'] as List<int>?),
      mID: json['id'] as String?,
      mRawData: const NullableUint8ListConverter()
          .fromJson(json['rawData'] as List<int>?),
    );

Map<String, dynamic> _$OperatorIDModelToJson(OperatorIDModel instance) =>
    <String, dynamic>{
      'operatorIdType': instance.mOperatorIDType,
      'operatorIdClassification': _$UnmannedAircraftOperatorIDTypeEnumMap[
          instance.mOperatorIDClassification],
      'operatorId':
          const NullableUint8ListConverter().toJson(instance.mOperatorID),
      'id': instance.mID,
      'rawData': const NullableUint8ListConverter().toJson(instance.mRawData),
    };

const _$UnmannedAircraftOperatorIDTypeEnumMap = {
  UnmannedAircraftOperatorIDType.operatorID: 'Operator_ID',
  UnmannedAircraftOperatorIDType.private: 'Private',
};

AuthenticationModel _$AuthenticationModelFromJson(Map<String, dynamic> json) =>
    AuthenticationModel(
      mAuthenticationType: $enumDecodeNullable(
              _$UnmannedAircraftAuthenticationTypeEnumMap, json['authType']) ??
          UnmannedAircraftAuthenticationType.none,
      mAuthenticationPageNumber: (json['authDataPage'] as num).toInt(),
      mAuthenticationData:
          const Uint8ListConverter().fromJson(json['authData'] as List<int>),
      mLastAuthenticationPageIndex:
          (json['authLastPageIndex'] as num?)?.toInt(),
      mAuthenticationLength: (json['authLength'] as num?)?.toInt(),
      mTimestamp: const NullableDateTimeConverter()
          .fromJson((json['authTimestamp'] as num?)?.toInt()),
      mRawData: const NullableUint8ListConverter()
          .fromJson(json['rawData'] as List<int>?),
    );

Map<String, dynamic> _$AuthenticationModelToJson(
        AuthenticationModel instance) =>
    <String, dynamic>{
      'authType': _$UnmannedAircraftAuthenticationTypeEnumMap[
          instance.mAuthenticationType]!,
      'authDataPage': instance.mAuthenticationPageNumber,
      'authData':
          const Uint8ListConverter().toJson(instance.mAuthenticationData),
      'authLastPageIndex': instance.mLastAuthenticationPageIndex,
      'authLength': instance.mAuthenticationLength,
      'authTimestamp':
          const NullableDateTimeConverter().toJson(instance.mTimestamp),
      'rawData': const NullableUint8ListConverter().toJson(instance.mRawData),
    };

const _$UnmannedAircraftAuthenticationTypeEnumMap = {
  UnmannedAircraftAuthenticationType.none: 'None',
  UnmannedAircraftAuthenticationType.uASIDSignature: 'UAS_ID_Signature',
  UnmannedAircraftAuthenticationType.operatorIDSignature:
      'Operator_ID_Signature',
  UnmannedAircraftAuthenticationType.messageSetSignature:
      'Message_Set_Signature',
  UnmannedAircraftAuthenticationType.networkRemoteID: 'Network_Remote_ID',
  UnmannedAircraftAuthenticationType.specificAuthentication:
      'Specific_Authentication',
  UnmannedAircraftAuthenticationType.privateUse0xA: 'Private_Use_0xA',
  UnmannedAircraftAuthenticationType.privateUse0xB: 'Private_Use_0xB',
  UnmannedAircraftAuthenticationType.privateUse0xC: 'Private_Use_0xC',
  UnmannedAircraftAuthenticationType.privateUse0xD: 'Private_Use_0xD',
  UnmannedAircraftAuthenticationType.privateUse0xE: 'Private_Use_0xE',
  UnmannedAircraftAuthenticationType.privateUse0xF: 'Private_Use_0xF',
};
