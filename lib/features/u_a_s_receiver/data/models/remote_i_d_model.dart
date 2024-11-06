// ignore_for_file: depend_on_referenced_packages, implementation_imports

import 'dart:typed_data' show Uint8List;

import 'package:flutter_opendroneid/flutter_opendroneid.dart';
import 'package:flutter_opendroneid/models/message_container.dart';
import 'package:flutter_opendroneid/pigeon.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:sky_trade/core/resources/strings/networking.dart'
    show
        altitudeGeodeticKey,
        altitudePressureKey,
        areaCeilingKey,
        areaCountKey,
        areaFloorKey,
        areaRadiusKey,
        authDataKey,
        authDataPageKey,
        authLastPageIndexKey,
        authLengthKey,
        authTimestampKey,
        authTypeKey,
        authenticationKey,
        baroAccuracyKey,
        basicIdsKey,
        categoryKey,
        classValueKey,
        classificationTypeKey,
        connectionKey,
        descriptionKey,
        descriptionTypeKey,
        directionKey,
        heightKey,
        heightTypeKey,
        horizontalAccuracyKey,
        idKey,
        idTypeKey,
        lastSeenKey,
        latitudeKey,
        locationKey,
        locationTimestampKey,
        longitudeKey,
        macAddressKey,
        messageSourceKey,
        operationDescriptionKey,
        operatorAltitudeGeoKey,
        operatorCoordinatesKey,
        operatorIdClassificationKey,
        operatorIdKey,
        operatorIdTypeKey,
        operatorLatitudeKey,
        operatorLocationTypeKey,
        operatorLongitudeKey,
        registrationIdKey,
        rssiKey,
        selfIdKey,
        serialNumberKey,
        speedAccuracyKey,
        speedHorizontalKey,
        speedVerticalKey,
        statusKey,
        systemKey,
        systemTimestampKey,
        timeAccuracyKey,
        uaTypeKey,
        uasIdKey,
        verticalAccuracyKey;
import 'package:sky_trade/core/utils/converters/date_time_converter.dart';
import 'package:sky_trade/core/utils/converters/duration_converter.dart';
import 'package:sky_trade/core/utils/converters/uint8_list_converter.dart';
import 'package:sky_trade/core/utils/enums/networking.dart'
    show
        RemoteIDMessageSource,
        UnmannedAircraftAuthenticationType,
        UnmannedAircraftCategory,
        UnmannedAircraftClassValue,
        UnmannedAircraftClassificationType,
        UnmannedAircraftHeightType,
        UnmannedAircraftHorizontalAccuracy,
        UnmannedAircraftIDType,
        UnmannedAircraftOperationalStatus,
        UnmannedAircraftOperatorIDType,
        UnmannedAircraftOperatorLocationType,
        UnmannedAircraftSelfIDDescriptionType,
        UnmannedAircraftSpeedAccuracy,
        UnmannedAircraftType,
        UnmannedAircraftVerticalOrBarometerAccuracy;
import 'package:sky_trade/features/u_a_s_receiver/domain/entities/remote_i_d_entity.dart';

part 'remote_i_d_model.g.dart';

@JsonSerializable()
final class RemoteIDModel extends RemoteIDEntity {
  const RemoteIDModel({
    required this.mConnection,
    required this.mBasicIDs,
    required this.mLocation,
    required this.mSystem,
    required this.mSelfID,
    required this.mOperatorID,
    required this.mAuthentication,
  }) : super(
          connection: mConnection,
          basicIDs: mBasicIDs,
          location: mLocation,
          system: mSystem,
          selfID: mSelfID,
          operatorID: mOperatorID,
          authentication: mAuthentication,
        );

  factory RemoteIDModel.fromJson(Map<String, dynamic> json) =>
      _$RemoteIDModelFromJson(json);

