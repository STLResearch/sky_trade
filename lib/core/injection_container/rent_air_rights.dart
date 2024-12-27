import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_trade/features/rent_air_rights/data/data_sources/rent_air_rights_remote_data_source.dart';
import 'package:sky_trade/features/rent_air_rights/data/repositories/rent_air_rights_repository_implementation.dart';
import 'package:sky_trade/features/rent_air_rights/domain/repositories/rent_air_rights_repository.dart';

final _sl = GetIt.I;

Future<void> registerRentAirRightsServices() async {
  _sl
    // BLoCs

    // Repositories
    ..registerLazySingleton<RentAirRightsRepository>(
      () => RentAirRightsRepositoryImplementation(
        _sl(),
      ),
    )

    // Data sources
    ..registerLazySingleton<RentAirRightsRemoteDataSource>(
      () => RentAirRightsRemoteDataSourceImplementation(
        _sl(),
      ),
    );
}
