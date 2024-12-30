import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/resources/strings/networking.dart';
import 'package:sky_trade/core/utils/enums/networking.dart';
import 'package:sky_trade/features/air_rights/domain/entities/air_space_details_entity.dart';

part 'air_space_details_model.g.dart';

@JsonSerializable()
final class AirSpaceDetailsModel extends AirSpaceDetailsEntity {
  AirSpaceDetailsModel({
    required this.mCurrentRentPrice,
    required this.mProperty,
  }): super(
    currentRentPrice: mCurrentRentPrice,
    highestBid: mProperty.mAuctionDetails?.mHighestBid,
    propertyId: mProperty.mPropertyId,
    propertyOwnerId: mProperty.mPropertyOwnerId,
    propertyAddress: mProperty.mPropertyAddress,
    propertyStatus: mProperty.mPropertyStatus.mStatusType,
    deadline: mProperty.mAuctionDetails?.mDeadline,
  );

  factory AirSpaceDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$AirSpaceDetailsModelFromJson(json);

  @JsonKey(name: currentRentPriceKey)
  final double mCurrentRentPrice;

  @JsonKey(name: propertyKey)
  final PropertyModel mProperty;
}

@JsonSerializable()
class PropertyModel {
  PropertyModel({
    required this.mPropertyId,
    required this.mPropertyOwnerId,
    required this.mPropertyAddress,
    required this.mPropertyStatus,
    required this.mAuctionDetails,
  });

  factory PropertyModel.fromJson(Map<String, dynamic> json) =>
      _$PropertyModelFromJson(json);

  @JsonKey(name: propertyIdKey)
  final double mPropertyId;

  @JsonKey(name: propertyOwnerIdKey)
  final double mPropertyOwnerId;

  @JsonKey(name: propertyAddressKey)
  final String mPropertyAddress;

  @JsonKey(name: propertyStatusKey)
  final PropertyStatusModel mPropertyStatus;

  @JsonKey(name: auctionDetailsKey)
  final AuctionDetailsModel? mAuctionDetails;
}

@JsonSerializable()
class PropertyStatusModel {
  PropertyStatusModel({
    required this.mStatusType,
  });

  factory PropertyStatusModel.fromJson(Map<String, dynamic> json) =>
      _$PropertyStatusModelFromJson(json);

  @JsonKey(name: propertyStatusTypeKey)
  final PropertyStatusType mStatusType;
}

@JsonSerializable()
class AuctionDetailsModel {
  AuctionDetailsModel({
    required this.mHighestBid,
    required this.mDeadline,
  });

  factory AuctionDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$AuctionDetailsModelFromJson(json);

  @JsonKey(name: highestBidKey)
  final double mHighestBid;

  @JsonKey(name: deadlineKey)
  final String mDeadline;
}
