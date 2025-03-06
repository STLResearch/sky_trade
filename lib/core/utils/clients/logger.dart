import 'package:flutter/foundation.dart' show kDebugMode, kProfileMode;
import 'package:logger/logger.dart' show Logger;
import 'package:logger/web.dart' show Level, PrettyPrinter;
import 'package:sentry_flutter/sentry_flutter.dart' show Sentry;
import 'package:sky_trade/core/resources/strings/environments.dart'
    show devEnvironment, flavours;
import 'package:sky_trade/core/utils/enums/local.dart' show LogEnvironment, LogType;

String get _environment => const String.fromEnvironment(
      flavours,
      defaultValue: devEnvironment,
    );

LogEnvironment get _logEnvironment =>
    (kDebugMode || kProfileMode || _environment == devEnvironment)
        ? LogEnvironment.consoleLogger
        : LogEnvironment.sentryLogger;

final class ConsoleLogger {
  static final Logger _logger = Logger(
    level: Level.all,
    printer: PrettyPrinter(
      methodCount: 0,
      errorMethodCount: 10,
      lineLength: 300,
      stackTraceBeginIndex: 1,
      excludeBox: {
        Level.trace: true,
      },
    ),
  );

  static void log({
    required String message,
    Object? error,
    StackTrace? stackTrace,
    LogType logType = LogType.debug,
  }) {
    if (_logEnvironment != LogEnvironment.consoleLogger) {
      return;
    }

    switch (logType) {
      case LogType.trace:
        _logger.t(
          message,
          error: error,
          stackTrace: stackTrace,
        );

      case LogType.debug:
        _logger.d(
          message,
          error: error,
          stackTrace: stackTrace,
        );

      case LogType.warning:
        _logger.w(
          message,
          error: error,
          stackTrace: stackTrace,
        );

      case LogType.info:
        _logger.i(
          message,
          error: error,
          stackTrace: stackTrace,
        );

      case LogType.error:
        _logger.e(
          message,
          error: error,
          stackTrace: stackTrace,
        );

      case LogType.fatalError:
        _logger.f(
          message,
          error: error,
          stackTrace: stackTrace,
        );
    }
  }
}

final class SentryLogger {
  static Future<void> recordMessage(
    String message,
  ) async {
    if (_logEnvironment != LogEnvironment.sentryLogger) {
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
    if (_logEnvironment != LogEnvironment.sentryLogger) {
      return;
    }

    await Sentry.captureException(
      exception,
      stackTrace: stackTrace,
    );
  }
}
