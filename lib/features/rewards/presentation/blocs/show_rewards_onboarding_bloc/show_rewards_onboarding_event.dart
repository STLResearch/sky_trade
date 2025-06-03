part of 'show_rewards_onboarding_bloc.dart';

@freezed
class ShowRewardsOnboardingEvent with _$ShowRewardsOnboardingEvent {
  const factory ShowRewardsOnboardingEvent.checkShouldShowOnboarding() =
      _CheckShouldShowOnboarding;
}
