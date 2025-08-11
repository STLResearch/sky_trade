// SPDX-License-Identifier: UNLICENSED
                            
import 'package:shared_preferences/shared_preferences.dart'
    show SharedPreferencesWithCache;
import 'package:sky_trade/core/resources/strings/local.dart'
    show shouldShowRewardsOnboardingKey;

abstract interface class RewardsLocalDataSource {
  Future<bool> get showRewardsOnboarding;

  Future<void> setShowRewardsOnboarding({
    required bool value,
  });
}

final class RewardsLocalDataSourceImplementation
    implements RewardsLocalDataSource {
  const RewardsLocalDataSourceImplementation(
    Future<SharedPreferencesWithCache> sharedPreferencesWithCache,
  ) : _sharedPreferencesWithCache = sharedPreferencesWithCache;

  final Future<SharedPreferencesWithCache> _sharedPreferencesWithCache;

  @override
  Future<bool> get showRewardsOnboarding async {
    final preferences = await _sharedPreferencesWithCache;

    final showRewardsOnboarding = preferences.getBool(
      shouldShowRewardsOnboardingKey,
    );

    return showRewardsOnboarding ?? true;
  }

  @override
  Future<void> setShowRewardsOnboarding({
    required bool value,
  }) async {
    final preferences = await _sharedPreferencesWithCache;

    await preferences.setBool(
      shouldShowRewardsOnboardingKey,
      value,
    );
  }
}
