// SPDX-License-Identifier: UNLICENSED
                            
part of 'leaderboard_statistics_bloc.dart';

@freezed
class LeaderboardStatisticsEvent with _$LeaderboardStatisticsEvent {
  const factory LeaderboardStatisticsEvent.getLeaderboardStatistics({
    required int page,
  }) = _GetLeaderboardStatistics;

  const factory LeaderboardStatisticsEvent.getLeaderboardPosition({
    required LeaderboardStatisticsEntity leaderboardStatisticsEntity,
  }) = _GetLeaderboardPosition;
}
