import 'package:json_annotation/json_annotation.dart';
import 'package:sky_ways/core/resources/strings/networking.dart';
import 'package:sky_ways/features/u_a_s_activity/domain/entities/u_a_s_entity.dart';

part 'u_a_s_model.g.dart';

@JsonSerializable()
final class UASModel extends UASEntity {
  const UASModel({
    required this.mId,
    required this.mRemoteData,
    required this.mCreatedAt,
    required this.mUpdateAt,
  }) : super(
          id: mId,
          remoteData: mRemoteData,
          createdAt: mCreatedAt,
          updateAt: mUpdateAt,
        );

  factory UASModel.fromJson(Map<String, dynamic> json) =>
      _$UASModelFromJson(json);

  @JsonKey(name: idKey)
  final String mId;

  @JsonKey(name: remoteDataKey)
  final RemoteDataModel mRemoteData;

  @JsonKey(name: createdAtKey)
  final String mCreatedAt;

  @JsonKey(name: updateAtKey)
  final String mUpdateAt;

  Map<String, dynamic> toJson() => _$UASModelToJson(this);
}

@JsonSerializable()
final class RemoteDataModel extends RemoteDataEntity {
  const RemoteDataModel({
    required this.mSelfId,
    required this.mSystem,
    required this.mLocation,
    required this.mConnection,
    required this.mMacAddress,
    required this.mOperatorId,
    required this.mIdentification1,
    required this.mIdentification2,
  }) : super(
          selfId: mSelfId,
          system: mSystem,
          location: mLocation,
          connection: mConnection,
          macAddress: mMacAddress,
          operatorId: mOperatorId,
          identification1: mIdentification1,
          identification2: mIdentification2,
        );

  factory RemoteDataModel.fromJson(Map<String, dynamic> json) =>
      _$RemoteDataModelFromJson(json);

  @JsonKey(name: selfIdKey)
  final SelfIdModel mSelfId;

  @JsonKey(name: systemKey)
  final SystemModel mSystem;

  @JsonKey(name: locationKey)
  final LocationModel mLocation;

  @JsonKey(name: connectionKey)
  final ConnectionModel mConnection;

  @JsonKey(name: macAddressKey)
  final int mMacAddress;

  @JsonKey(name: operatorIdKey)
  final OperatorIdModel mOperatorId;

  @JsonKey(name: identification1Key)
  final IdentificationModel mIdentification1;

  @JsonKey(name: identification2Key)
  final IdentificationModel mIdentification2;

  Map<String, dynamic> toJson() => _$RemoteDataModelToJson(this);
}

@JsonSerializable()
final class SelfIdModel extends SelfIdEntity {
  const SelfIdModel({
    required this.mDescriptionType,
    required this.mOperationDescription,
  }) : super(
          descriptionType: mDescriptionType,
          operationDescription: mOperationDescription,
        );

  factory SelfIdModel.fromJson(Map<String, dynamic> json) =>
      _$SelfIdModelFromJson(json);

  @JsonKey(name: descriptionTypeKey)
  final String mDescriptionType;

  @JsonKey(name: operationDescriptionKey)
  final List<int> mOperationDescription;

  Map<String, dynamic> toJson() => _$SelfIdModelToJson(this);
}

@JsonSerializable()
final class SystemModel extends SystemEntity {
  const SystemModel({
    required this.mCategory,
    required this.mAreaCount,
    required this.mAreaFloor,
    required this.mAreaRadius,
    required this.mClassValue,
    required this.mAreaCeiling,
    required this.mSystemTimestamp,
    required this.mOperatorLatitude,
    required this.mOperatorLongitude,
    required this.mClassificationType,
    required this.mOperatorAltitudeGeo,
    required this.mOperatorLocationType,
  }) : super(
          category: mCategory,
          areaCount: mAreaCount,
          areaFloor: mAreaFloor,
          areaRadius: mAreaRadius,
          classValue: mClassValue,
          areaCeiling: mAreaCeiling,
          systemTimestamp: mSystemTimestamp,
          operatorLatitude: mOperatorLatitude,
          operatorLongitude: mOperatorLongitude,
          classificationType: mClassificationType,
          operatorAltitudeGeo: mOperatorAltitudeGeo,
          operatorLocationType: mOperatorLocationType,
        );

  factory SystemModel.fromJson(Map<String, dynamic> json) =>
      _$SystemModelFromJson(json);

  @JsonKey(name: categoryKey)
  final String mCategory;

  @JsonKey(name: areaCountKey)
  final int mAreaCount;

  @JsonKey(name: areaFloorKey)
  final int mAreaFloor;

  @JsonKey(name: areaRadiusKey)
  final int mAreaRadius;

  @JsonKey(name: classValueKey)
  final String mClassValue;

  @JsonKey(name: areaCeilingKey)
  final int mAreaCeiling;

  @JsonKey(name: systemTimestampKey)
  final int mSystemTimestamp;

  @JsonKey(name: operatorLatitudeKey)
  final double mOperatorLatitude;

  @JsonKey(name: operatorLongitudeKey)
  final double mOperatorLongitude;

  @JsonKey(name: classificationTypeKey)
  final String mClassificationType;

  @JsonKey(name: operatorAltitudeGeoKey)
  final double mOperatorAltitudeGeo;

  @JsonKey(name: operatorLocationTypeKey)
  final String mOperatorLocationType;

