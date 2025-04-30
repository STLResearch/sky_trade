import 'package:sky_trade/features/rewards/domain/entities/leaderboard_entry_entity.dart';

abstract class LeaderboardState {}

class LeaderboardInitial extends LeaderboardState {}

class LeaderboardLoading extends LeaderboardState {}

class LeaderboardLoaded extends LeaderboardState {

  LeaderboardLoaded({
    required this.entries,
    required this.totalPages,
    required this.currentPage,
  });
  final List<LeaderboardEntryEntity> entries;
  final int totalPages;
  final int currentPage;
}

class LeaderboardError extends LeaderboardState {

  LeaderboardError({required this.message});
  final String message;
}