  factory RemoteIDModel.fromOpenDroneID(MessageContainer messageContainer) =>
      RemoteIDModel(
        mConnection: ConnectionModel.fromOpenDroneID(messageContainer),
        mBasicIDs: messageContainer.basicIdMessages?.entries
            .map(
              (basicIDMessageEntries) =>
                  BasicIDModel.fromOpenDroneID(basicIDMessageEntries.value),
            )
            .toList(),
        mLocation: switch (messageContainer.locationMessage != null) {
          true => LocationModel.fromOpenDroneID(
              messageContainer.locationMessage!,
            ),
          false => null,
        },
        mSystem: switch (messageContainer.systemDataMessage != null) {
          true => SystemModel.fromOpenDroneID(
              messageContainer.systemDataMessage!,
            ),
          false => null,
        },
        mSelfID: switch (messageContainer.selfIdMessage != null) {
          true => SelfIDModel.fromOpenDroneID(
              messageContainer.selfIdMessage!,
            ),
          false => null,
        },
        mOperatorID: switch (messageContainer.operatorIdMessage != null) {
          true => OperatorIDModel.fromOpenDroneID(
              messageContainer.operatorIdMessage!,
            ),
          false => null,
        },
        mAuthentication: switch (
            messageContainer.authenticationMessage != null) {
          true => AuthenticationModel.fromOpenDroneID(
              messageContainer.authenticationMessage!,
            ),
          false => null,
        },
      );

  @JsonKey(name: connectionKey)
  final ConnectionModel mConnection;

  @JsonKey(name: basicIdsKey)
  final List<BasicIDModel>? mBasicIDs;

  @JsonKey(name: locationKey)
  final LocationModel? mLocation;

  @JsonKey(name: systemKey)
  final SystemModel? mSystem;

  @JsonKey(name: selfIdKey)
  final SelfIDModel? mSelfID;

  @JsonKey(name: operatorIdKey)
  final OperatorIDModel? mOperatorID;

  @JsonKey(name: authenticationKey)
  final AuthenticationModel? mAuthentication;

  Map<String, dynamic> toJson() => _$RemoteIDModelToJson(this);
}

@JsonSerializable()
final class ConnectionModel extends ConnectionEntity {
  const ConnectionModel({
    required this.mMacAddress,
    required this.mLastSeen,
    required this.mMessageSource,
    required this.mRssi,
  }) : super(
          macAddress: mMacAddress,
          lastSeen: mLastSeen,
          messageSource: mMessageSource,
          rssi: mRssi,
        );

  factory ConnectionModel.fromJson(Map<String, dynamic> json) =>
      _$ConnectionModelFromJson(json);

  factory ConnectionModel.fromOpenDroneID(MessageContainer messageContainer) =>
      ConnectionModel(
        mMacAddress: messageContainer.macAddress,
        mLastSeen: messageContainer.lastUpdate,
        mMessageSource: switch (messageContainer.source) {
          MessageSource.BluetoothLegacy =>
            RemoteIDMessageSource.bluetoothLegacy,
          MessageSource.BluetoothLongRange =>
            RemoteIDMessageSource.bluetoothLongRange,
          MessageSource.WifiNan => RemoteIDMessageSource.wifiNan,
          MessageSource.WifiBeacon => RemoteIDMessageSource.wifiBeacon,
          MessageSource.Unknown => RemoteIDMessageSource.unknown,
        },
        mRssi: messageContainer.lastMessageRssi,
      );

  @JsonKey(name: macAddressKey)
  final String mMacAddress;

  @JsonKey(name: lastSeenKey)
  @DateTimeConverter()
  final DateTime mLastSeen;

  @JsonKey(
    name: messageSourceKey,
    defaultValue: RemoteIDMessageSource.unknown,
  )
  final RemoteIDMessageSource mMessageSource;

  @JsonKey(name: rssiKey)
  final int? mRssi;

  Map<String, dynamic> toJson() => _$ConnectionModelToJson(this);
}

@JsonSerializable()
final class BasicIDModel extends BasicIDEntity {
  const BasicIDModel({
    required this.mType,
    required this.mIDType,
    required this.mSerialNumber,
    required this.mRegistrationID,
    required this.mID,
  }) : super(
          type: mType,
          iDType: mIDType,
          serialNumber: mSerialNumber,
          registrationID: mRegistrationID,
          iD: mID,
        );

  factory BasicIDModel.fromJson(Map<String, dynamic> json) =>
      _$BasicIDModelFromJson(json);

