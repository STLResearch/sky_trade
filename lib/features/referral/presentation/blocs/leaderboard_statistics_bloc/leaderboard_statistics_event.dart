part of 'leaderboard_statistics_bloc.dart';

@freezed
class LeaderboardStatisticsEvent with _$LeaderboardStatisticsEvent {
  const factory LeaderboardStatisticsEvent.getLeaderboardStatistics({
    required int page,
  }) = _GetLeaderboardStatistics;
}
