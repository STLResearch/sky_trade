import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_ways/features/cache_manager/data/repositories/cache_manager_repository_implementation.dart';
import 'package:sky_ways/features/cache_manager/domain/repositories/cache_manager_repository.dart';
import 'package:sky_ways/features/cache_manager/presentation/blocs/cache_data_bloc/cache_data_bloc.dart'
    show CacheDataBloc;
import 'package:sky_ways/features/cache_manager/presentation/blocs/cached_data_bloc/cached_data_bloc.dart'
    show CachedDataBloc;

final _sl = GetIt.I;

Future<void> registerCacheManagerServices() async {
  _sl
    // BLoCs
    ..registerFactory<CacheDataBloc>(
      () => CacheDataBloc(
        _sl(),
      ),
    )
    ..registerFactory<CachedDataBloc>(
      () => CachedDataBloc(
        _sl(),
      ),
    )

    // Repositories
    ..registerLazySingleton<CacheManagerRepository>(
      CacheManagerRepositoryImplementation.new,
    );
}