  factory BasicIDModel.fromOpenDroneID(BasicIDMessage basicIDMessage) =>
      BasicIDModel(
        mType: switch (basicIDMessage.uaType) {
          UAType.none => UnmannedAircraftType.none,
          UAType.aeroplane => UnmannedAircraftType.aeroplane,
          UAType.helicopterOrMultirotor =>
            UnmannedAircraftType.helicopterOrMultirotor,
          UAType.gyroplane => UnmannedAircraftType.gyroplane,
          UAType.hybridLift => UnmannedAircraftType.hybridLift,
          UAType.ornithopter => UnmannedAircraftType.ornithopter,
          UAType.glider => UnmannedAircraftType.glider,
          UAType.kite => UnmannedAircraftType.kite,
          UAType.freeBalloon => UnmannedAircraftType.freeBalloon,
          UAType.captiveBalloon => UnmannedAircraftType.captiveBalloon,
          UAType.airship => UnmannedAircraftType.airship,
          UAType.freeFallParachute => UnmannedAircraftType.freeFallParachute,
          UAType.rocket => UnmannedAircraftType.rocket,
          UAType.tetheredPoweredAircraft =>
            UnmannedAircraftType.tetheredPoweredAircraft,
          UAType.groundObstacle => UnmannedAircraftType.groundObstacle,
          UAType.other => UnmannedAircraftType.other,
        },
        mIDType: switch (basicIDMessage.uasID.type) {
          IDType.none => UnmannedAircraftIDType.none,
          IDType.serialNumber => UnmannedAircraftIDType.serialNumber,
          IDType.CAARegistrationID => UnmannedAircraftIDType.cAARegistrationID,
          IDType.UTMAssignedID => UnmannedAircraftIDType.uTMAssignedID,
          IDType.specificSessionID => UnmannedAircraftIDType.specificSessionID,
        },
        mSerialNumber: switch (basicIDMessage.uasID) {
          SerialNumber(:final serialNumber) => serialNumber,
          _ => null,
        },
        mRegistrationID: switch (basicIDMessage.uasID) {
          CAARegistrationID(:final registrationID) => registrationID,
          _ => null,
        },
        mID: switch (basicIDMessage.uasID) {
          UTMAssignedID(:final id) => id,
          SpecificSessionID(:final id) => id,
          _ => null,
        },
      );

  @JsonKey(
    name: uaTypeKey,
    defaultValue: UnmannedAircraftType.none,
  )
  final UnmannedAircraftType mType;

  @JsonKey(
    name: idTypeKey,
    defaultValue: UnmannedAircraftIDType.none,
  )
  final UnmannedAircraftIDType mIDType;

  @JsonKey(name: serialNumberKey)
  final String? mSerialNumber;

  @JsonKey(name: registrationIdKey)
  final String? mRegistrationID;

  @JsonKey(name: uasIdKey)
  @NullableUint8ListConverter()
  final Uint8List? mID;

  Map<String, dynamic> toJson() => _$BasicIDModelToJson(this);
}

