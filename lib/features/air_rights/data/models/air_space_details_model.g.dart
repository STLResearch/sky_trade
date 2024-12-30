// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'air_space_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AirSpaceDetailsModel _$AirSpaceDetailsModelFromJson(
        Map<String, dynamic> json) =>
    AirSpaceDetailsModel(
      mCurrentRentPrice: (json['rent_price'] as num).toDouble(),
      mProperty:
          PropertyModel.fromJson(json['property'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AirSpaceDetailsModelToJson(
        AirSpaceDetailsModel instance) =>
    <String, dynamic>{
      'rent_price': instance.mCurrentRentPrice,
      'property': instance.mProperty,
    };

PropertyModel _$PropertyModelFromJson(Map<String, dynamic> json) =>
    PropertyModel(
      mPropertyId: (json['id'] as num).toDouble(),
      mPropertyOwnerId: (json['ownerId'] as num).toDouble(),
      mPropertyAddress: json['address'] as String,
      mPropertyStatus: PropertyStatusModel.fromJson(
          json['propertyStatus'] as Map<String, dynamic>),
      mAuctionDetails: json['auction_details'] == null
          ? null
          : AuctionDetailsModel.fromJson(
              json['auction_details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PropertyModelToJson(PropertyModel instance) =>
    <String, dynamic>{
      'id': instance.mPropertyId,
      'ownerId': instance.mPropertyOwnerId,
      'address': instance.mPropertyAddress,
      'propertyStatus': instance.mPropertyStatus,
      'auction_details': instance.mAuctionDetails,
    };

PropertyStatusModel _$PropertyStatusModelFromJson(Map<String, dynamic> json) =>
    PropertyStatusModel(
      mStatusType: $enumDecode(_$PropertyStatusTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$PropertyStatusModelToJson(
        PropertyStatusModel instance) =>
    <String, dynamic>{
      'type': _$PropertyStatusTypeEnumMap[instance.mStatusType]!,
    };

const _$PropertyStatusTypeEnumMap = {
  PropertyStatusType.verified: 'Verified',
  PropertyStatusType.partiallyVerified: 'PartiallyVerified',
};

AuctionDetailsModel _$AuctionDetailsModelFromJson(Map<String, dynamic> json) =>
    AuctionDetailsModel(
      mHighestBid: (json['highest_bid'] as num).toDouble(),
      mDeadline: json['deadline'] as String,
    );

Map<String, dynamic> _$AuctionDetailsModelToJson(
        AuctionDetailsModel instance) =>
    <String, dynamic>{
      'highest_bid': instance.mHighestBid,
      'deadline': instance.mDeadline,
    };
