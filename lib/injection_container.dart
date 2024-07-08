import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_ways/features/web_3_auth/data/repositories/web_3_auth_repository_implementation.dart';
import 'package:sky_ways/features/web_3_auth/domain/repositories/web_3_auth_repository.dart';

final _sl = GetIt.I;

Future<void> registerServices() async {
  _sl.registerLazySingleton<Web3AuthRepository>(
    Web3AuthRepositoryImplementation.new,
  );
}
