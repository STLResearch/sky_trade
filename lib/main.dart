import 'dart:io' show Platform;
import 'dart:math' show Random;

import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:firebase_analytics/firebase_analytics.dart'
    show FirebaseAnalytics;
import 'package:firebase_core/firebase_core.dart' show Firebase;
import 'package:flutter/foundation.dart'
    show VoidCallback, kDebugMode, kIsWeb, kProfileMode;
import 'package:flutter/material.dart'
    show Widget, WidgetsFlutterBinding, runApp;
import 'package:flutter_clarity/clarity.dart'
    show Clarity, ClarityConfig, LogLevel;
import 'package:flutter_dotenv/flutter_dotenv.dart' show dotenv;
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart'
    show Bloc, HydratedBloc, HydratedStorage;
import 'package:path_provider/path_provider.dart'
    show getApplicationDocumentsDirectory;
import 'package:sentry_flutter/sentry_flutter.dart' show SentryFlutter;
import 'package:shared_preferences/shared_preferences.dart'
    show SharedPreferencesWithCache;
import 'package:sky_trade/app.dart';
import 'package:sky_trade/app_bloc_observer.dart';
import 'package:sky_trade/core/resources/numbers/local.dart'
    show one, thirtySix;
import 'package:sky_trade/core/resources/numbers/ui.dart' show oneDotNil;
import 'package:sky_trade/core/resources/strings/environments.dart'
    show
        devEnvironment,
        environmentVariablesFileName,
        flavours,
        stageEnvironment;
import 'package:sky_trade/core/resources/strings/local.dart'
    show analyticsStateKey, base36UpperBound;
import 'package:sky_trade/core/resources/strings/secret_keys.dart'
    show clarityProjectId, sentryDsn;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show fullStop;
import 'package:sky_trade/firebase_options.dart';
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
      fileName: environmentVariablesFileName + fullStop + _environment,
    );

Future<void> _maybeInitializeSentryReporting({
  required VoidCallback then,
}) async {
  if (_isUnsuitableEnvironmentForDataCollection) {
    then();

    return;
  }

  await SentryFlutter.init(
    (options) {
      options
        ..environment = _environment
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

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: switch (kIsWeb) {
      true => HydratedStorage.webStorageDirectory,
      false => await getApplicationDocumentsDirectory(),
    },
  );

  await registerServices();

  await FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(
    !_isUnsuitableEnvironmentForDataCollection ||
        await _shouldCollectAnalyticsData(),
  );

  Bloc.observer = const AppBlocObserver();
}

bool get _isUnsuitableEnvironmentForDataCollection =>
    kDebugMode || kProfileMode || _environment == devEnvironment;

Future<bool> _shouldCollectAnalyticsData() async {
  final preferences =
      await serviceLocator<Future<SharedPreferencesWithCache>>();

  final analyticsState = preferences.getBool(
    analyticsStateKey,
  );

  if (!Platform.isIOS) return analyticsState ?? false;

  return await AppTrackingTransparency.trackingAuthorizationStatus ==
          TrackingStatus.authorized &&
      (analyticsState ?? false);
}

Widget get _app => switch (_environment == devEnvironment && kDebugMode) {
      true => const App(),
      false => Clarity(
          app: const App(),
          clarityConfig: _clarityConfig,
        ),
    };

ClarityConfig get _clarityConfig => ClarityConfig(
      projectId: dotenv.env[clarityProjectId]!,
      userId: _clarityBase36UserId,
      logLevel: _clarityLogLevel,
    );

String get _clarityBase36UserId {
  final upperBoundDecimal = int.parse(
    base36UpperBound,
    radix: thirtySix,
  );

  final randomNumber = Random().nextInt(
        upperBoundDecimal - one,
      ) +
      one;

  final base36Value = randomNumber.toRadixString(
    thirtySix,
  );

  return base36Value;
}

LogLevel get _clarityLogLevel {
  if (_environment == devEnvironment || _environment == stageEnvironment) {
    return LogLevel.Verbose;
  }

  return LogLevel.Error;
}

String get _environment => const String.fromEnvironment(
      flavours,
      defaultValue: devEnvironment,
    );
