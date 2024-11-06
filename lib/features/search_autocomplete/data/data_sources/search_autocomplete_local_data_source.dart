import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:sky_trade/core/resources/strings/local.dart'
    show sessionTokenKey;
import 'package:uuid_v4/uuid_v4.dart';

const sessionTokenCountKey = 'session_token_count';
const sessionTokenTimestampKey = 'session_token_timestamp';
const int maxCallCount = 50;
const int maxTokenAgeMinutes = 60;

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
    final cachedSessionToken = await _getCachedSessionToken();
    final callCount = await _getCallCount();
    final tokenTimestamp = await _getTokenTimestamp();

    final isTokenExpired = tokenTimestamp != null &&
        DateTime.now().difference(tokenTimestamp).inMinutes >=
            maxTokenAgeMinutes;

    if (cachedSessionToken != null &&
        callCount < maxCallCount &&
        !isTokenExpired) {
      await _incrementCallCount(callCount);
      return cachedSessionToken;
    }

    final uuidV4 = UUIDv4();
    final newSessionToken = uuidV4.toString();
    await _cacheSessionToken(newSessionToken);

    return newSessionToken;
  }

  Future<void> _cacheSessionToken(String token) async {
    await _flutterSecureStorage.write(key: sessionTokenKey, value: token);
    await _flutterSecureStorage.write(key: sessionTokenCountKey, value: '0');
    await _flutterSecureStorage.write(
      key: sessionTokenTimestampKey,
      value: DateTime.now().toIso8601String(),
    );
  }

  Future<String?> _getCachedSessionToken() =>
      _flutterSecureStorage.read(key: sessionTokenKey);

  Future<int> _getCallCount() async {
    final countStr =
        await _flutterSecureStorage.read(key: sessionTokenCountKey);
    return int.tryParse(countStr ?? '0') ?? 0;
  }

  Future<DateTime?> _getTokenTimestamp() async {
    final timestampStr =
        await _flutterSecureStorage.read(key: sessionTokenTimestampKey);
    return timestampStr != null ? DateTime.tryParse(timestampStr) : null;
  }

  Future<void> _incrementCallCount(int currentCount) async {
    await _flutterSecureStorage.write(
      key: sessionTokenCountKey,
      value: (currentCount + 1).toString(),
    );
  }
}