@JsonSerializable()
final class LocationModel extends LocationEntity {
  const LocationModel({
    required this.mOperationalStatus,
    required this.mHeightType,
    required this.mHorizontalAccuracy,
    required this.mVerticalAccuracy,
    required this.mBarometerAccuracy,
    required this.mSpeedAccuracy,
    required this.mDirection,
    required this.mHorizontalSpeed,
    required this.mVerticalSpeed,
    required this.mLatitude,
    required this.mLongitude,
    required this.mLocation,
    required this.mAltitudePressure,
    required this.mAltitudeGeodetic,
    required this.mHeight,
    required this.mTimestamp,
    required this.mTimestampAccuracy,
  }) : super(
          operationalStatus: mOperationalStatus,
          heightType: mHeightType,
          horizontalAccuracy: mHorizontalAccuracy,
          verticalAccuracy: mVerticalAccuracy,
          barometerAccuracy: mBarometerAccuracy,
          speedAccuracy: mSpeedAccuracy,
          direction: mDirection,
          horizontalSpeed: mHorizontalSpeed,
          verticalSpeed: mVerticalSpeed,
          latitude: mLatitude,
          longitude: mLongitude,
          location: mLocation,
          altitudePressure: mAltitudePressure,
          altitudeGeodetic: mAltitudeGeodetic,
          height: mHeight,
          timestamp: mTimestamp,
          timestampAccuracy: mTimestampAccuracy,
        );

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);

  factory LocationModel.fromOpenDroneID(LocationMessage locationMessage) =>
      LocationModel(
        mOperationalStatus: switch (locationMessage.status) {
          OperationalStatus.none => UnmannedAircraftOperationalStatus.none,
          OperationalStatus.ground => UnmannedAircraftOperationalStatus.ground,
          OperationalStatus.airborne =>
            UnmannedAircraftOperationalStatus.airborne,
          OperationalStatus.emergency =>
            UnmannedAircraftOperationalStatus.emergency,
          OperationalStatus.remoteIDSystemFailure =>
            UnmannedAircraftOperationalStatus.remoteIDSystemFailure,
        },
        mHeightType: switch (locationMessage.heightType) {
          HeightType.aboveTakeoff => UnmannedAircraftHeightType.aboveTakeoff,
          HeightType.aboveGroundLevel =>
            UnmannedAircraftHeightType.aboveGroundLevel,
        },
        mHorizontalAccuracy: switch (locationMessage.horizontalAccuracy) {
          HorizontalAccuracy.unknown =>
            UnmannedAircraftHorizontalAccuracy.unknown,
          HorizontalAccuracy.kilometers_18_52 =>
            UnmannedAircraftHorizontalAccuracy.kilometers_18_52,
          HorizontalAccuracy.kilometers_7_408 =>
            UnmannedAircraftHorizontalAccuracy.kilometers_7_408,
          HorizontalAccuracy.kilometers_3_704 =>
            UnmannedAircraftHorizontalAccuracy.kilometers_3_704,
          HorizontalAccuracy.kilometers_1_852 =>
            UnmannedAircraftHorizontalAccuracy.kilometers_1_852,
          HorizontalAccuracy.meters_926 =>
            UnmannedAircraftHorizontalAccuracy.meters_926,
          HorizontalAccuracy.meters_555_6 =>
            UnmannedAircraftHorizontalAccuracy.meters_555_6,
          HorizontalAccuracy.meters_185_2 =>
            UnmannedAircraftHorizontalAccuracy.meters_185_2,
          HorizontalAccuracy.meters_92_6 =>
            UnmannedAircraftHorizontalAccuracy.meters_92_6,
          HorizontalAccuracy.meters_30 =>
            UnmannedAircraftHorizontalAccuracy.meters_30,
          HorizontalAccuracy.meters_10 =>
            UnmannedAircraftHorizontalAccuracy.meters_10,
          HorizontalAccuracy.meters_3 =>
            UnmannedAircraftHorizontalAccuracy.meters_3,
          HorizontalAccuracy.meters_1 =>
            UnmannedAircraftHorizontalAccuracy.meters_1,
        },
        mVerticalAccuracy: switch (locationMessage.verticalAccuracy) {
          VerticalAccuracy.unknown =>
            UnmannedAircraftVerticalOrBarometerAccuracy.unknown,
          VerticalAccuracy.meters_150 =>
            UnmannedAircraftVerticalOrBarometerAccuracy.meters_150,
          VerticalAccuracy.meters_45 =>
            UnmannedAircraftVerticalOrBarometerAccuracy.meters_45,
          VerticalAccuracy.meters_25 =>
            UnmannedAircraftVerticalOrBarometerAccuracy.meters_25,
          VerticalAccuracy.meters_10 =>
            UnmannedAircraftVerticalOrBarometerAccuracy.meters_10,
          VerticalAccuracy.meters_3 =>
            UnmannedAircraftVerticalOrBarometerAccuracy.meters_3,
          VerticalAccuracy.meters_1 =>
            UnmannedAircraftVerticalOrBarometerAccuracy.meters_1,
        },
        mBarometerAccuracy: switch (locationMessage.baroAltitudeAccuracy) {
          VerticalAccuracy.unknown =>
            UnmannedAircraftVerticalOrBarometerAccuracy.unknown,
          VerticalAccuracy.meters_150 =>
            UnmannedAircraftVerticalOrBarometerAccuracy.meters_150,
          VerticalAccuracy.meters_45 =>
            UnmannedAircraftVerticalOrBarometerAccuracy.meters_45,
          VerticalAccuracy.meters_25 =>
            UnmannedAircraftVerticalOrBarometerAccuracy.meters_25,
          VerticalAccuracy.meters_10 =>
            UnmannedAircraftVerticalOrBarometerAccuracy.meters_10,
          VerticalAccuracy.meters_3 =>
            UnmannedAircraftVerticalOrBarometerAccuracy.meters_3,
          VerticalAccuracy.meters_1 =>
            UnmannedAircraftVerticalOrBarometerAccuracy.meters_1,
        },
        mSpeedAccuracy: switch (locationMessage.speedAccuracy) {
          SpeedAccuracy.unknown => UnmannedAircraftSpeedAccuracy.unknown,
          SpeedAccuracy.meterPerSecond_10 =>
            UnmannedAircraftSpeedAccuracy.meterPerSecond_10,
          SpeedAccuracy.meterPerSecond_3 =>
            UnmannedAircraftSpeedAccuracy.meterPerSecond_3,
          SpeedAccuracy.meterPerSecond_1 =>
            UnmannedAircraftSpeedAccuracy.meterPerSecond_1,
          SpeedAccuracy.meterPerSecond_0_3 =>
            UnmannedAircraftSpeedAccuracy.meterPerSecond_0_3,
        },
        mDirection: locationMessage.direction,
        mHorizontalSpeed: locationMessage.horizontalSpeed,
        mVerticalSpeed: locationMessage.verticalSpeed,
        mLatitude: locationMessage.location?.latitude,
        mLongitude: locationMessage.location?.longitude,
        mLocation: switch (locationMessage.location != null) {
          true => CoordinatesModel.fromOpenDroneID(
              locationMessage.location!,
            ),
          false => null,
        },
        mAltitudePressure: locationMessage.altitudePressure,
        mAltitudeGeodetic: locationMessage.altitudeGeodetic,
        mHeight: locationMessage.height,
        mTimestamp: locationMessage.timestamp,
        mTimestampAccuracy: locationMessage.timestampAccuracy,
      );

  @JsonKey(
    name: statusKey,
    defaultValue: UnmannedAircraftOperationalStatus.none,
  )
  final UnmannedAircraftOperationalStatus mOperationalStatus;

  @JsonKey(
    name: heightTypeKey,
    defaultValue: UnmannedAircraftHeightType.aboveTakeoff,
  )
  final UnmannedAircraftHeightType mHeightType;

  @JsonKey(
    name: horizontalAccuracyKey,
    defaultValue: UnmannedAircraftHorizontalAccuracy.unknown,
  )
  final UnmannedAircraftHorizontalAccuracy mHorizontalAccuracy;

  @JsonKey(
    name: verticalAccuracyKey,
    defaultValue: UnmannedAircraftVerticalOrBarometerAccuracy.unknown,
  )
  final UnmannedAircraftVerticalOrBarometerAccuracy mVerticalAccuracy;

  @JsonKey(
    name: baroAccuracyKey,
    defaultValue: UnmannedAircraftVerticalOrBarometerAccuracy.unknown,
  )
  final UnmannedAircraftVerticalOrBarometerAccuracy mBarometerAccuracy;

  @JsonKey(
    name: speedAccuracyKey,
    defaultValue: UnmannedAircraftSpeedAccuracy.unknown,
  )
  final UnmannedAircraftSpeedAccuracy mSpeedAccuracy;

  @JsonKey(name: directionKey)
  final int? mDirection;

  @JsonKey(name: speedHorizontalKey)
  final double? mHorizontalSpeed;

  @JsonKey(name: speedVerticalKey)
  final double? mVerticalSpeed;

  @JsonKey(name: latitudeKey)
  final double? mLatitude;

  @JsonKey(name: longitudeKey)
  final double? mLongitude;

  @JsonKey(name: locationKey)
  final CoordinatesModel? mLocation;

  @JsonKey(name: altitudePressureKey)
  final double? mAltitudePressure;

  @JsonKey(name: altitudeGeodeticKey)
  final double? mAltitudeGeodetic;

  @JsonKey(name: heightKey)
  final double? mHeight;

  @JsonKey(name: locationTimestampKey)
  @NullableDurationConverter()
  final Duration? mTimestamp;

  @JsonKey(name: timeAccuracyKey)
  @NullableDurationConverter()
  final Duration? mTimestampAccuracy;

  Map<String, dynamic> toJson() => _$LocationModelToJson(this);
}

