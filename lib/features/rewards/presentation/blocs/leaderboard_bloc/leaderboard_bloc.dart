import 'package:bloc/bloc.dart';
import 'package:sky_trade/features/rewards/domain/entities/leaderboard_entry_entity.dart';
import 'package:sky_trade/features/rewards/presentation/blocs/leaderboard_bloc/leaderboard_event.dart';
import 'package:sky_trade/features/rewards/presentation/blocs/leaderboard_bloc/leaderboard_state.dart';

class LeaderboardBloc extends Bloc<LeaderboardEvent, LeaderboardState> {
  LeaderboardBloc() : super(LeaderboardInitial()) {
    on<FetchPointsLeaderboard>(_onFetchPointsLeaderboard);
  }

  Future<void> _onFetchPointsLeaderboard(
    FetchPointsLeaderboard event,
    Emitter<LeaderboardState> emit,
  ) async {
    emit(LeaderboardLoading());
    try {
      await Future.delayed(const Duration(milliseconds: 500));
      final mockEntries = _getMockData(event.page);

      emit(
        LeaderboardLoaded(
          entries: mockEntries,
          totalPages: 10,
          currentPage: event.page,
        ),
      );
    } on Exception {
      emit(LeaderboardError(message: 'Failed to load leaderboard data'));
    }
  }

  List<LeaderboardEntryEntity> _getMockData(int page) {
    final baseRank = (page - 1) * 9;
    return List.generate(
      9,
      (index) => LeaderboardEntryEntity(
        userId: 'asdw21123',
        points: index == 0 && page == 1 ? 58 : 30,
        rank: baseRank + index + 1,
      ),
    );
  }
}
