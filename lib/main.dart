import 'dart:io' show Platform;

import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:firebase_analytics/firebase_analytics.dart'
    show FirebaseAnalytics;
import 'package:firebase_core/firebase_core.dart' show Firebase;
import 'package:flutter/foundation.dart'
    show VoidCallback, kDebugMode, kIsWeb, kProfileMode;
import 'package:flutter/material.dart' show WidgetsFlutterBinding, runApp;
import 'package:flutter_dotenv/flutter_dotenv.dart' show dotenv;
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart'
    show FlutterSecureStorage;
import 'package:hydrated_bloc/hydrated_bloc.dart'
    show Bloc, HydratedBloc, HydratedStorage;
import 'package:path_provider/path_provider.dart'
    show getApplicationDocumentsDirectory;
import 'package:sentry_flutter/sentry_flutter.dart' show SentryFlutter;
import 'package:sky_trade/app.dart';
import 'package:sky_trade/app_bloc_observer.dart';
import 'package:sky_trade/core/resources/numbers/ui.dart' show oneDotNil;
import 'package:sky_trade/core/resources/strings/environments.dart'
    show devEnvironment, environmentVariablesFileName, flavours;
import 'package:sky_trade/core/resources/strings/local.dart'
    show analyticsStateKey;
import 'package:sky_trade/core/resources/strings/secret_keys.dart'
    show sentryDsn;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show fullStop;
import 'package:sky_trade/firebase_options.dart';
import 'package:sky_trade/injection_container.dart';

void main() => _loadEnv().then(
      (_) => _maybeInitializeSentryReporting(
        then: () => _initializeImportantResources().then(
          (_) => runApp(
            const App(),
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
  final analyticsState = await serviceLocator<FlutterSecureStorage>().read(
    key: analyticsStateKey,
  );

  final analyticsEnabled = bool.tryParse(
        analyticsState ?? false.toString(),
      ) ??
      false;

  if (!Platform.isIOS) return analyticsEnabled;

  return await AppTrackingTransparency.trackingAuthorizationStatus ==
          TrackingStatus.authorized &&
      analyticsEnabled;
}

String get _environment => const String.fromEnvironment(
      flavours,
      defaultValue: devEnvironment,
    );
