import 'package:equatable/equatable.dart';

base class HistoryEntity extends Equatable {
  const HistoryEntity(
    this.userStats,
    this.transactionList,
  );

  final UserStatsEntity userStats;
  final List<TransactionEntity> transactionList;

  @override
  List<Object?> get props => [
        userStats,
        transactionList,
      ];
}

base class UserStatsEntity extends Equatable {
  const UserStatsEntity({
    required this.numberOfRegisteredFriends,
    required this.numberOfRegisteredAirspaces,
    required this.numberOfValidateProperties,
  });

  final int numberOfRegisteredFriends;
  final int numberOfRegisteredAirspaces;
  final int numberOfValidateProperties;

  @override
  List<Object?> get props => [
        numberOfRegisteredFriends,
        numberOfRegisteredAirspaces,
        numberOfValidateProperties,
      ];
}

base class TransactionEntity extends Equatable {
  const TransactionEntity({
    required this.transactionDate,
    required this.transactionAmount,
    required this.transactionFrom,
    required this.isCredited,
  });

  final String transactionDate;
  final int transactionAmount;
  final String transactionFrom;
  final bool isCredited;

  @override
  List<Object?> get props => [
        transactionDate,
        transactionAmount,
        transactionFrom,
        isCredited,
      ];
}
