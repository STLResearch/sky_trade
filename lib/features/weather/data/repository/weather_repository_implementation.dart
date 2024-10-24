import 'package:dart_geohash/dart_geohash.dart';
import 'package:dartz/dartz.dart';
import 'package:sky_ways/core/errors/failures/open_weather_failure.dart';
import 'package:sky_ways/core/utils/clients/data_handler.dart';
import 'package:sky_ways/features/weather/data/data_sources/weather_remote_data_source.dart';
import 'package:sky_ways/features/weather/domain/entities/weather_entity.dart';
import 'package:sky_ways/features/weather/domain/repositories/weather_repository.dart';

final class WeatherRepositoryImplementation
    with DataHandler
    implements WeatherRepository {
  const WeatherRepositoryImplementation(
    WeatherRemoteDataSource weatherRemoteDataSource,
  ) : _weatherRemoteDataSource = weatherRemoteDataSource;

  final WeatherRemoteDataSource _weatherRemoteDataSource;

  @override
  Future<Either<OpenWeatherFailure, OpenWeatherDataEntity>>
      getWeatherFromGeoHash({
    required String geoHashString,
  }) {
    final geoHash = GeoHash(geoHashString);

    return handleData<OpenWeatherFailure, OpenWeatherDataEntity>(
      dataSourceOperation: () => _weatherRemoteDataSource.requestWeatherData(
        latitude: geoHash.latitude(decimalAccuracy: 8),
        longitude: geoHash.longitude(decimalAccuracy: 8),
        units: 'metric',
      ),
      onSuccess: (weatherEntity) => weatherEntity,
      onFailure: (_) => OpenWeatherFailure(),
    );
  }
}
