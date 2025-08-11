// SPDX-License-Identifier: UNLICENSED
                            
import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/features/rewards/domain/repositories/rewards_repository.dart';

part 'show_rewards_onboarding_event.dart';

part 'show_rewards_onboarding_state.dart';

part 'show_rewards_onboarding_bloc.freezed.dart';

class ShowRewardsOnboardingBloc
    extends Bloc<ShowRewardsOnboardingEvent, ShowRewardsOnboardingState> {
  ShowRewardsOnboardingBloc(
    RewardsRepository rewardsRepository,
  )   : _rewardsRepository = rewardsRepository,
        super(
          const ShowRewardsOnboardingState.initial(),
        ) {
    on<_CheckShouldShowOnboarding>(
      _checkShouldShowOnboarding,
    );
  }

  final RewardsRepository _rewardsRepository;

  Future<void> _checkShouldShowOnboarding(
    _CheckShouldShowOnboarding event,
    Emitter<ShowRewardsOnboardingState> emit,
  ) async {
    emit(
      const ShowRewardsOnboardingState.checkingWhetherToShow(),
    );

    final result = await _rewardsRepository.showRewardsOnboarding;

    emit(
      switch (result) {
        true => const ShowRewardsOnboardingState.shouldShow(),
        false => const ShowRewardsOnboardingState.shouldNotShow()
      },
    );

    if (result) {
      await _rewardsRepository.setShowRewardsOnboarding(
        value: false,
      );
    }
  }
}
