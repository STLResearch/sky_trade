import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/resources/strings/networking.dart';
import 'package:sky_trade/features/air_rights/domain/entities/auction_bid_history_entity.dart';

part 'auction_bid_history_model.g.dart';

@JsonSerializable()
final class AuctionBidHistoryModel extends AuctionBidHistoryEntity {
  AuctionBidHistoryModel({
    required this.mAuctionBidHistoryTable,
  }) : super(auctionBidHistoryTable: mAuctionBidHistoryTable);

  factory AuctionBidHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$AuctionBidHistoryModelFromJson(json);

  @JsonKey(name: auctionBidHistoryKey)
  final List<AuctionBidHistoryTableEntryModel> mAuctionBidHistoryTable;
}

@JsonSerializable()
final class AuctionBidHistoryTableEntryModel
    extends AuctionBidHistoryTableEntryEntity {
  AuctionBidHistoryTableEntryModel({
    required this.mDate,
    required this.mPrice,
  }) : super(
          price: mPrice,
          date: mDate,
        );

  factory AuctionBidHistoryTableEntryModel.fromJson(
    Map<String, dynamic> json,
  ) => _$AuctionBidHistoryTableEntryModelFromJson(json);

  @JsonKey(name: priceKey)
  final double mPrice;

  @JsonKey(name: dateKey)
  final String mDate;
}
