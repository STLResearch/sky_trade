// SPDX-License-Identifier: UNLICENSED
                            
import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_trade/features/drone_insights/data/data_sources/drone_insights_remote_data_source.dart';
import 'package:sky_trade/features/drone_insights/data/repositories/drone_insights_repository_implementation.dart';
import 'package:sky_trade/features/drone_insights/domain/repositories/drone_insights_repository.dart';
import 'package:sky_trade/features/drone_insights/presentation/blocs/filter_drone_insights_bloc/filter_drone_insights_bloc.dart'
    show FilterDroneInsightsBloc;
import 'package:sky_trade/features/drone_insights/presentation/blocs/track_drone_insights_bloc/track_drone_insights_bloc.dart'
    show TrackDroneInsightsBloc;

final _sl = GetIt.I;

Future<void> registerDroneInsightsServices() async {
  _sl
    // BLoCs
    ..registerFactory<FilterDroneInsightsBloc>(
      () => FilterDroneInsightsBloc(
        _sl(),
      ),
    )
    ..registerFactory<TrackDroneInsightsBloc>(
      () => TrackDroneInsightsBloc(
        _sl(),
      ),
    )

    // Repositories
    ..registerLazySingleton<DroneInsightsRepository>(
      () => DroneInsightsRepositoryImplementation(
        _sl(),
      ),
    )

    // Data sources
    ..registerLazySingleton<DroneInsightsRemoteDataSource>(
      () => DroneInsightsRemoteDataSourceImplementation(
        _sl(),
      ),
    );
}
