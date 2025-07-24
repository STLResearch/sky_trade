import 'dart:typed_data' show Uint8List;

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
        deviceKey,
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
        rawDataKey,
        registrationIdKey,
        remoteIDsKey,
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
import 'package:sky_trade/core/utils/converters/date_time_converter.dart'
    show DateTimeConverter, NullableDateTimeConverter;
import 'package:sky_trade/core/utils/converters/duration_converter.dart';
import 'package:sky_trade/core/utils/converters/uint8_list_converter.dart'
    show NullableUint8ListConverter, Uint8ListConverter;
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
import 'package:sky_trade/features/remote_i_d_receiver/domain/entities/remote_i_d_entity.dart';

part 'remote_i_d_model.g.dart';

@JsonSerializable(explicitToJson: true)
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

@JsonSerializable(explicitToJson: true)
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

@JsonSerializable(explicitToJson: true)
final class BasicIDModel extends BasicIDEntity {
  const BasicIDModel({
    required this.mType,
    required this.mIDType,
    required this.mSerialNumber,
    required this.mRegistrationID,
    required this.mID,
    required this.mRawData,
  }) : super(
          type: mType,
          iDType: mIDType,
          serialNumber: mSerialNumber,
          registrationID: mRegistrationID,
          iD: mID,
          rawData: mRawData,
        );

  factory BasicIDModel.fromJson(Map<String, dynamic> json) =>
      _$BasicIDModelFromJson(json);

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

  @JsonKey(name: rawDataKey)
  @NullableUint8ListConverter()
  final Uint8List? mRawData;

  Map<String, dynamic> toJson() => _$BasicIDModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
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
    required this.mRawData,
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
          rawData: mRawData,
        );

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);

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

  @JsonKey(name: rawDataKey)
  @NullableUint8ListConverter()
  final Uint8List? mRawData;

  Map<String, dynamic> toJson() => _$LocationModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
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
    required this.mRawData,
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
          rawData: mRawData,
        );

  factory SystemModel.fromJson(Map<String, dynamic> json) =>
      _$SystemModelFromJson(json);

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

  @JsonKey(name: rawDataKey)
  @NullableUint8ListConverter()
  final Uint8List? mRawData;

  Map<String, dynamic> toJson() => _$SystemModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
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

  @JsonKey(name: latitudeKey)
  final double mLatitude;

  @JsonKey(name: longitudeKey)
  final double mLongitude;

  Map<String, dynamic> toJson() => _$CoordinatesModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
final class SelfIDModel extends SelfIDEntity {
  const SelfIDModel({
    required this.mDescriptionType,
    required this.mOperationDescription,
    required this.mDescription,
    required this.mRawData,
  }) : super(
          descriptionType: mDescriptionType,
          operationDescription: mOperationDescription,
          description: mDescription,
          rawData: mRawData,
        );

  factory SelfIDModel.fromJson(Map<String, dynamic> json) =>
      _$SelfIDModelFromJson(json);

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

  @JsonKey(name: rawDataKey)
  @NullableUint8ListConverter()
  final Uint8List? mRawData;

  Map<String, dynamic> toJson() => _$SelfIDModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
final class OperatorIDModel extends OperatorIDEntity {
  const OperatorIDModel({
    required this.mOperatorIDType,
    required this.mOperatorIDClassification,
    required this.mOperatorID,
    required this.mID,
    required this.mRawData,
  }) : super(
          operatorIDType: mOperatorIDType,
          operatorIDClassification: mOperatorIDClassification,
          operatorID: mOperatorID,
          iD: mID,
          rawData: mRawData,
        );

  factory OperatorIDModel.fromJson(Map<String, dynamic> json) =>
      _$OperatorIDModelFromJson(json);

  @JsonKey(name: operatorIdTypeKey)
  final int? mOperatorIDType;

  @JsonKey(name: operatorIdClassificationKey)
  final UnmannedAircraftOperatorIDType? mOperatorIDClassification;

  @JsonKey(name: operatorIdKey)
  @NullableUint8ListConverter()
  final Uint8List? mOperatorID;

  @JsonKey(name: idKey)
  final String? mID;

  @JsonKey(name: rawDataKey)
  @NullableUint8ListConverter()
  final Uint8List? mRawData;

  Map<String, dynamic> toJson() => _$OperatorIDModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
final class AuthenticationModel extends AuthenticationEntity {
  const AuthenticationModel({
    required this.mAuthenticationType,
    required this.mAuthenticationPageNumber,
    required this.mAuthenticationData,
    required this.mLastAuthenticationPageIndex,
    required this.mAuthenticationLength,
    required this.mTimestamp,
    required this.mRawData,
  }) : super(
          authenticationType: mAuthenticationType,
          authenticationPageNumber: mAuthenticationPageNumber,
          authenticationData: mAuthenticationData,
          lastAuthenticationPageIndex: mLastAuthenticationPageIndex,
          authenticationLength: mAuthenticationLength,
          timestamp: mTimestamp,
          rawData: mRawData,
        );

  factory AuthenticationModel.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationModelFromJson(json);

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

  @JsonKey(name: rawDataKey)
  @NullableUint8ListConverter()
  final Uint8List? mRawData;

  Map<String, dynamic> toJson() => _$AuthenticationModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
final class GeolocatedRemoteIDCollectionModel
    extends GeolocatedRemoteIDCollectionEntity {
  const GeolocatedRemoteIDCollectionModel({
    required this.mRemoteIDs,
    required this.mDevice,
  }) : super(
          remoteIDs: mRemoteIDs,
          device: mDevice,
        );

  factory GeolocatedRemoteIDCollectionModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$GeolocatedRemoteIDCollectionModelFromJson(json);

  @JsonKey(name: remoteIDsKey)
  final List<RemoteIDModel> mRemoteIDs;

  @JsonKey(name: deviceKey)
  final DeviceModel? mDevice;

  Map<String, dynamic> toJson() =>
      _$GeolocatedRemoteIDCollectionModelToJson(this);
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
