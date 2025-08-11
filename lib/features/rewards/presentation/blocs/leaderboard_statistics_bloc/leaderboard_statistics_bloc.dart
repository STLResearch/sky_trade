// SPDX-License-Identifier: UNLICENSED
                            
import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/rewards_failure.dart'
    show LeaderboardStatisticsFailure;
import 'package:sky_trade/core/resources/numbers/ui.dart' show fifteen;
import 'package:sky_trade/features/rewards/domain/entities/rewards_entity.dart'
    show LeaderboardPositionEntity, LeaderboardStatisticsEntity;
import 'package:sky_trade/features/rewards/domain/repositories/rewards_repository.dart';

part 'leaderboard_statistics_event.dart';

part 'leaderboard_statistics_state.dart';

part 'leaderboard_statistics_bloc.freezed.dart';

class LeaderboardStatisticsBloc
    extends Bloc<LeaderboardStatisticsEvent, LeaderboardStatisticsState> {
  LeaderboardStatisticsBloc(
    RewardsRepository rewardsRepository,
  )   : _rewardsRepository = rewardsRepository,
        super(
          const LeaderboardStatisticsState.initial(),
        ) {
    on<_GetLeaderboardStatistics>(
      _getLeaderboardStatistics,
    );

    on<_GetLeaderboardPosition>(
      _getLeaderboardPosition,
    );
  }

  final RewardsRepository _rewardsRepository;

  Future<void> _getLeaderboardStatistics(
    _GetLeaderboardStatistics event,
    Emitter<LeaderboardStatisticsState> emit,
  ) async {
    emit(
      const LeaderboardStatisticsState.gettingLeaderboardStatistics(),
    );

    final result = await _rewardsRepository.getLeaderboardStatisticsOn(
      page: event.page,
      limit: fifteen,
    );

    result.fold(
      (leaderboardStatisticsFailure) => emit(
        LeaderboardStatisticsState.failedToGetLeaderboardStatistics(
          leaderboardStatisticsFailure: leaderboardStatisticsFailure,
        ),
      ),
      (leaderboardStatisticsEntity) => add(
        LeaderboardStatisticsEvent.getLeaderboardPosition(
          leaderboardStatisticsEntity: leaderboardStatisticsEntity,
        ),
      ),
    );
  }

  Future<void> _getLeaderboardPosition(
    _GetLeaderboardPosition event,
    Emitter<LeaderboardStatisticsState> emit,
  ) async {
    final result = await _rewardsRepository.getLeaderboardPositionUsing(
      currentLimit: fifteen,
    );

    emit(
      LeaderboardStatisticsState.gotLeaderboardStatistics(
        leaderboardStatisticsEntity: event.leaderboardStatisticsEntity,
        leaderboardPositionEntity: result.fold(
          (leaderboardPositionFailure) => null,
          (leaderboardPositionEntity) => leaderboardPositionEntity,
        ),
      ),
    );
  }
}
