import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:sky_trade/core/resources/numbers/local.dart'
    show fifty, one, sixty, zero;
import 'package:sky_trade/core/resources/strings/local.dart'
    show sessionTokenAgeKey, sessionTokenKey, sessionTokenUsageCountKey;
import 'package:uuid_v4/uuid_v4.dart';

abstract interface class SearchAutocompleteLocalDataSource {
  Future<String> get sessionToken;
}

final class SearchAutocompleteLocalDataSourceImplementation
    implements SearchAutocompleteLocalDataSource {
  const SearchAutocompleteLocalDataSourceImplementation(
    FlutterSecureStorage flutterSecureStorage,
  ) : _flutterSecureStorage = flutterSecureStorage;

  final FlutterSecureStorage _flutterSecureStorage;

  @override
  Future<String> get sessionToken async {
    var sessionToken = await _getCachedSessionToken();

    final shouldRotateSessionToken = await _sessionTokenNeedsRotation();

    if (shouldRotateSessionToken) {
      sessionToken = _generateNewSessionToken();

      await _cacheSessionToken(
        sessionToken,
      );

      await _cacheSessionTokenUsageCount(
        zero,
      );

      await _cacheSessionTokenAge(
        DateTime.now(),
      );
    }

    await _incrementSessionTokenUsageCountBy(
      one,
    );

    return sessionToken;
  }

  Future<String> _getCachedSessionToken() async {
    var sessionToken = await _flutterSecureStorage.read(
      key: sessionTokenKey,
    );

    if (sessionToken == null) {
      sessionToken = _generateNewSessionToken();

      await _cacheSessionToken(
        sessionToken,
      );
    }

    return sessionToken;
  }

  Future<bool> _sessionTokenNeedsRotation() async {
    final sessionTokenUsageCount = await _getSessionTokenUsageCount();

    final sessionTokenAgeInMinutes = await _getSessionTokenAgeInMinutes();

    return sessionTokenUsageCount == fifty || sessionTokenAgeInMinutes >= sixty;
  }

  String _generateNewSessionToken() {
    final uuidV4 = UUIDv4();
    final sessionToken = uuidV4.toString();

    return sessionToken;
  }

  Future<void> _cacheSessionToken(
    String token,
  ) =>
      _flutterSecureStorage.write(
        key: sessionTokenKey,
        value: token,
      );

  Future<void> _incrementSessionTokenUsageCountBy(
    int increment,
  ) async {
    final sessionTokenUsageCount = await _getSessionTokenUsageCount();

    final incrementedSessionTokenUsageCount =
        sessionTokenUsageCount + increment;

    await _cacheSessionTokenUsageCount(
      incrementedSessionTokenUsageCount,
    );
  }

  Future<int> _getSessionTokenUsageCount() async {
    var sessionTokenUsageCountString = await _flutterSecureStorage.read(
      key: sessionTokenUsageCountKey,
    );

    if (sessionTokenUsageCountString == null) {
      const count = zero;

      sessionTokenUsageCountString = count.toString();

      await _cacheSessionTokenUsageCount(
        count,
      );
    }

    final sessionTokenUsageCount = int.parse(
      sessionTokenUsageCountString,
    );

    return sessionTokenUsageCount;
  }

  Future<void> _cacheSessionTokenUsageCount(
    int count,
  ) =>
      _flutterSecureStorage.write(
        key: sessionTokenUsageCountKey,
        value: count.toString(),
      );

  Future<int> _getSessionTokenAgeInMinutes() async {
    final sessionTokenAge = await _getSessionTokenAge();

    final sessionTokenAgeInMinutes = DateTime.now()
        .difference(
          sessionTokenAge,
        )
        .inMinutes;

    return sessionTokenAgeInMinutes;
  }

  Future<DateTime> _getSessionTokenAge() async {
    var iso8601AgeString = await _flutterSecureStorage.read(
      key: sessionTokenAgeKey,
    );

    if (iso8601AgeString == null) {
      final now = DateTime.now();

      iso8601AgeString = now.toIso8601String();

      await _cacheSessionTokenAge(
        now,
      );
    }

    final age = DateTime.parse(
      iso8601AgeString,
    );

    return age;
  }

  Future<void> _cacheSessionTokenAge(
    DateTime age,
  ) =>
      _flutterSecureStorage.write(
        key: sessionTokenAgeKey,
        value: age.toIso8601String(),
      );
}
