// SPDX-License-Identifier: UNLICENSED
                            
import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/rewards_failure.dart'
    show QuestFailure;
import 'package:sky_trade/features/rewards/domain/entities/rewards_entity.dart'
    show QuestEntity;
import 'package:sky_trade/features/rewards/domain/repositories/rewards_repository.dart';

part 'daily_quests_event.dart';

part 'daily_quests_state.dart';

part 'daily_quests_bloc.freezed.dart';

class DailyQuestsBloc extends Bloc<DailyQuestsEvent, DailyQuestsState> {
  DailyQuestsBloc(
    RewardsRepository rewardsRepository,
  )   : _rewardsRepository = rewardsRepository,
        super(
          const DailyQuestsState.initial(),
        ) {
    on<_GetQuests>(
      _getQuests,
    );
  }

  final RewardsRepository _rewardsRepository;

  Future<void> _getQuests(
    _GetQuests event,
    Emitter<DailyQuestsState> emit,
  ) async {
    emit(
      const DailyQuestsState.gettingQuests(),
    );

    final result = await _rewardsRepository.dailyQuests;

    result.fold(
      (questFailure) => emit(
        DailyQuestsState.failedToGetQuests(
          questFailure: questFailure,
        ),
      ),
      (questEntities) => emit(
        DailyQuestsState.gotQuests(
          questEntities: questEntities,
        ),
      ),
    );
  }
}
