import 'package:sky_ways/core/resources/strings/local.dart'
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

enum BluetoothAdapterState {
  unknown,
  unavailable,
  unauthorized,
  turningOn,
  on,
  turningOff,
  off,
}
