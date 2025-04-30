class LeaderboardEntryEntity {
  LeaderboardEntryEntity({
    required this.userId,
    required this.points,
    required this.rank,
  });

  final String userId;
  final int points;
  final int rank;
}
