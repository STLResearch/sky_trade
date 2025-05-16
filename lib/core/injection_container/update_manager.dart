import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_trade/features/update_manager/data/data_sources/update_manager_remote_data_source.dart'
    show
        UpdateManagerRemoteDataSource,
        UpdateManagerRemoteDataSourceImplementation;
import 'package:sky_trade/features/update_manager/data/repositories/update_manager_repository_implementation.dart';
import 'package:sky_trade/features/update_manager/domain/repositories/update_manager_repository.dart';
import 'package:sky_trade/features/update_manager/presentation/upgrade_bloc/update_manager_bloc.dart'
    show UpdateManagerBloc;

final _sl = GetIt.I;

Future<void> registerUpdateManagerServices() async {
  _sl
    // BLoCs
    ..registerFactory<UpdateManagerBloc>(
      () => UpdateManagerBloc(
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
