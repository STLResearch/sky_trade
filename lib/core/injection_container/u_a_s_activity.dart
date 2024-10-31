import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_trade/features/u_a_s_activity/data/data_sources/u_a_s_activity_remote_data_source.dart';
import 'package:sky_trade/features/u_a_s_activity/data/repositories/u_a_s_activity_repository_implementation.dart';
import 'package:sky_trade/features/u_a_s_activity/domain/repositories/u_a_s_activity_repository.dart';
import 'package:sky_trade/features/u_a_s_activity/presentation/blocs/u_a_s_activity_bloc/u_a_s_activity_bloc.dart'
    show UASActivityBloc;

final _sl = GetIt.I;

Future<void> registerUASActivityServices() async {
  _sl
    // BLoCs
    ..registerFactory<UASActivityBloc>(
      () => UASActivityBloc(
        _sl(),
      ),
    )

    // Repositories
    ..registerLazySingleton<UASActivityRepository>(
      () => UASActivityRepositoryImplementation(
        _sl(),
      ),
    )

    // Data sources
    ..registerLazySingleton<UASActivityRemoteDataSource>(
      () => UASActivityRemoteDataSourceImplementation(
        _sl(),
      ),
    );
}
