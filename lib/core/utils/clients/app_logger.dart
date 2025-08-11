// SPDX-License-Identifier: UNLICENSED
                            
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart' show kDebugMode, kProfileMode;
import 'package:logger/logger.dart' show Logger;
import 'package:logger/web.dart' show Level, PrettyPrinter;
import 'package:sentry_flutter/sentry_flutter.dart' show Sentry;
import 'package:sky_trade/core/resources/numbers/local.dart'
    show one, ten, threeHundred, zero;
import 'package:sky_trade/core/resources/strings/environments.dart'
    show devEnvironment, flavours;
import 'package:sky_trade/core/utils/enums/local.dart' show LogLevel;
import 'package:sky_trade/injection_container.dart' show serviceLocator;

abstract final class AppLogger {
  static void log({
    required String message,
    required LogLevel logLevel,
    StackTrace? stackTrace,
  }) {
    if (logLevel == LogLevel.info && !_isSuitableEnvironmentToLogToConsole) {
      _logMessageToSentry(
        message: message,
      );

      return;
    }

    if (logLevel == LogLevel.error || logLevel == LogLevel.fatalError) {
      if (!_isSuitableEnvironmentToLogToConsole) {
        _logExceptionToSentry(
          message: message,
          stackTrace: stackTrace,
        );

        return;
      }

      _recordErrorToFirebaseCrashlytics(
        message: message,
        stackTrace: stackTrace,
      );

      return;
    }

    _logWithAppropriateLevelUsing(
      logLevel: logLevel,
      message: message,
      stackTrace: stackTrace,
    );
  }

  static bool get _isSuitableEnvironmentToLogToConsole =>
      kDebugMode || kProfileMode || _environment == devEnvironment;

  static String get _environment => const String.fromEnvironment(
        flavours,
        defaultValue: devEnvironment,
      );

  static Future<void> _logMessageToSentry({
    required String message,
  }) =>
      Sentry.captureMessage(
        message,
      );

  static Future<void> _logExceptionToSentry({
    required String message,
    required StackTrace? stackTrace,
  }) =>
      Sentry.captureException(
        message,
        stackTrace: stackTrace,
      );

  static Future<void> _recordErrorToFirebaseCrashlytics({
    required String message,
    required StackTrace? stackTrace,
  }) =>
      serviceLocator<FirebaseCrashlytics>().recordError(
        message,
        stackTrace,
      );

  static void _logWithAppropriateLevelUsing({
    required LogLevel logLevel,
    required String message,
    required StackTrace? stackTrace,
  }) =>
      switch (logLevel) {
        LogLevel.trace => _logger.t(
            message,
            stackTrace: stackTrace,
          ),
        LogLevel.debug => _logger.d(
            message,
            stackTrace: stackTrace,
          ),
        LogLevel.warning => _logger.w(
            message,
            stackTrace: stackTrace,
          ),
        LogLevel.info => _logger.i(
            message,
            stackTrace: stackTrace,
          ),
        LogLevel.error => _logger.e(
            message,
            stackTrace: stackTrace,
          ),
        LogLevel.fatalError => _logger.f(
            message,
            stackTrace: stackTrace,
          ),
      };

  static Logger get _logger => Logger(
        level: Level.all,
        printer: PrettyPrinter(
          methodCount: zero,
          errorMethodCount: ten,
          lineLength: threeHundred,
          stackTraceBeginIndex: one,
          excludeBox: {
            Level.trace: true,
          },
        ),
      );
}
