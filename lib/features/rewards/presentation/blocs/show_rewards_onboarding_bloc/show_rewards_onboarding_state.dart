part of 'show_rewards_onboarding_bloc.dart';

@freezed
class ShowRewardsOnboardingState with _$ShowRewardsOnboardingState {
  const factory ShowRewardsOnboardingState.initial() = _Initial;

  const factory ShowRewardsOnboardingState.checkingWhetherToShow() =
      _CheckingWhetherToShow;

  const factory ShowRewardsOnboardingState.shouldShow() = _ShouldShow;

  const factory ShowRewardsOnboardingState.shouldNotShow() = _ShouldNotShow;
}
