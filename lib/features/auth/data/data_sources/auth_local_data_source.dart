import 'package:hive_ce/hive.dart' show Box, Hive;
import 'package:shared_preferences/shared_preferences.dart'
    show SharedPreferencesWithCache;
import 'package:sky_trade/core/resources/strings/local.dart'
    show
        auth0SessionForDeletedUserExistsKey,
        skyTradeUserBoxKey,
        skyTradeUserKey;
import 'package:sky_trade/features/auth/data/models/auth_model.dart'
    show SkyTradeUserModel;

abstract interface class AuthLocalDataSource {
  Future<bool> get auth0SessionForDeletedUserExists;

  Future<void> setAuth0SessionForDeletedUserExists({
    required bool value,
  });

  Future<SkyTradeUserModel?> get cachedSkyTradeUser;

  Future<void> cacheSkyTradeUser({
    required SkyTradeUserModel skyTradeUser,
  });

  Future<void> deleteCachedSkyTradeUser();

  Future<void> closeSkyTradeUserLocalStorageBox();
}

final class AuthLocalDataSourceImplementation implements AuthLocalDataSource {
  const AuthLocalDataSourceImplementation(
    Future<SharedPreferencesWithCache> sharedPreferencesWithCache,
  ) : _sharedPreferencesWithCache = sharedPreferencesWithCache;

  final Future<SharedPreferencesWithCache> _sharedPreferencesWithCache;

  @override
  Future<bool> get auth0SessionForDeletedUserExists async {
    final preferences = await _sharedPreferencesWithCache;

    final isAuth0SessionForDeletedUserExist = preferences.getBool(
      auth0SessionForDeletedUserExistsKey,
    );

    return isAuth0SessionForDeletedUserExist ?? false;
  }

  @override
  Future<void> setAuth0SessionForDeletedUserExists({
    required bool value,
  }) async {
    final preferences = await _sharedPreferencesWithCache;

    await preferences.setBool(
      auth0SessionForDeletedUserExistsKey,
      value,
    );
  }

  @override
  Future<SkyTradeUserModel?> get cachedSkyTradeUser async {
    final box = await _getBoxForStoringSkyTradeUserData();

    return box.get(
      skyTradeUserKey,
    ) as SkyTradeUserModel?;
  }

  @override
  Future<void> cacheSkyTradeUser({
    required SkyTradeUserModel skyTradeUser,
  }) async {
    final box = await _getBoxForStoringSkyTradeUserData();

    await box.put(
      skyTradeUserKey,
      skyTradeUser,
    );
  }

  @override
  Future<void> deleteCachedSkyTradeUser() async {
    final box = await _getBoxForStoringSkyTradeUserData();

    await box.delete(
      skyTradeUserKey,
    );
  }

  @override
  Future<void> closeSkyTradeUserLocalStorageBox() async {
    final box = await _getBoxForStoringSkyTradeUserData();

    await box.close();
  }

  Future<Box<dynamic>> _getBoxForStoringSkyTradeUserData() =>
      Hive.openBox<dynamic>(
        skyTradeUserBoxKey,
      );
}
