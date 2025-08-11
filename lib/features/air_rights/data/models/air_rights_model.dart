// SPDX-License-Identifier: UNLICENSED
                            
import 'package:json_annotation/json_annotation.dart';
import 'package:sky_trade/core/resources/strings/networking.dart'
    show
        airspaceHistoryKey,
        auctionDeadlineKey,
        auctionDetailsKey,
        bidsHistoryKey,
        dateKey,
        highestBidKey,
        lifetimeTotalIncomeKey,
        messageKey,
        priceKey,
        propertyKey,
        rentPriceKey,
        totalIncomeMtdKey,
        totalIncomeWtdKey,
        transactionKey,
        typeKey;
import 'package:sky_trade/core/utils/converters/date_time_converter.dart'
    show StringDateTimeConverter;
import 'package:sky_trade/features/air_rights/domain/entities/air_rights_entity.dart';
import 'package:sky_trade/features/rent_air_rights/data/models/rent_air_rights_model.dart'
    show PropertyModel;

part 'air_rights_model.g.dart';

@JsonSerializable()
final class AirspaceDetailsModel extends AirspaceDetailsEntity {
  const AirspaceDetailsModel({
    required this.mRentPrice,
    required this.mProperty,
    required this.mAuctionDetails,
  }) : super(
          rentPrice: mRentPrice,
          property: mProperty,
          auctionDetails: mAuctionDetails,
        );

  factory AirspaceDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$AirspaceDetailsModelFromJson(json);

  @JsonKey(name: rentPriceKey)
  final int mRentPrice;

  @JsonKey(name: propertyKey)
  final PropertyModel mProperty;

  @JsonKey(name: auctionDetailsKey)
  final AuctionDetailsModel? mAuctionDetails;

  Map<String, dynamic> toJson() => _$AirspaceDetailsModelToJson(this);
}

@JsonSerializable()
final class AuctionDetailsModel extends AuctionDetailsEntity {
  const AuctionDetailsModel({
    required this.mHighestBid,
    required this.mAuctionDeadline,
  }) : super(
          highestBid: mHighestBid,
          auctionDeadline: mAuctionDeadline,
        );

  factory AuctionDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$AuctionDetailsModelFromJson(json);

  @JsonKey(name: highestBidKey)
  final int mHighestBid;

  @JsonKey(name: auctionDeadlineKey)
  @StringDateTimeConverter()
  final DateTime mAuctionDeadline;

  Map<String, dynamic> toJson() => _$AuctionDetailsModelToJson(this);
}

@JsonSerializable()
final class AirspaceHistoryInfoModel extends AirspaceHistoryInfoEntity {
  const AirspaceHistoryInfoModel({
    required this.mLifetimeTotalIncome,
    required this.mTotalIncomeMtd,
    required this.mTotalIncomeWtd,
    required this.mAirspaceHistory,
  }) : super(
          lifetimeTotalIncome: mLifetimeTotalIncome,
          totalIncomeMtd: mTotalIncomeMtd,
          totalIncomeWtd: mTotalIncomeWtd,
          airspaceHistory: mAirspaceHistory,
        );

  factory AirspaceHistoryInfoModel.fromJson(Map<String, dynamic> json) =>
      _$AirspaceHistoryInfoModelFromJson(json);

  @JsonKey(name: lifetimeTotalIncomeKey)
  final int mLifetimeTotalIncome;

  @JsonKey(name: totalIncomeMtdKey)
  final int mTotalIncomeMtd;

  @JsonKey(name: totalIncomeWtdKey)
  final int mTotalIncomeWtd;

  @JsonKey(name: airspaceHistoryKey)
  final List<AirspaceHistoryModel> mAirspaceHistory;

  Map<String, dynamic> toJson() => _$AirspaceHistoryInfoModelToJson(this);
}

@JsonSerializable()
final class AirspaceHistoryModel extends AirspaceHistoryEntity {
  const AirspaceHistoryModel({
    required this.mType,
    required this.mDate,
    required this.mPrice,
  }) : super(
          type: mType,
          date: mDate,
          price: mPrice,
        );

  factory AirspaceHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$AirspaceHistoryModelFromJson(json);

  @JsonKey(name: typeKey)
  final String mType;

  @JsonKey(name: dateKey)
  @StringDateTimeConverter()
  final DateTime mDate;

  @JsonKey(name: priceKey)
  final int mPrice;

  Map<String, dynamic> toJson() => _$AirspaceHistoryModelToJson(this);
}

@JsonSerializable()
final class AuctionBidHistoryModel extends AuctionBidHistoryEntity {
  const AuctionBidHistoryModel({
    required this.mBidsHistory,
  }) : super(
          bidsHistory: mBidsHistory,
        );

  factory AuctionBidHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$AuctionBidHistoryModelFromJson(json);

  @JsonKey(name: bidsHistoryKey)
  final List<BidHistoryModel> mBidsHistory;

  Map<String, dynamic> toJson() => _$AuctionBidHistoryModelToJson(this);
}

@JsonSerializable()
final class BidHistoryModel extends BidHistoryEntity {
  const BidHistoryModel({
    required this.mDate,
    required this.mPrice,
  }) : super(
          date: mDate,
          price: mPrice,
        );

  factory BidHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$BidHistoryModelFromJson(json);

  @JsonKey(name: dateKey)
  @StringDateTimeConverter()
  final DateTime mDate;

  @JsonKey(name: priceKey)
  final int mPrice;

  Map<String, dynamic> toJson() => _$BidHistoryModelToJson(this);
}

@JsonSerializable()
final class TransactionModel extends TransactionEntity {
  const TransactionModel({
    required this.mMessage,
    required this.mTransaction,
  }) : super(
          message: mMessage,
          transaction: mTransaction,
        );

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionModelFromJson(json);

  @JsonKey(name: messageKey)
  final String mMessage;

  @JsonKey(name: transactionKey)
  final String mTransaction;

  Map<String, dynamic> toJson() => _$TransactionModelToJson(this);
}
