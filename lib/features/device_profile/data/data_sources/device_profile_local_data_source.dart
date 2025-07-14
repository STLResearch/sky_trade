import 'package:shared_preferences/shared_preferences.dart'
    show SharedPreferencesWithCache;
import 'package:sky_trade/core/resources/strings/local.dart'
    show deviceUUIDKey;

abstract interface class DeviceUUIDLocalDataSource {
  Future<bool> checkDeviceUUIDExists();

  Future<void> saveDeviceUUIDToCache({
    required String deviceUUIDValue,
  });
}

final class DeviceUUIDLocalDataSourceImplementation
    implements DeviceUUIDLocalDataSource {
  const DeviceUUIDLocalDataSourceImplementation({
    required Future<SharedPreferencesWithCache> sharedPreferencesWithCache,
  }) : _sharedPreferencesWithCache = sharedPreferencesWithCache;

  final Future<SharedPreferencesWithCache> _sharedPreferencesWithCache;

  @override
  Future<bool> checkDeviceUUIDExists() async {
    final preferences = await _sharedPreferencesWithCache;
    return preferences.containsKey(deviceUUIDKey);
  }

  @override
  Future<void> saveDeviceUUIDToCache({
    required String deviceUUIDValue,
  }) async {
    final preferences = await _sharedPreferencesWithCache;
    await preferences.setString(deviceUUIDKey, deviceUUIDValue);
  }
}
