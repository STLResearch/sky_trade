import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart' show GetIt;

final _sl = GetIt.I;

Future<void> registerExternalServices() async {
  _sl.registerLazySingleton<FlutterSecureStorage>(
    FlutterSecureStorage.new,
  );
}
