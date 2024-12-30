base class AuctionBidHistoryEntity {
  AuctionBidHistoryEntity({
    required this.auctionBidHistoryTable,
  });

  final List<AuctionBidHistoryTableEntryEntity> auctionBidHistoryTable;
}

base class AuctionBidHistoryTableEntryEntity {
  AuctionBidHistoryTableEntryEntity({
    required this.price,
    required String date,
  }): date = DateTime.parse(date);

  final double price;

  final DateTime date;
}
