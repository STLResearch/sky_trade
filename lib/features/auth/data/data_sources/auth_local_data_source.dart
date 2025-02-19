import 'package:shared_preferences/shared_preferences.dart'
    show SharedPreferencesWithCache;
import 'package:sky_trade/core/resources/strings/local.dart'
    show auth0SessionForDeletedUserExistsKey;

abstract interface class AuthLocalDataSource {
  Future<bool> get auth0SessionForDeletedUserExists;

  Future<void> setAuth0SessionForDeletedUserExists({
    required bool value,
  });
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
}