@JsonSerializable()
final class SystemModel extends SystemEntity {
  const SystemModel({
    required this.mOperatorLocationType,
    required this.mClassificationType,
    required this.mAreaCount,
    required this.mAreaRadius,
    required this.mTimestamp,
    required this.mOperatorLatitude,
    required this.mOperatorLongitude,
    required this.mOperatorLocation,
    required this.mOperatorAltitude,
    required this.mAreaCeiling,
    required this.mAreaFloor,
    required this.mCategory,
    required this.mClassValue,
  }) : super(
          operatorLocationType: mOperatorLocationType,
          classificationType: mClassificationType,
          areaCount: mAreaCount,
          areaRadius: mAreaRadius,
          timestamp: mTimestamp,
          operatorLatitude: mOperatorLatitude,
          operatorLongitude: mOperatorLongitude,
          operatorLocation: mOperatorLocation,
          operatorAltitude: mOperatorAltitude,
          areaCeiling: mAreaCeiling,
          areaFloor: mAreaFloor,
          category: mCategory,
          classValue: mClassValue,
        );

  factory SystemModel.fromJson(Map<String, dynamic> json) =>
      _$SystemModelFromJson(json);

  factory SystemModel.fromOpenDroneID(SystemMessage systemMessage) =>
      SystemModel(
        mOperatorLocationType: switch (systemMessage.operatorLocationType) {
          OperatorLocationType.takeOff =>
            UnmannedAircraftOperatorLocationType.takeoff,
          OperatorLocationType.dynamic =>
            UnmannedAircraftOperatorLocationType.dynamic,
          OperatorLocationType.fixed =>
            UnmannedAircraftOperatorLocationType.fixed,
        },
        mClassificationType: switch (systemMessage.uaClassification) {
          UAClassificationUndeclared() =>
            UnmannedAircraftClassificationType.undeclared,
          UAClassificationEurope() =>
            UnmannedAircraftClassificationType.europeanUnion,
        },
        mAreaCount: systemMessage.areaCount,
        mAreaRadius: systemMessage.areaRadius,
        mTimestamp: systemMessage.timestamp,
        mOperatorLatitude: systemMessage.operatorLocation?.latitude,
        mOperatorLongitude: systemMessage.operatorLocation?.longitude,
        mOperatorLocation: switch (systemMessage.operatorLocation != null) {
          true => CoordinatesModel.fromOpenDroneID(
              systemMessage.operatorLocation!,
            ),
          false => null,
        },
        mOperatorAltitude: systemMessage.operatorAltitude,
        mAreaCeiling: systemMessage.areaCeiling,
        mAreaFloor: systemMessage.areaFloor,
        mCategory: switch (systemMessage.uaClassification) {
          UAClassificationEurope(
            :final uaCategoryEurope,
          ) =>
            switch (uaCategoryEurope) {
              UACategoryEurope.undefined => UnmannedAircraftCategory.undefined,
              UACategoryEurope.EUOpen =>
                UnmannedAircraftCategory.europeanUnionOpen,
              UACategoryEurope.EUSpecific =>
                UnmannedAircraftCategory.europeanUnionSpecific,
              UACategoryEurope.EUCertified =>
                UnmannedAircraftCategory.europeanUnionCertified,
            },
          _ => UnmannedAircraftCategory.undefined,
        },
        mClassValue: switch (systemMessage.uaClassification) {
          UAClassificationEurope(
            :final uaClassEurope,
          ) =>
            switch (uaClassEurope) {
              UAClassEurope.undefined => UnmannedAircraftClassValue.undefined,
              UAClassEurope.EUClass_0 =>
                UnmannedAircraftClassValue.europeanUnionClass0,
              UAClassEurope.EUClass_1 =>
                UnmannedAircraftClassValue.europeanUnionClass1,
              UAClassEurope.EUClass_2 =>
                UnmannedAircraftClassValue.europeanUnionClass2,
              UAClassEurope.EUClass_3 =>
                UnmannedAircraftClassValue.europeanUnionClass3,
              UAClassEurope.EUClass_4 =>
                UnmannedAircraftClassValue.europeanUnionClass4,
              UAClassEurope.EUClass_5 =>
                UnmannedAircraftClassValue.europeanUnionClass5,
              UAClassEurope.EUClass_6 =>
                UnmannedAircraftClassValue.europeanUnionClass6,
            },
          _ => UnmannedAircraftClassValue.undefined,
        },
      );