  Map<String, dynamic> toJson() => _$SystemModelToJson(this);
}

@JsonSerializable()
final class LocationModel extends LocationEntity {
  const LocationModel({
    required this.mHeight,
    required this.mStatus,
    required this.mDistance,
    required this.mLatitude,
    required this.mDirection,
    required this.mLongitude,
    required this.mHeightType,
    required this.mBaroAccuracy,
    required this.mTimeAccuracy,
    required this.mSpeedAccuracy,
    required this.mSpeedVertical,
    required this.mSpeedHorizontal,
    required this.mAltitudeGeodetic,
    required this.mAltitudePressure,
    required this.mVerticalAccuracy,
    required this.mLocationTimestamp,
    required this.mHorizontalAccuracy,
  }) : super(
          height: mHeight,
          status: mStatus,
          distance: mDistance,
          latitude: mLatitude,
          direction: mDirection,
          longitude: mLongitude,
          heightType: mHeightType,
          baroAccuracy: mBaroAccuracy,
          timeAccuracy: mTimeAccuracy,
          speedAccuracy: mSpeedAccuracy,
          speedVertical: mSpeedVertical,
          speedHorizontal: mSpeedHorizontal,
          altitudeGeodetic: mAltitudeGeodetic,
          altitudePressure: mAltitudePressure,
          verticalAccuracy: mVerticalAccuracy,
          locationTimestamp: mLocationTimestamp,
          horizontalAccuracy: mHorizontalAccuracy,
        );

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);

  @JsonKey(name: heightKey)
  final int mHeight;

  @JsonKey(name: statusKey)
  final String mStatus;

  @JsonKey(name: distanceKey)
  final int mDistance;

  @JsonKey(name: latitudeKey)
  final double mLatitude;

  @JsonKey(name: directionKey)
  final int mDirection;

  @JsonKey(name: longitudeKey)
  final double mLongitude;

  @JsonKey(name: heightTypeKey)
  final String mHeightType;

  @JsonKey(name: baroAccuracyKey)
  final String mBaroAccuracy;

  @JsonKey(name: timeAccuracyKey)
  final double mTimeAccuracy;

  @JsonKey(name: speedAccuracyKey)
  final String mSpeedAccuracy;

  @JsonKey(name: speedVerticalKey)
  final int mSpeedVertical;

  @JsonKey(name: speedHorizontalKey)
  final int mSpeedHorizontal;

  @JsonKey(name: altitudeGeodeticKey)
  final int mAltitudeGeodetic;

  @JsonKey(name: altitudePressureKey)
  final int mAltitudePressure;

  @JsonKey(name: verticalAccuracyKey)
  final String mVerticalAccuracy;

  @JsonKey(name: locationTimestampKey)
  final int mLocationTimestamp;

  @JsonKey(name: horizontalAccuracyKey)
  final String mHorizontalAccuracy;

  Map<String, dynamic> toJson() => _$LocationModelToJson(this);
}

@JsonSerializable()
final class ConnectionModel extends ConnectionEntity {
  const ConnectionModel({
    required this.mRssi,
    required this.mLastSeen,
    required this.mMsgDelta,
    required this.mFirstSeen,
    required this.mMacAddress,
    required this.mTransportType,
  }) : super(
          rssi: mRssi,
          lastSeen: mLastSeen,
          msgDelta: mMsgDelta,
          firstSeen: mFirstSeen,
          macAddress: mMacAddress,
          transportType: mTransportType,
        );

  factory ConnectionModel.fromJson(Map<String, dynamic> json) =>
      _$ConnectionModelFromJson(json);

  @JsonKey(name: rssiKey)
  final int mRssi;

  @JsonKey(name: lastSeenKey)
  final int mLastSeen;

  @JsonKey(name: msgDeltaKey)
  final int mMsgDelta;

  @JsonKey(name: firstSeenKey)
  final int mFirstSeen;

  @JsonKey(name: macAddressKey)
  final String mMacAddress;

  @JsonKey(name: transportTypeKey)
  final String mTransportType;

  Map<String, dynamic> toJson() => _$ConnectionModelToJson(this);
}

@JsonSerializable()
final class OperatorIdModel extends OperatorIdEntity {
  const OperatorIdModel({
    required this.mOperatorId,
  }) : super(
          operatorId: mOperatorId,
        );

  factory OperatorIdModel.fromJson(Map<String, dynamic> json) =>
      _$OperatorIdModelFromJson(json);

  @JsonKey(name: operatorIdKey)
  final List<int> mOperatorId;

  Map<String, dynamic> toJson() => _$OperatorIdModelToJson(this);
}

@JsonSerializable()
final class IdentificationModel extends IdentificationEntity {
  const IdentificationModel({
    required this.mUasId,
    required this.mIdType,
    required this.mUaType,
  }) : super(
          uasId: mUasId,
          idType: mIdType,
          uaType: mUaType,
        );

  factory IdentificationModel.fromJson(Map<String, dynamic> json) =>
      _$IdentificationModelFromJson(json);

  @JsonKey(name: uasIdKey)
  final List<int> mUasId;

  @JsonKey(name: idTypeKey)
  final String mIdType;

  @JsonKey(name: uaTypeKey)
  final String mUaType;

  Map<String, dynamic> toJson() => _$IdentificationModelToJson(this);
}
