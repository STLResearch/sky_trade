import 'package:json_annotation/json_annotation.dart';
import 'package:sky_trade/core/resources/strings/networking.dart'
    show
        addressKey,
        ansKey,
        areaPolygonKey,
        assessorParcelNumberKey,
        createdAtKey,
        externalBlockchainAddressKey,
        fromTimeKey,
        fullTimezoneKey,
        hasChargingStationKey,
        hasLandingDeckKey,
        hasStorageHubKey,
        hasZoningPermissionKey,
        idKey,
        imagesKey,
        isActiveKey,
        isAvailableKey,
        isBoostedAreaKey,
        isCurrentlyInAuctionKey,
        isFixedTransitFeeKey,
        isPropertyRewardClaimedKey,
        isRentableAirspaceKey,
        isSoftDeleteKey,
        latitudeKey,
        layersKey,
        longitudeKey,
        messageKey,
        noFlyZoneKey,
        orderPhotoforGeneratedMapKey,
        ownerIdKey,
        priceKey,
        propertyIdKey,
        propertyStatusIdKey,
        propertyStatusKey,
        statusKey,
        timezoneKey,
        titleKey,
        toTimeKey,
        tokenIdKey,
        tokenValueKey,
        transitFeeKey,
        typeKey,
        updateAtKey,
        vertexesKey,
        weekDayIdKey,
        weekDayRangesKey;
import 'package:sky_trade/core/utils/converters/date_time_converter.dart';
import 'package:sky_trade/features/rent_air_rights/domain/entities/rent_air_rights_entity.dart'
    show
        AnsEntity,
        ExecuteMintRentalTokenEntity,
        LayersEntity,
        PropertyEntity,
        PropertyStatusEntity,
        VertexEntity,
        WeekDayRangeEntity;

part 'rent_air_rights_model.g.dart';

@JsonSerializable()
final class PropertyModel extends PropertyEntity {
  const PropertyModel({
    required this.mId,
    required this.mCreatedAt,
    required this.mUpdatedAt,
    required this.mTitle,
    required this.mTransitFee,
    required this.mAddress,
    required this.mTimezone,
    required this.mFullTimezone,
    required this.mHasLandingDeck,
    required this.mHasChargingStation,
    required this.mHasStorageHub,
    required this.mIsFixedTransitFee,
    required this.mIsRentableAirspace,
    required this.mOwnerId,
    required this.mNoFlyZone,
    required this.mIsBoostedArea,
    required this.mLatitude,
    required this.mLongitude,
    required this.mPropertyStatusId,
    required this.mIsActive,
    required this.mIsPropertyRewardClaimed,
    required this.mIsSoftDelete,
    required this.mHasZoningPermission,
    required this.mOrderPhotoForGeneratedMap,
    required this.mAssessorParcelNumber,
    required this.mExternalBlockchainAddress,
    required this.mAreaPolygon,
    required this.mTokenValue,
    required this.mLayers,
    required this.mPropertyStatus,
    required this.mVertexes,
    required this.mWeekDayRanges,
    required this.mImages,
    required this.mPrice,
  }) : super(
          id: mId,
          createdAt: mCreatedAt,
          updatedAt: mUpdatedAt,
          title: mTitle,
          transitFee: mTransitFee,
          address: mAddress,
          timezone: mTimezone,
          fullTimezone: mFullTimezone,
          hasLandingDeck: mHasLandingDeck,
          hasChargingStation: mHasChargingStation,
          hasStorageHub: mHasStorageHub,
          isFixedTransitFee: mIsFixedTransitFee,
          isRentableAirspace: mIsRentableAirspace,
          ownerId: mOwnerId,
          noFlyZone: mNoFlyZone,
          isBoostedArea: mIsBoostedArea,
          latitude: mLatitude,
          longitude: mLongitude,
          propertyStatusId: mPropertyStatusId,
          isActive: mIsActive,
          isPropertyRewardClaimed: mIsPropertyRewardClaimed,
          isSoftDelete: mIsSoftDelete,
          hasZoningPermission: mHasZoningPermission,
          orderPhotoForGeneratedMap: mOrderPhotoForGeneratedMap,
          assessorParcelNumber: mAssessorParcelNumber,
          externalBlockchainAddress: mExternalBlockchainAddress,
          areaPolygon: mAreaPolygon,
          tokenValue: mTokenValue,
          layers: mLayers,
          propertyStatus: mPropertyStatus,
          vertexes: mVertexes,
          weekDayRanges: mWeekDayRanges,
          images: mImages,
          price: mPrice,
        );

