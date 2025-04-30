abstract class LeaderboardEvent {}

class FetchPointsLeaderboard extends LeaderboardEvent {

  FetchPointsLeaderboard({required this.page});
  final int page;
}
