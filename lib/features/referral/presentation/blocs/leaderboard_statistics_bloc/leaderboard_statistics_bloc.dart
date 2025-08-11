// SPDX-License-Identifier: UNLICENSED
                            
import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/referral_failure.dart'
    show LeaderboardStatisticsFailure;
import 'package:sky_trade/core/resources/numbers/ui.dart' show six;
import 'package:sky_trade/features/referral/domain/entities/referral_entity.dart'
    show LeaderboardPositionEntity, LeaderboardStatisticsEntity;
import 'package:sky_trade/features/referral/domain/repositories/referral_repository.dart';

part 'leaderboard_statistics_event.dart';

part 'leaderboard_statistics_state.dart';

part 'leaderboard_statistics_bloc.freezed.dart';

class LeaderboardStatisticsBloc
    extends Bloc<LeaderboardStatisticsEvent, LeaderboardStatisticsState> {
  LeaderboardStatisticsBloc(
    ReferralRepository referralRepository,
  )   : _referralRepository = referralRepository,
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

  final ReferralRepository _referralRepository;

  Future<void> _getLeaderboardStatistics(
    _GetLeaderboardStatistics event,
    Emitter<LeaderboardStatisticsState> emit,
  ) async {
    emit(
      const LeaderboardStatisticsState.gettingLeaderboardStatistics(),
    );

    final result = await _referralRepository.getLeaderboardStatisticsOn(
      page: event.page,
      limit: six,
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
    final result = await _referralRepository.getLeaderboardPositionUsing(
      currentLimit: six,
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
