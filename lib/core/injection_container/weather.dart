import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_ways/features/weather/data/data_sources/weather_remote_data_source.dart';
import 'package:sky_ways/features/weather/data/repository/weather_repository_implementation.dart';
import 'package:sky_ways/features/weather/domain/repositories/weather_repository.dart';
import 'package:sky_ways/features/weather/presentation/weather_bloc/weather_bloc.dart'
    show WeatherBloc;

final _sl = GetIt.I;

Future<void> registerWeatherServices() async {
  _sl
    // BLoCs
    ..registerFactory<WeatherBloc>(
      () => WeatherBloc(
        _sl(),
      ),
    )

    // Repositories
    ..registerLazySingleton<WeatherRepository>(
      () => WeatherRepositoryImplementation(
        _sl(),
      ),
    )

    // Data sources
    ..registerLazySingleton<WeatherRemoteDataSource>(
      () => WeatherRemoteDataSourceImplementation(
        _sl(),
      ),
    );
}
