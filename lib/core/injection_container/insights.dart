import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_trade/features/insights/data/data_sources/insights_remote_data_source.dart';
import 'package:sky_trade/features/insights/data/repositories/insights_repository_implementation.dart';
import 'package:sky_trade/features/insights/domain/repositories/insights_repository.dart';
import 'package:sky_trade/features/insights/presentation/blocs/insights_bloc/insights_bloc.dart'
    show InsightsBloc;

final _sl = GetIt.I;

Future<void> registerInsightsServices() async {
  _sl
    // BLoCs
    ..registerFactory<InsightsBloc>(
      () => InsightsBloc(
        _sl(),
      ),
    )

    // Repositories
    ..registerLazySingleton<InsightsRepository>(
      () => InsightsRepositoryImplementation(
        _sl(),
      ),
    )

    // Data sources
    ..registerLazySingleton<InsightsRemoteDataSource>(
      () => InsightsRemoteDataSourceImplementation(
        _sl(),
      ),
    );
}
