import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_trade/features/air_rights/data/data_source/air_rights_remote_data_source.dart';
import 'package:sky_trade/features/air_rights/data/repositories/air_rights_repository_implementation.dart';
import 'package:sky_trade/features/air_rights/domain/repositories/air_rights_repository.dart';

final _sl = GetIt.I;

Future<void> registerAirRightsServices() async {
  _sl
    // Repositories
    ..registerLazySingleton<AirRightsRepository>(
      () => AirRightsRepositoryImplementation(
        _sl(),
      ),
    )

    // Data sources
    ..registerLazySingleton<AirRightsRemoteDataSource>(
      () => AirRightsRemoteDataSourceImplementation(
        _sl(),
      ),
    );
}
