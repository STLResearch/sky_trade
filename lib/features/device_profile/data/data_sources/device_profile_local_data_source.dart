import 'package:shared_preferences/shared_preferences.dart'
    show SharedPreferencesWithCache;
import 'package:sky_trade/core/resources/strings/local.dart' show deviceUUIDKey;
import 'package:uuid/data.dart' show V4Options;
import 'package:uuid/rng.dart' show CryptoRNG;
import 'package:uuid/uuid.dart' show Uuid;

abstract interface class DeviceProfileLocalDataSource {
  Future<bool> checkDeviceUUIDExists();

  Future<void> generateAndCacheDeviceUUID();
}

final class DeviceProfileLocalDataSourceImplementation
    implements DeviceProfileLocalDataSource {
  const DeviceProfileLocalDataSourceImplementation({
    required Future<SharedPreferencesWithCache> sharedPreferencesWithCache,
  }) : _sharedPreferencesWithCache = sharedPreferencesWithCache;

  final Future<SharedPreferencesWithCache> _sharedPreferencesWithCache;

  @override
  Future<bool> checkDeviceUUIDExists() async {
    final preferences = await _sharedPreferencesWithCache;

    return preferences.containsKey(
      deviceUUIDKey,
    );
  }

  @override
  Future<void> generateAndCacheDeviceUUID() async {
    final preferences = await _sharedPreferencesWithCache;

    final deviceUUID = const Uuid().v4(
      config: V4Options(
        null,
        CryptoRNG(),
      ),
    );

    await preferences.setString(
      deviceUUIDKey,
      deviceUUID,
    );
  }
}
