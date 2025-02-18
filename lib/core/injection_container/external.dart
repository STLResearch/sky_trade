import 'package:app_links/app_links.dart';
import 'package:auth0_flutter/auth0_flutter.dart' show Auth0;
import 'package:firebase_analytics/firebase_analytics.dart'
    show FirebaseAnalytics;
import 'package:flutter_dotenv/flutter_dotenv.dart' show dotenv;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart' show GetIt;
import 'package:shared_preferences/shared_preferences.dart'
    show SharedPreferencesWithCache, SharedPreferencesWithCacheOptions;
import 'package:single_factor_auth_flutter/single_factor_auth_flutter.dart';
import 'package:sky_trade/core/resources/strings/local.dart'
    show analyticsStateKey;
import 'package:sky_trade/core/resources/strings/secret_keys.dart'
    show auth0ClientId, auth0Domain;

final _sl = GetIt.I;

Future<void> registerExternalServices() async {
  _sl
    ..registerLazySingleton<Auth0>(
      () => Auth0(
        dotenv.env[auth0Domain]!,
        dotenv.env[auth0ClientId]!,
      ),
    )
    ..registerLazySingleton<SingleFactAuthFlutter>(
      SingleFactAuthFlutter.new,
    )
    ..registerLazySingleton<FlutterSecureStorage>(
      FlutterSecureStorage.new,
    )
    ..registerLazySingleton<FirebaseAnalytics>(
      () => FirebaseAnalytics.instance,
    )
    ..registerLazySingleton<Future<SharedPreferencesWithCache>>(
      () => SharedPreferencesWithCache.create(
        cacheOptions: const SharedPreferencesWithCacheOptions(
          allowList: {
            analyticsStateKey,
          },
        ),
      ),
    )
    ..registerLazySingleton<AppLinks>(
      AppLinks.new,
    );
}
