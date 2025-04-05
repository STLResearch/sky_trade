import 'package:dart_geohash/dart_geohash.dart' show GeoHash;
import 'package:dartz/dartz.dart' show Either;
import 'package:sky_trade/core/errors/failures/weather_failure.dart';
import 'package:sky_trade/core/resources/numbers/networking.dart' show eight;
import 'package:sky_trade/core/utils/clients/data_handler.dart';
import 'package:sky_trade/features/weather/data/data_sources/weather_remote_data_source.dart'
    show WeatherRemoteDataSource;
import 'package:sky_trade/features/weather/domain/entities/weather_entity.dart'
    show WeatherEntity;
import 'package:sky_trade/features/weather/domain/repositories/weather_repository.dart';

final class WeatherRepositoryImplementation
    with DataHandler
    implements WeatherRepository {
  const WeatherRepositoryImplementation(
    WeatherRemoteDataSource weatherRemoteDataSource,
  ) : _weatherRemoteDataSource = weatherRemoteDataSource;

  final WeatherRemoteDataSource _weatherRemoteDataSource;

  @override
  Future<Either<WeatherFailure, WeatherEntity>> getWeatherConditionOf({
    required String geoHash,
  }) =>
      handleData<WeatherFailure, WeatherEntity>(
        dataSourceOperation: () =>
            _weatherRemoteDataSource.getWeatherConditionOf(
          coordinates: (
            longitude: GeoHash(geoHash).longitude(
              decimalAccuracy: eight,
            ),
            latitude: GeoHash(geoHash).latitude(
              decimalAccuracy: eight,
            ),
          ),
        ),
        onSuccess: (weatherEntity) => weatherEntity,
        onFailure: (_) => WeatherFailure(),
      );
}
