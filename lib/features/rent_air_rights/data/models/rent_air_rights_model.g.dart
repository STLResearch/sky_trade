// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rent_air_rights_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PropertyModel _$PropertyModelFromJson(Map<String, dynamic> json) =>
    PropertyModel(
      mId: (json['id'] as num).toInt(),
      mCreatedAt:
          const StringDateTimeConverter().fromJson(json['createdAt'] as String),
      mUpdatedAt:
          const StringDateTimeConverter().fromJson(json['updateAt'] as String),
      mTitle: json['title'] as String,
      mTransitFee: json['transitFee'] as String,
      mAddress: json['address'] as String,
      mTimezone: json['timezone'] as String,
      mFullTimezone: json['fullTimezone'] as String?,
      mHasLandingDeck: json['hasLandingDeck'] as bool,
      mHasChargingStation: json['hasChargingStation'] as bool,
      mHasStorageHub: json['hasStorageHub'] as bool,
      mIsFixedTransitFee: json['isFixedTransitFee'] as bool,
      mIsRentableAirspace: json['isRentableAirspace'] as bool,
      mOwnerId: (json['ownerId'] as num).toInt(),
      mNoFlyZone: json['noFlyZone'] as bool,
      mIsBoostedArea: json['isBoostedArea'] as bool,
      mLatitude: (json['latitude'] as num).toDouble(),
      mLongitude: (json['longitude'] as num).toDouble(),
      mPropertyStatusId: (json['propertyStatusId'] as num).toInt(),
      mIsActive: json['isActive'] as bool,
      mIsPropertyRewardClaimed: json['isPropertyRewardClaimed'] as bool,
      mIsSoftDelete: json['isSoftDelete'] as bool,
      mHasZoningPermission: json['hasZoningPermission'] as bool?,
      mOrderPhotoForGeneratedMap: json['orderPhotoforGeneratedMap'] as bool,
      mAssessorParcelNumber: json['assessorParcelNumber'] as String,
      mExternalBlockchainAddress: json['externalBlockchainAddress'] as String?,
      mAreaPolygon: json['areaPolygon'] as String?,
      mTokenValue: (json['tokenValue'] as num?)?.toDouble(),
      mLayers: (json['layers'] as List<dynamic>)
          .map((e) => LayersModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      mPropertyStatus: PropertyStatusModel.fromJson(
          json['propertyStatus'] as Map<String, dynamic>),
      mVertexes: (json['vertexes'] as List<dynamic>)
          .map((e) => VertexModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      mWeekDayRanges: (json['weekDayRanges'] as List<dynamic>)
          .map((e) => WeekDayRangeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      mImages:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      mPrice: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$PropertyModelToJson(PropertyModel instance) =>
    <String, dynamic>{
      'id': instance.mId,
      'createdAt': const StringDateTimeConverter().toJson(instance.mCreatedAt),
      'updateAt': const StringDateTimeConverter().toJson(instance.mUpdatedAt),
      'title': instance.mTitle,
      'transitFee': instance.mTransitFee,
      'address': instance.mAddress,
      'timezone': instance.mTimezone,
      'fullTimezone': instance.mFullTimezone,
      'hasLandingDeck': instance.mHasLandingDeck,
      'hasChargingStation': instance.mHasChargingStation,
      'hasStorageHub': instance.mHasStorageHub,
      'isFixedTransitFee': instance.mIsFixedTransitFee,
      'isRentableAirspace': instance.mIsRentableAirspace,
      'ownerId': instance.mOwnerId,
      'noFlyZone': instance.mNoFlyZone,
      'isBoostedArea': instance.mIsBoostedArea,
      'latitude': instance.mLatitude,
      'longitude': instance.mLongitude,
      'propertyStatusId': instance.mPropertyStatusId,
      'isActive': instance.mIsActive,
      'isPropertyRewardClaimed': instance.mIsPropertyRewardClaimed,
      'isSoftDelete': instance.mIsSoftDelete,
      'hasZoningPermission': instance.mHasZoningPermission,
      'orderPhotoforGeneratedMap': instance.mOrderPhotoForGeneratedMap,
      'assessorParcelNumber': instance.mAssessorParcelNumber,
      'externalBlockchainAddress': instance.mExternalBlockchainAddress,
      'areaPolygon': instance.mAreaPolygon,
      'tokenValue': instance.mTokenValue,
      'layers': instance.mLayers,
      'propertyStatus': instance.mPropertyStatus,
      'vertexes': instance.mVertexes,
      'weekDayRanges': instance.mWeekDayRanges,
      'images': instance.mImages,
      'price': instance.mPrice,
    };

LayersModel _$LayersModelFromJson(Map<String, dynamic> json) => LayersModel(
      mLayerId: (json['id'] as num).toInt(),
      mCreatedAt:
          const StringDateTimeConverter().fromJson(json['createdAt'] as String),
      mUpdateAt:
          const StringDateTimeConverter().fromJson(json['updateAt'] as String),
      mTokenId: json['tokenId'] as String,
      mPropertyId: (json['propertyId'] as num).toInt(),
      mIsCurrentlyInAuction: json['isCurrentlyInAuction'] as bool,
    );

Map<String, dynamic> _$LayersModelToJson(LayersModel instance) =>
    <String, dynamic>{
      'id': instance.mLayerId,
      'createdAt': const StringDateTimeConverter().toJson(instance.mCreatedAt),
      'updateAt': const StringDateTimeConverter().toJson(instance.mUpdateAt),
      'tokenId': instance.mTokenId,
      'propertyId': instance.mPropertyId,
      'isCurrentlyInAuction': instance.mIsCurrentlyInAuction,
    };

PropertyStatusModel _$PropertyStatusModelFromJson(Map<String, dynamic> json) =>
    PropertyStatusModel(
      mPropertyStatusId: (json['id'] as num).toInt(),
      mType: json['type'] as String,
    );

Map<String, dynamic> _$PropertyStatusModelToJson(
        PropertyStatusModel instance) =>
    <String, dynamic>{
      'id': instance.mPropertyStatusId,
      'type': instance.mType,
    };

VertexModel _$VertexModelFromJson(Map<String, dynamic> json) => VertexModel(
      mVertexId: (json['id'] as num).toInt(),
      mCreatedAt:
          const StringDateTimeConverter().fromJson(json['createdAt'] as String),
      mUpdateAt:
          const StringDateTimeConverter().fromJson(json['updateAt'] as String),
      mLatitude: (json['latitude'] as num).toDouble(),
      mLongitude: (json['longitude'] as num).toDouble(),
      mPropertyId: (json['propertyId'] as num).toInt(),
      mIsSoftDelete: json['isSoftDelete'] as bool,
    );

Map<String, dynamic> _$VertexModelToJson(VertexModel instance) =>
    <String, dynamic>{
      'id': instance.mVertexId,
      'createdAt': const StringDateTimeConverter().toJson(instance.mCreatedAt),
      'updateAt': const StringDateTimeConverter().toJson(instance.mUpdateAt),
      'latitude': instance.mLatitude,
      'longitude': instance.mLongitude,
      'propertyId': instance.mPropertyId,
      'isSoftDelete': instance.mIsSoftDelete,
    };

WeekDayRangeModel _$WeekDayRangeModelFromJson(Map<String, dynamic> json) =>
    WeekDayRangeModel(
      mCreatedAt:
          const StringDateTimeConverter().fromJson(json['createdAt'] as String),
      mUpdateAt:
          const StringDateTimeConverter().fromJson(json['updateAt'] as String),
      mFromTime: (json['fromTime'] as num).toInt(),
      mToTime: (json['toTime'] as num).toInt(),
      mIsAvailable: json['isAvailable'] as bool,
      mWeekDayId: (json['weekDayId'] as num).toInt(),
      mPropertyId: (json['propertyId'] as num).toInt(),
    );

Map<String, dynamic> _$WeekDayRangeModelToJson(WeekDayRangeModel instance) =>
    <String, dynamic>{
      'createdAt': const StringDateTimeConverter().toJson(instance.mCreatedAt),
      'updateAt': const StringDateTimeConverter().toJson(instance.mUpdateAt),
      'fromTime': instance.mFromTime,
      'toTime': instance.mToTime,
      'isAvailable': instance.mIsAvailable,
      'weekDayId': instance.mWeekDayId,
      'propertyId': instance.mPropertyId,
    };

ExecuteMintRentalTokenModel _$ExecuteMintRentalTokenModelFromJson(
        Map<String, dynamic> json) =>
    ExecuteMintRentalTokenModel(
      mAns: AnsModel.fromJson(json['ans'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ExecuteMintRentalTokenModelToJson(
        ExecuteMintRentalTokenModel instance) =>
    <String, dynamic>{
      'ans': instance.mAns,
    };

AnsModel _$AnsModelFromJson(Map<String, dynamic> json) => AnsModel(
      mStatus: json['status'] as String,
      mMessage: json['message'] as String,
    );

Map<String, dynamic> _$AnsModelToJson(AnsModel instance) => <String, dynamic>{
      'status': instance.mStatus,
      'message': instance.mMessage,
    };