  @JsonKey(
    name: operatorLocationTypeKey,
    defaultValue: UnmannedAircraftOperatorLocationType.invalid,
  )
  final UnmannedAircraftOperatorLocationType mOperatorLocationType;

  @JsonKey(
    name: classificationTypeKey,
    defaultValue: UnmannedAircraftClassificationType.undeclared,
  )
  final UnmannedAircraftClassificationType mClassificationType;

  @JsonKey(
    name: categoryKey,
    defaultValue: UnmannedAircraftCategory.undefined,
  )
  final UnmannedAircraftCategory mCategory;

  @JsonKey(
    name: classValueKey,
    defaultValue: UnmannedAircraftClassValue.undefined,
  )
  final UnmannedAircraftClassValue mClassValue;

  @JsonKey(name: areaCountKey)
  final int mAreaCount;

  @JsonKey(name: areaRadiusKey)
  final int mAreaRadius;

  @JsonKey(name: systemTimestampKey)
  @DateTimeConverter()
  final DateTime mTimestamp;

  @JsonKey(name: operatorLatitudeKey)
  final double? mOperatorLatitude;

  @JsonKey(name: operatorLongitudeKey)
  final double? mOperatorLongitude;

  @JsonKey(name: operatorCoordinatesKey)
  final CoordinatesModel? mOperatorLocation;

