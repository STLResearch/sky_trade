import 'package:equatable/equatable.dart';

base class LeaderboardEntity extends Equatable {
  const LeaderboardEntity({
    required this.leaderboardData,
    required this.earningsEntity,
  });

  final List<List<Map<String, String>>> leaderboardData;
  final EarningsEntity earningsEntity;

  @override
  List<Object?> get props => [
        earningsEntity,
      ];
}

base class EarningsEntity extends Equatable {
  const EarningsEntity({
    required this.lifeTimeEarningsAmount,
    required this.quartileEarningsList,
  });

  final int lifeTimeEarningsAmount;
  final List<QuartileEarningEntity> quartileEarningsList;

  @override
  List<Object?> get props => [
        lifeTimeEarningsAmount,
        quartileEarningsList,
      ];
}

base class QuartileEarningEntity extends Equatable {
  const QuartileEarningEntity({
    required this.quartileName,
    required this.earningsAmount,
  });

  final String quartileName;
  final int earningsAmount;

  @override
  List<Object?> get props => [
        quartileName,
        earningsAmount,
      ];
}