  factory PropertyModel.fromJson(Map<String, dynamic> json) =>
      _$PropertyModelFromJson(json);

  @JsonKey(name: idKey)
  final int mId;

  @JsonKey(name: createdAtKey)
  @StringDateTimeConverter()
  final DateTime mCreatedAt;

  @JsonKey(name: updateAtKey)
  @StringDateTimeConverter()
  final DateTime mUpdatedAt;

  @JsonKey(name: titleKey)
  final String mTitle;

  @JsonKey(name: transitFeeKey)
  final String mTransitFee;

  @JsonKey(name: addressKey)
  final String mAddress;

  @JsonKey(name: timezoneKey)
  final String mTimezone;

  @JsonKey(name: fullTimezoneKey)
  final String? mFullTimezone;

  @JsonKey(name: hasLandingDeckKey)
  final bool mHasLandingDeck;

  @JsonKey(name: hasChargingStationKey)
  final bool mHasChargingStation;

  @JsonKey(name: hasStorageHubKey)
  final bool mHasStorageHub;

  @JsonKey(name: isFixedTransitFeeKey)
  final bool mIsFixedTransitFee;

  @JsonKey(name: isRentableAirspaceKey)
  final bool mIsRentableAirspace;

  @JsonKey(name: ownerIdKey)
  final int mOwnerId;

  @JsonKey(name: noFlyZoneKey)
  final bool mNoFlyZone;

  @JsonKey(name: isBoostedAreaKey)
  final bool mIsBoostedArea;

  @JsonKey(name: latitudeKey)
  final double mLatitude;

  @JsonKey(name: longitudeKey)
  final double mLongitude;

  @JsonKey(name: propertyStatusIdKey)
  final int mPropertyStatusId;

  @JsonKey(name: isActiveKey)
  final bool mIsActive;

  @JsonKey(name: isPropertyRewardClaimedKey)
  final bool mIsPropertyRewardClaimed;

  @JsonKey(name: isSoftDeleteKey)
  final bool mIsSoftDelete;

  @JsonKey(name: hasZoningPermissionKey)
  final bool? mHasZoningPermission;

  @JsonKey(name: orderPhotoforGeneratedMapKey)
  final bool mOrderPhotoForGeneratedMap;

  @JsonKey(name: assessorParcelNumberKey)
  final String mAssessorParcelNumber;

  @JsonKey(name: externalBlockchainAddressKey)
  final String? mExternalBlockchainAddress;

  @JsonKey(name: areaPolygonKey)
  final String? mAreaPolygon;

  @JsonKey(name: tokenValueKey)
  final double? mTokenValue;

  @JsonKey(name: layersKey)
  final List<LayersModel> mLayers;

  @JsonKey(name: propertyStatusKey)
  final PropertyStatusModel mPropertyStatus;

  @JsonKey(name: vertexesKey)
  final List<VertexModel> mVertexes;

  @JsonKey(name: weekDayRangesKey)
  final List<WeekDayRangeModel> mWeekDayRanges;

  @JsonKey(name: imagesKey)
  final List<String> mImages;

  @JsonKey(name: priceKey)
  final double mPrice;

  Map<String, dynamic> toJson() => _$PropertyModelToJson(this);
}

@JsonSerializable()
final class LayersModel extends LayersEntity {
  const LayersModel({
    required this.mLayerId,
    required this.mCreatedAt,
    required this.mUpdateAt,
    required this.mTokenId,
    required this.mPropertyId,
    required this.mIsCurrentlyInAuction,
  }) : super(
          layerId: mLayerId,
          createdAt: mCreatedAt,
          updateAt: mUpdateAt,
          tokenId: mTokenId,
          propertyId: mPropertyId,
          isCurrentlyInAuction: mIsCurrentlyInAuction,
        );

  factory LayersModel.fromJson(Map<String, dynamic> json) =>
      _$LayersModelFromJson(json);

  @JsonKey(name: idKey)
  final int mLayerId;

  @JsonKey(name: createdAtKey)
  @StringDateTimeConverter()
  final DateTime mCreatedAt;

  @JsonKey(name: updateAtKey)
  @StringDateTimeConverter()
  final DateTime mUpdateAt;

  @JsonKey(name: tokenIdKey)
  final String mTokenId;

  @JsonKey(name: propertyIdKey)
  final int mPropertyId;

  @JsonKey(name: isCurrentlyInAuctionKey)
  final bool mIsCurrentlyInAuction;

  Map<String, dynamic> toJson() => _$LayersModelToJson(this);
}

