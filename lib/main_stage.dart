import 'dart:io' show Platform;

import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:clarity_flutter/clarity_flutter.dart'
    show ClarityConfig, ClarityWidget, LogLevel;
import 'package:firebase_analytics/firebase_analytics.dart'
    show FirebaseAnalytics;
import 'package:firebase_core/firebase_core.dart'
    show Firebase, FirebaseOptions;
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart'
    show
        FlutterError,
        PlatformDispatcher,
        VoidCallback,
        kDebugMode,
        kIsWeb,
        kProfileMode;
import 'package:flutter/material.dart'
    show Widget, WidgetsFlutterBinding, runApp;
import 'package:flutter_dotenv/flutter_dotenv.dart' show dotenv;
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hive_ce_flutter/adapters.dart' show Hive, HiveX;
import 'package:hydrated_bloc/hydrated_bloc.dart'
    show Bloc, HydratedBloc, HydratedStorage, HydratedStorageDirectory;
import 'package:path_provider/path_provider.dart'
    show getApplicationDocumentsDirectory;
import 'package:sentry_flutter/sentry_flutter.dart' show SentryFlutter;
import 'package:shared_preferences/shared_preferences.dart'
    show SharedPreferencesWithCache;
import 'package:sky_trade/app.dart' show App;
import 'package:sky_trade/app_bloc_observer.dart';
import 'package:sky_trade/core/resources/numbers/ui.dart' show oneDotNil;
import 'package:sky_trade/core/resources/strings/environments.dart'
    show environmentVariablesFileName, stageEnvironment;
import 'package:sky_trade/core/resources/strings/local.dart'
    show analyticsStateKey;
import 'package:sky_trade/core/resources/strings/secret_keys.dart'
    show clarityProjectId, sentryDsn;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show fullStop;
import 'package:sky_trade/core/utils/adapters/hive/hive_registrar.g.dart';
import 'package:sky_trade/firebase_options_stage.dart';
import 'package:sky_trade/injection_container.dart';

void main() => _loadEnv().then(
      (_) => _maybeInitializeSentryReporting(
        then: () => _initializeImportantResources().then(
          (_) => runApp(
            _app,
          ),
        ),
      ),
    );

Future<void> _loadEnv() => dotenv.load(
      fileName: environmentVariablesFileName + fullStop + stageEnvironment,
    );

Future<void> _maybeInitializeSentryReporting({
  required VoidCallback then,
}) async {
  if (kDebugMode || kProfileMode) {
    then();

    return;
  }

  await SentryFlutter.init(
    (options) {
      options
        ..environment = stageEnvironment
        ..dsn = dotenv.env[sentryDsn]
        ..tracesSampleRate = oneDotNil
        ..profilesSampleRate = oneDotNil;
    },
    appRunner: then,
  );
}

Future<void> _initializeImportantResources() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  FlutterNativeSplash.preserve(
    widgetsBinding: widgetsBinding,
  );

  await Hive.initFlutter();
  Hive.registerAdapters();

  await Firebase.initializeApp(
    name: _firebaseOptions.projectId,
    options: _firebaseOptions,
  );

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: switch (kIsWeb) {
      true => HydratedStorageDirectory.web,
      false => HydratedStorageDirectory(
          (await getApplicationDocumentsDirectory()).path,
        ),
    },
  );

  await registerServices();

  await serviceLocator<FirebaseAnalytics>().setAnalyticsCollectionEnabled(
    await _shouldCollectAnalyticsData(),
  );

  final firebaseCrashlytics = serviceLocator<FirebaseCrashlytics>();

  FlutterError.onError = firebaseCrashlytics.recordFlutterFatalError;

  PlatformDispatcher.instance.onError = (error, stackTrace) {
    firebaseCrashlytics.recordError(
      error,
      stackTrace,
      fatal: true,
    );
    return true;
  };

  Bloc.observer = const AppBlocObserver();
}

FirebaseOptions get _firebaseOptions => DefaultFirebaseOptions.currentPlatform;

Future<bool> _shouldCollectAnalyticsData() async {
  final preferences =
      await serviceLocator<Future<SharedPreferencesWithCache>>();

  final analyticsState = preferences.getBool(
    analyticsStateKey,
  );

  if (!Platform.isIOS) return analyticsState ?? false;

  if ((await AppTrackingTransparency.trackingAuthorizationStatus ==
              TrackingStatus.restricted ||
          await AppTrackingTransparency.trackingAuthorizationStatus ==
              TrackingStatus.denied ||
          await AppTrackingTransparency.trackingAuthorizationStatus ==
              TrackingStatus.notSupported) &&
      (analyticsState ?? false)) {
    await preferences.setBool(
      analyticsStateKey,
      false,
    );
  }

  return await AppTrackingTransparency.trackingAuthorizationStatus ==
          TrackingStatus.authorized &&
      (analyticsState ?? false);
}

Widget get _app => ClarityWidget(
      app: const App(),
      clarityConfig: _clarityConfig,
    );

ClarityConfig get _clarityConfig => ClarityConfig(
      projectId: dotenv.env[clarityProjectId]!,
      logLevel: LogLevel.Verbose,
    );
