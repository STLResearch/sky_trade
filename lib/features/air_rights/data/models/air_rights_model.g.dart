// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'air_rights_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AirspaceDetailsModel _$AirspaceDetailsModelFromJson(
        Map<String, dynamic> json) =>
    AirspaceDetailsModel(
      mRentPrice: (json['rent_price'] as num).toInt(),
      mProperty:
          PropertyModel.fromJson(json['property'] as Map<String, dynamic>),
      mAuctionDetails: json['auction_details'] == null
          ? null
          : AuctionDetailsModel.fromJson(
              json['auction_details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AirspaceDetailsModelToJson(
        AirspaceDetailsModel instance) =>
    <String, dynamic>{
      'rent_price': instance.mRentPrice,
      'property': instance.mProperty,
      'auction_details': instance.mAuctionDetails,
    };

AuctionDetailsModel _$AuctionDetailsModelFromJson(Map<String, dynamic> json) =>
    AuctionDetailsModel(
      mHighestBid: (json['highest_bid'] as num).toInt(),
      mAuctionDeadline: const StringDateTimeConverter()
          .fromJson(json['auction_deadline'] as String),
    );

Map<String, dynamic> _$AuctionDetailsModelToJson(
        AuctionDetailsModel instance) =>
    <String, dynamic>{
      'highest_bid': instance.mHighestBid,
      'auction_deadline':
          const StringDateTimeConverter().toJson(instance.mAuctionDeadline),
    };

AirspaceHistoryInfoModel _$AirspaceHistoryInfoModelFromJson(
        Map<String, dynamic> json) =>
    AirspaceHistoryInfoModel(
      mLifetimeTotalIncome: (json['lifetime_total_income'] as num).toInt(),
      mTotalIncomeMtd: (json['total_income_mtd'] as num).toInt(),
      mTotalIncomeWtd: (json['total_income_wtd'] as num).toInt(),
      mAirspaceHistory: (json['airspace_history'] as List<dynamic>)
          .map((e) => AirspaceHistoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AirspaceHistoryInfoModelToJson(
        AirspaceHistoryInfoModel instance) =>
    <String, dynamic>{
      'lifetime_total_income': instance.mLifetimeTotalIncome,
      'total_income_mtd': instance.mTotalIncomeMtd,
      'total_income_wtd': instance.mTotalIncomeWtd,
      'airspace_history': instance.mAirspaceHistory,
    };

AirspaceHistoryModel _$AirspaceHistoryModelFromJson(
        Map<String, dynamic> json) =>
    AirspaceHistoryModel(
      mType: json['type'] as String,
      mDate: const StringDateTimeConverter().fromJson(json['date'] as String),
      mPrice: (json['price'] as num).toInt(),
    );

Map<String, dynamic> _$AirspaceHistoryModelToJson(
        AirspaceHistoryModel instance) =>
    <String, dynamic>{
      'type': instance.mType,
      'date': const StringDateTimeConverter().toJson(instance.mDate),
      'price': instance.mPrice,
    };

AuctionBidHistoryModel _$AuctionBidHistoryModelFromJson(
        Map<String, dynamic> json) =>
    AuctionBidHistoryModel(
      mBidsHistory: (json['bids_history'] as List<dynamic>)
          .map((e) => BidHistoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AuctionBidHistoryModelToJson(
        AuctionBidHistoryModel instance) =>
    <String, dynamic>{
      'bids_history': instance.mBidsHistory,
    };

BidHistoryModel _$BidHistoryModelFromJson(Map<String, dynamic> json) =>
    BidHistoryModel(
      mDate: const StringDateTimeConverter().fromJson(json['date'] as String),
      mPrice: (json['price'] as num).toInt(),
    );

Map<String, dynamic> _$BidHistoryModelToJson(BidHistoryModel instance) =>
    <String, dynamic>{
      'date': const StringDateTimeConverter().toJson(instance.mDate),
      'price': instance.mPrice,
    };

TransactionModel _$TransactionModelFromJson(Map<String, dynamic> json) =>
    TransactionModel(
      mMessage: json['message'] as String,
      mTransaction: json['transaction'] as String,
    );

Map<String, dynamic> _$TransactionModelToJson(TransactionModel instance) =>
    <String, dynamic>{
      'message': instance.mMessage,
      'transaction': instance.mTransaction,
    };