@JsonSerializable()
final class PropertyStatusModel extends PropertyStatusEntity {
  const PropertyStatusModel({
    required this.mPropertyStatusId,
    required this.mType,
  }) : super(
          propertyStatusId: mPropertyStatusId,
          type: mType,
        );

  factory PropertyStatusModel.fromJson(Map<String, dynamic> json) =>
      _$PropertyStatusModelFromJson(json);

  @JsonKey(name: idKey)
  final int mPropertyStatusId;

  @JsonKey(name: typeKey)
  final String mType;

  Map<String, dynamic> toJson() => _$PropertyStatusModelToJson(this);
}

@JsonSerializable()
final class VertexModel extends VertexEntity {
  const VertexModel({
    required this.mVertexId,
    required this.mCreatedAt,
    required this.mUpdateAt,
    required this.mLatitude,
    required this.mLongitude,
    required this.mPropertyId,
    required this.mIsSoftDelete,
  }) : super(
          vertexId: mVertexId,
          createdAt: mCreatedAt,
          updateAt: mUpdateAt,
          latitude: mLatitude,
          longitude: mLongitude,
          propertyId: mPropertyId,
          isSoftDelete: mIsSoftDelete,
        );

  factory VertexModel.fromJson(Map<String, dynamic> json) =>
      _$VertexModelFromJson(json);

  @JsonKey(name: idKey)
  final int mVertexId;

  @JsonKey(name: createdAtKey)
  @StringDateTimeConverter()
  final DateTime mCreatedAt;

  @JsonKey(name: updateAtKey)
  @StringDateTimeConverter()
  final DateTime mUpdateAt;

  @JsonKey(name: latitudeKey)
  final double mLatitude;

  @JsonKey(name: longitudeKey)
  final double mLongitude;

  @JsonKey(name: propertyIdKey)
  final int mPropertyId;

  @JsonKey(name: isSoftDeleteKey)
  final bool mIsSoftDelete;

  Map<String, dynamic> toJson() => _$VertexModelToJson(this);
}

@JsonSerializable()
final class WeekDayRangeModel extends WeekDayRangeEntity {
  const WeekDayRangeModel({
    required this.mCreatedAt,
    required this.mUpdateAt,
    required this.mFromTime,
    required this.mToTime,
    required this.mIsAvailable,
    required this.mWeekDayId,
    required this.mPropertyId,
  }) : super(
          createdAt: mCreatedAt,
          updateAt: mUpdateAt,
          fromTime: mFromTime,
          toTime: mToTime,
          isAvailable: mIsAvailable,
          weekDayId: mWeekDayId,
          propertyId: mPropertyId,
        );

  factory WeekDayRangeModel.fromJson(Map<String, dynamic> json) =>
      _$WeekDayRangeModelFromJson(json);

  @JsonKey(name: createdAtKey)
  @StringDateTimeConverter()
  final DateTime mCreatedAt;

  @JsonKey(name: updateAtKey)
  @StringDateTimeConverter()
  final DateTime mUpdateAt;

  @JsonKey(name: fromTimeKey)
  final int mFromTime;

  @JsonKey(name: toTimeKey)
  final int mToTime;

  @JsonKey(name: isAvailableKey)
  final bool mIsAvailable;

  @JsonKey(name: weekDayIdKey)
  final int mWeekDayId;

  @JsonKey(name: propertyIdKey)
  final int mPropertyId;

  Map<String, dynamic> toJson() => _$WeekDayRangeModelToJson(this);
}

@JsonSerializable()
final class ExecuteMintRentalTokenModel extends ExecuteMintRentalTokenEntity {
  const ExecuteMintRentalTokenModel({
    required this.mAns,
  }) : super(
          ans: mAns,
        );

  factory ExecuteMintRentalTokenModel.fromJson(Map<String, dynamic> json) =>
      _$ExecuteMintRentalTokenModelFromJson(json);

  @JsonKey(name: ansKey)
  final AnsModel mAns;

  Map<String, dynamic> toJson() => _$ExecuteMintRentalTokenModelToJson(this);
}

@JsonSerializable()
final class AnsModel extends AnsEntity {
  const AnsModel({
    required this.mStatus,
    required this.mMessage,
  }) : super(
          status: mStatus,
          message: mMessage,
        );

  factory AnsModel.fromJson(Map<String, dynamic> json) =>
      _$AnsModelFromJson(json);

  @JsonKey(name: statusKey)
  final String mStatus;

  @JsonKey(name: messageKey)
  final String mMessage;

  Map<String, dynamic> toJson() => _$AnsModelToJson(this);
}
