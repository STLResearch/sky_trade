import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_ways/features/u_a_s_restrictions/data/data_sources/u_a_s_restrictions_remote_data_source.dart';
import 'package:sky_ways/features/u_a_s_restrictions/data/repositories/u_a_s_restrictions_repository_implementation.dart';
import 'package:sky_ways/features/u_a_s_restrictions/domain/repositories/u_a_s_restrictions_repository.dart';
import 'package:sky_ways/features/u_a_s_restrictions/presentation/blocs/geo_hash_bloc/geo_hash_bloc.dart'
    show GeoHashBloc;
import 'package:sky_ways/features/u_a_s_restrictions/presentation/blocs/u_a_s_restrictions_bloc/u_a_s_restrictions_bloc.dart'
    show UASRestrictionsBloc;

final _sl = GetIt.I;

Future<void> registerUASRestrictionsServices() async {
  _sl
    // BLoCs
    ..registerFactory<GeoHashBloc>(
      () => GeoHashBloc(
        _sl(),
      ),
    )
    ..registerFactory<UASRestrictionsBloc>(
      () => UASRestrictionsBloc(
        _sl(),
      ),
    )

    // Repositories
    ..registerLazySingleton<UASRestrictionsRepository>(
      () => UASRestrictionsRepositoryImplementation(
        _sl(),
      ),
    )

    // Data sources
    ..registerLazySingleton<UASRestrictionsRemoteDataSource>(
      () => UASRestrictionsRemoteDataSourceImplementation(
        _sl(),
      ),
    );
}
