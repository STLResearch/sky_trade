import 'package:flutter/foundation.dart' show kDebugMode, kProfileMode;
import 'package:logger/logger.dart' show Logger;
import 'package:logger/web.dart' show Level, PrettyPrinter;
import 'package:sentry_flutter/sentry_flutter.dart' show Sentry;
import 'package:sky_trade/core/resources/strings/environments.dart'
    show devEnvironment, flavours;
import 'package:sky_trade/core/utils/enums/local.dart' show LogType;

String get _environment => const String.fromEnvironment(
      flavours,
      defaultValue: devEnvironment,
    );

bool get _shouldLogToConsole =>
    kDebugMode || kProfileMode || _environment == devEnvironment;

final class AppLogger {
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
    StackTrace? stackTrace,
    LogType logType = LogType.debug,
  }) {
    if (!_shouldLogToConsole) {
      _logToSentry(
        message: message,
        stackTrace: stackTrace,
      );
      return;
    }

    switch (logType) {
      case LogType.trace:
        _logger.t(
          message,
          stackTrace: stackTrace,
        );

      case LogType.debug:
        _logger.d(
          message,
          stackTrace: stackTrace,
        );

      case LogType.warning:
        _logger.w(
          message,
          stackTrace: stackTrace,
        );

      case LogType.info:
        _logger.i(
          message,
          stackTrace: stackTrace,
        );

      case LogType.error:
        _logger.e(
          message,
          stackTrace: stackTrace,
        );

      case LogType.fatalError:
        _logger.f(
          message,
          stackTrace: stackTrace,
        );
    }
  }

  static Future<void> _logToSentry({
    required String message,
    StackTrace? stackTrace,
  }) async =>
      Sentry.captureException(
        message,
        stackTrace: stackTrace,
      );
}