  @JsonKey(name: operatorAltitudeGeoKey)
  final double? mOperatorAltitude;

  @JsonKey(name: areaCeilingKey)
  final double? mAreaCeiling;

  @JsonKey(name: areaFloorKey)
  final double? mAreaFloor;

  Map<String, dynamic> toJson() => _$SystemModelToJson(this);
}

@JsonSerializable()
final class CoordinatesModel extends CoordinatesEntity {
  const CoordinatesModel({
    required this.mLatitude,
    required this.mLongitude,
  }) : super(
          latitude: mLatitude,
          longitude: mLongitude,
        );

  factory CoordinatesModel.fromJson(Map<String, dynamic> json) =>
      _$CoordinatesModelFromJson(json);

  factory CoordinatesModel.fromOpenDroneID(
    Location location,
  ) =>
      CoordinatesModel(
        mLatitude: location.latitude,
        mLongitude: location.longitude,
      );

  @JsonKey(name: latitudeKey)
  final double mLatitude;

  @JsonKey(name: longitudeKey)
  final double mLongitude;

  Map<String, dynamic> toJson() => _$CoordinatesModelToJson(this);
}

@JsonSerializable()
final class SelfIDModel extends SelfIDEntity {
  const SelfIDModel({
    required this.mDescriptionType,
    required this.mOperationDescription,
    required this.mDescription,
  }) : super(
          descriptionType: mDescriptionType,
          operationDescription: mOperationDescription,
          description: mDescription,
        );

  factory SelfIDModel.fromJson(Map<String, dynamic> json) =>
      _$SelfIDModelFromJson(json);

  factory SelfIDModel.fromOpenDroneID(SelfIDMessage selfIDMessage) =>
      SelfIDModel(
        mDescriptionType: switch (selfIDMessage.descriptionType) {
          DescriptionTypeText() => UnmannedAircraftSelfIDDescriptionType.text,
          DescriptionTypeEmergency() =>
            UnmannedAircraftSelfIDDescriptionType.emergency,
          DescriptionTypeExtendedStatus() =>
            UnmannedAircraftSelfIDDescriptionType.extendedStatus,
          DescriptionTypePrivate() =>
            UnmannedAircraftSelfIDDescriptionType.private,
        },
        mOperationDescription: null,
        mDescription: selfIDMessage.description,
      );

  @JsonKey(
    name: descriptionTypeKey,
    defaultValue: UnmannedAircraftSelfIDDescriptionType.invalid,
  )
  final UnmannedAircraftSelfIDDescriptionType mDescriptionType;

  @JsonKey(name: operationDescriptionKey)
  @NullableUint8ListConverter()
  final Uint8List? mOperationDescription;

  @JsonKey(name: descriptionKey)
  final String? mDescription;

  Map<String, dynamic> toJson() => _$SelfIDModelToJson(this);
}

@JsonSerializable()
final class OperatorIDModel extends OperatorIDEntity {
  const OperatorIDModel({
    required this.mOperatorIDType,
    required this.mOperatorIDClassification,
    required this.mOperatorID,
    required this.mID,
  }) : super(
          operatorIDType: mOperatorIDType,
          operatorIDClassification: mOperatorIDClassification,
          operatorID: mOperatorID,
          iD: mID,
        );

  factory OperatorIDModel.fromJson(Map<String, dynamic> json) =>
      _$OperatorIDModelFromJson(json);

