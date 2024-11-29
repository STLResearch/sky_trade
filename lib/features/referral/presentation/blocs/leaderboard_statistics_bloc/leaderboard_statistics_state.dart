part of 'leaderboard_statistics_bloc.dart';

@freezed
class LeaderboardStatisticsState with _$LeaderboardStatisticsState {
  const factory LeaderboardStatisticsState.initial() = _Initial;

  const factory LeaderboardStatisticsState.gettingLeaderboardStatistics() =
      _GettingLeaderboardStatistics;

  const factory LeaderboardStatisticsState.gotLeaderboardStatistics({
    required LeaderboardStatisticsEntity leaderboardStatisticsEntity,
  }) = _GotLeaderboardStatistics;

  const factory LeaderboardStatisticsState.failedToGetLeaderboardStatistics({
    required LeaderboardStatisticsFailure leaderboardStatisticsFailure,
  }) = _FailedToGetLeaderboardStatistics;
}
