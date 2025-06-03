import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/rewards_failure.dart'
    show RewardPointsFailure;
import 'package:sky_trade/features/rewards/domain/entities/rewards_entity.dart'
    show RewardPointsEntity;
import 'package:sky_trade/features/rewards/domain/repositories/rewards_repository.dart';

part 'reward_points_event.dart';

part 'reward_points_state.dart';

part 'reward_points_bloc.freezed.dart';

class RewardPointsBloc extends Bloc<RewardPointsEvent, RewardPointsState> {
  RewardPointsBloc(
    RewardsRepository rewardsRepository,
  )   : _rewardsRepository = rewardsRepository,
        super(
          const RewardPointsState.initial(),
        ) {
    on<_GetPoints>(
      _getPoints,
    );
  }

  final RewardsRepository _rewardsRepository;

  Future<void> _getPoints(
    _GetPoints event,
    Emitter<RewardPointsState> emit,
  ) async {
    emit(
      const RewardPointsState.gettingPoints(),
    );

    final result = await _rewardsRepository.rewardPoints;

    result.fold(
      (rewardPointsFailure) => emit(
        RewardPointsState.failedToGetPoints(
          rewardPointsFailure: rewardPointsFailure,
        ),
      ),
      (rewardPointsEntity) => emit(
        RewardPointsState.gotPoints(
          rewardPointsEntity: rewardPointsEntity,
        ),
      ),
    );
  }
}
