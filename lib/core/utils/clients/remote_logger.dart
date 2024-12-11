import 'package:flutter/foundation.dart' show kDebugMode, kProfileMode;
import 'package:sentry_flutter/sentry_flutter.dart' show Sentry;
import 'package:sky_trade/core/resources/strings/environments.dart'
    show devEnvironment, flavours;

final class SentryLogger {
  static Future<void> recordMessage(
    String message,
  ) async {
    if (_isUnsuitableEnvironmentForRemoteLogging) {
      return;
    }

    await Sentry.captureMessage(
      message,
    );
  }

  static Future<void> recordException(
    Object exception, {
    StackTrace? stackTrace,
  }) async {
    if (_isUnsuitableEnvironmentForRemoteLogging) {
      return;
    }

    await Sentry.captureException(
      exception,
      stackTrace: stackTrace,
    );
  }

  static bool get _isUnsuitableEnvironmentForRemoteLogging =>
      kDebugMode || kProfileMode || _environment == devEnvironment;

  static String get _environment => const String.fromEnvironment(
        flavours,
        defaultValue: devEnvironment,
      );
}
