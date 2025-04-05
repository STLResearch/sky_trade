import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_trade/features/drone_flight_path/data/data_sources/drone_flight_path_remote_data_source.dart';
import 'package:sky_trade/features/drone_flight_path/data/repositories/drone_flight_path_repository_implementation.dart';
import 'package:sky_trade/features/drone_flight_path/domain/repositories/drone_flight_path_repository.dart';
import 'package:sky_trade/features/drone_flight_path/presentation/blocs/drone_flight_path_bloc/drone_flight_path_bloc.dart';

final _sl = GetIt.I;

Future<void> registerDroneFlightPathServices() async {
  _sl
    // BLoCs
    ..registerFactory<DroneFlightPathBloc>(
      () => DroneFlightPathBloc(
        _sl(),
      ),
    )
    // Repositories
    ..registerLazySingleton<DroneFlightPathRepository>(
      () => DroneFlightPathRepositoryImplementation(
        _sl(),
      ),
    )

    // Data sources
    ..registerLazySingleton<DroneFlightPathRemoteDataSource>(
      () => DroneFlightPathRemoteDataSourceImplementation(
        _sl(),
      ),
    );
}
