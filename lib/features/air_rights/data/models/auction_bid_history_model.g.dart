// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auction_bid_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuctionBidHistoryModel _$AuctionBidHistoryModelFromJson(
        Map<String, dynamic> json) =>
    AuctionBidHistoryModel(
      mAuctionBidHistoryTable: (json['bids_history'] as List<dynamic>)
          .map((e) => AuctionBidHistoryTableEntryModel.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AuctionBidHistoryModelToJson(
        AuctionBidHistoryModel instance) =>
    <String, dynamic>{
      'bids_history': instance.mAuctionBidHistoryTable,
    };

AuctionBidHistoryTableEntryModel _$AuctionBidHistoryTableEntryModelFromJson(
        Map<String, dynamic> json) =>
    AuctionBidHistoryTableEntryModel(
      mDate: json['date'] as String,
      mPrice: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$AuctionBidHistoryTableEntryModelToJson(
        AuctionBidHistoryTableEntryModel instance) =>
    <String, dynamic>{
      'price': instance.mPrice,
      'date': instance.mDate,
    };
