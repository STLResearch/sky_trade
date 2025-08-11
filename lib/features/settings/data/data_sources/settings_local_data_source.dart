// SPDX-License-Identifier: UNLICENSED
                            
import 'package:firebase_analytics/firebase_analytics.dart'
    show FirebaseAnalytics;
import 'package:shared_preferences/shared_preferences.dart'
    show SharedPreferencesWithCache;
import 'package:sky_trade/core/resources/strings/local.dart'
    show analyticsStateKey;

abstract interface class SettingsLocalDataSource {
  Future<bool> isAnalyticsCollectionEnabled();

  Future<void> setAnalyticsCollectionEnabled({
    required bool value,
  });
}

final class SettingsLocalDataSourceImplementation
    implements SettingsLocalDataSource {
  const SettingsLocalDataSourceImplementation({
    required Future<SharedPreferencesWithCache> sharedPreferencesWithCache,
    required FirebaseAnalytics firebaseAnalytics,
  })  : _sharedPreferencesWithCache = sharedPreferencesWithCache,
        _firebaseAnalytics = firebaseAnalytics;

  final Future<SharedPreferencesWithCache> _sharedPreferencesWithCache;

  final FirebaseAnalytics _firebaseAnalytics;

  @override
  Future<bool> isAnalyticsCollectionEnabled() async {
    final preferences = await _sharedPreferencesWithCache;

    final analyticsState = preferences.getBool(
      analyticsStateKey,
    );

    return analyticsState ?? false;
  }

  @override
  Future<void> setAnalyticsCollectionEnabled({
    required bool value,
  }) async {
    final preferences = await _sharedPreferencesWithCache;

    await Future.wait(
      [
        _firebaseAnalytics.setAnalyticsCollectionEnabled(
          value,
        ),
        preferences.setBool(
          analyticsStateKey,
          value,
        ),
      ],
    );
  }
}
