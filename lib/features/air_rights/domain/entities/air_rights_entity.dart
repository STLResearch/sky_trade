import 'package:equatable/equatable.dart' show Equatable;
import 'package:sky_trade/features/rent_air_rights/domain/entities/rent_air_rights_entity.dart'
    show PropertyEntity;

base class AirspaceDetailsEntity extends Equatable {
  const AirspaceDetailsEntity({
    required this.rentPrice,
    required this.property,
    required this.auctionDetails,
  });

  final int rentPrice;

  final PropertyEntity property;

  final AuctionDetailsEntity? auctionDetails;

  @override
  List<Object?> get props => [
        rentPrice,
        property,
        auctionDetails,
      ];
}

base class AuctionDetailsEntity extends Equatable {
  const AuctionDetailsEntity({
    required this.highestBid,
    required this.auctionDeadline,
  });

  final int highestBid;

  final DateTime auctionDeadline;

  @override
  List<Object?> get props => [
        highestBid,
        auctionDeadline,
      ];
}

base class AirspaceHistoryInfoEntity extends Equatable {
  const AirspaceHistoryInfoEntity({
    required this.lifetimeTotalIncome,
    required this.totalIncomeMtd,
    required this.totalIncomeWtd,
    required this.airspaceHistory,
  });

  final int lifetimeTotalIncome;

  final int totalIncomeMtd;

  final int totalIncomeWtd;

  final List<AirspaceHistoryEntity> airspaceHistory;

  @override
  List<Object?> get props => [
        lifetimeTotalIncome,
        totalIncomeMtd,
        totalIncomeWtd,
        airspaceHistory,
      ];
}

base class AirspaceHistoryEntity extends Equatable {
  const AirspaceHistoryEntity({
    required this.type,
    required this.date,
    required this.price,
  });

  final String type;

  final DateTime date;

  final int price;

  @override
  List<Object?> get props => [
        type,
        date,
        price,
      ];
}

base class AuctionBidHistoryEntity extends Equatable {
  const AuctionBidHistoryEntity({
    required this.bidsHistory,
  });

  final List<BidHistoryEntity> bidsHistory;

  @override
  List<Object?> get props => [
        bidsHistory,
      ];
}

base class BidHistoryEntity extends Equatable {
  const BidHistoryEntity({
    required this.date,
    required this.price,
  });

  final DateTime date;

  final int price;

  @override
  List<Object?> get props => [
        date,
        price,
      ];
}

base class TransactionEntity extends Equatable {
  const TransactionEntity({
    required this.message,
    required this.transaction,
  });

  final String message;

  final String transaction;

  @override
  List<Object?> get props => [
        message,
        transaction,
      ];
}
