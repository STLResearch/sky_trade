import 'package:sky_trade/core/resources/strings/local.dart'
    show jsonFileEnding, txtFileEnding;

enum CacheType {
  jsonFile(
    jsonFileEnding,
  ),
  jsonListFile(
    jsonFileEnding,
  ),
  txtFile(
    txtFileEnding,
  );

  const CacheType(
    this.ending,
  );

  final String ending;
}

enum LogEnvironment {
  consoleLogger,
  sentryLogger
}

enum LogType {
  trace,
  debug,
  warning,
  info,
  error,
  fatalError
}