  factory OperatorIDModel.fromOpenDroneID(
    OperatorIDMessage operatorIDMessage,
  ) =>
      OperatorIDModel(
        mOperatorIDType: null,
        mOperatorIDClassification: switch (operatorIDMessage.operatorIDType) {
          OperatorIDTypeOperatorID() =>
            UnmannedAircraftOperatorIDType.operatorID,
          OperatorIDTypePrivate() => UnmannedAircraftOperatorIDType.private,
        },
        mOperatorID: null,
        mID: operatorIDMessage.operatorID,
      );

  @JsonKey(name: operatorIdTypeKey)
  final int? mOperatorIDType;

  @JsonKey(name: operatorIdClassificationKey)
  final UnmannedAircraftOperatorIDType? mOperatorIDClassification;

  @JsonKey(name: operatorIdKey)
  @NullableUint8ListConverter()
  final Uint8List? mOperatorID;

  @JsonKey(name: idKey)
  final String? mID;

  Map<String, dynamic> toJson() => _$OperatorIDModelToJson(this);
}

@JsonSerializable()
final class AuthenticationModel extends AuthenticationEntity {
  const AuthenticationModel({
    required this.mAuthenticationType,
    required this.mAuthenticationPageNumber,
    required this.mAuthenticationData,
    required this.mLastAuthenticationPageIndex,
    required this.mAuthenticationLength,
    required this.mTimestamp,
  }) : super(
          authenticationType: mAuthenticationType,
          authenticationPageNumber: mAuthenticationPageNumber,
          authenticationData: mAuthenticationData,
          lastAuthenticationPageIndex: mLastAuthenticationPageIndex,
          authenticationLength: mAuthenticationLength,
          timestamp: mTimestamp,
        );

  factory AuthenticationModel.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationModelFromJson(json);

  factory AuthenticationModel.fromOpenDroneID(AuthMessage authMessage) =>
      AuthenticationModel(
        mAuthenticationType: switch (authMessage.authType) {
          AuthType.none => UnmannedAircraftAuthenticationType.none,
          AuthType.UASIDSignature =>
          UnmannedAircraftAuthenticationType.uASIDSignature,
          AuthType.operatorIDSignature =>
          UnmannedAircraftAuthenticationType.operatorIDSignature,
          AuthType.messageSetSignature =>
          UnmannedAircraftAuthenticationType.messageSetSignature,
          AuthType.networkRemoteID =>
          UnmannedAircraftAuthenticationType.networkRemoteID,
          AuthType.specificAuthentication =>
          UnmannedAircraftAuthenticationType.specificAuthentication,
          AuthType.privateUse0xA =>
          UnmannedAircraftAuthenticationType.privateUse0xA,
          AuthType.privateUse0xB =>
          UnmannedAircraftAuthenticationType.privateUse0xB,
          AuthType.privateUse0xC =>
          UnmannedAircraftAuthenticationType.privateUse0xC,
          AuthType.privateUse0xD =>
          UnmannedAircraftAuthenticationType.privateUse0xD,
          AuthType.privateUse0xE =>
          UnmannedAircraftAuthenticationType.privateUse0xE,
          AuthType.privateUse0xF =>
          UnmannedAircraftAuthenticationType.privateUse0xF,
        },
        mAuthenticationPageNumber: authMessage.authPageNumber,
        mAuthenticationData: authMessage.authData.authData,
        mLastAuthenticationPageIndex: authMessage.lastAuthPageIndex,
        mAuthenticationLength: authMessage.authLength,
        mTimestamp: authMessage.timestamp,
      );

  @JsonKey(
    name: authTypeKey,
    defaultValue: UnmannedAircraftAuthenticationType.none,
  )
  final UnmannedAircraftAuthenticationType mAuthenticationType;

  @JsonKey(name: authDataPageKey)
  final int mAuthenticationPageNumber;

  @JsonKey(name: authDataKey)
  @Uint8ListConverter()
  final Uint8List mAuthenticationData;

  @JsonKey(name: authLastPageIndexKey)
  final int? mLastAuthenticationPageIndex;

  @JsonKey(name: authLengthKey)
  final int? mAuthenticationLength;

  @JsonKey(name: authTimestampKey)
  @NullableDateTimeConverter()
  final DateTime? mTimestamp;

  Map<String, dynamic> toJson() => _$AuthenticationModelToJson(this);
}
