import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:sky_trade/core/resources/strings/local.dart'
    show sessionTokenKey;
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
    final cachedSessionToken = await _getCachedSessionToken();

    if (cachedSessionToken != null) {
      return cachedSessionToken;
    }

    final uuidV4 = UUIDv4();
    final newSessionToken = uuidV4.toString();

    await _cacheSessionToken(
      newSessionToken,
    );

    return newSessionToken;
  }

  Future<void> _cacheSessionToken(
    String token,
  ) =>
      _flutterSecureStorage.write(
        key: sessionTokenKey,
        value: token,
      );

  Future<String?> _getCachedSessionToken() => _flutterSecureStorage.read(
        key: sessionTokenKey,
      );
}
