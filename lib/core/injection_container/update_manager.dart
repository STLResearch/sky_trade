// SPDX-License-Identifier: UNLICENSED
                            
import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_trade/features/update_manager/data/data_sources/update_manager_remote_data_source.dart';
import 'package:sky_trade/features/update_manager/data/repositories/update_manager_repository_implementation.dart';
import 'package:sky_trade/features/update_manager/domain/repositories/update_manager_repository.dart';
import 'package:sky_trade/features/update_manager/presentation/blocs/compatible_backend_api_version_bloc/compatible_backend_api_version_bloc.dart'
    show CompatibleBackendApiVersionBloc;

final _sl = GetIt.I;

Future<void> registerUpdateManagerServices() async {
  _sl
    // BLoCs
    ..registerFactory<CompatibleBackendApiVersionBloc>(
      () => CompatibleBackendApiVersionBloc(
        _sl(),
      ),
    )

    // Repositories
    ..registerLazySingleton<UpdateManagerRepository>(
      () => UpdateManagerRepositoryImplementation(
        _sl(),
      ),
    )

    // Data sources
    ..registerLazySingleton<UpdateManagerRemoteDataSource>(
      () => UpdateManagerRemoteDataSourceImplementation(
        _sl(),
      ),
    );
}
