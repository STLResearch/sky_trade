// SPDX-License-Identifier: UNLICENSED
                            
import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_trade/features/geo_hash/data/repositories/geo_hash_repository_implementation.dart';
import 'package:sky_trade/features/geo_hash/domain/repositories/geo_hash_repository.dart';
import 'package:sky_trade/features/geo_hash/presentation/blocs/geo_hash_bloc/geo_hash_bloc.dart'
    show GeoHashBloc;

final _sl = GetIt.I;

Future<void> registerGeoHashServices() async {
  _sl
    // BLoCs
    ..registerFactory<GeoHashBloc>(
      () => GeoHashBloc(
        _sl(),
      ),
    )

    // Repositories
    ..registerLazySingleton<GeoHashRepository>(
      GeoHashRepositoryImplementation.new,
    );
}
