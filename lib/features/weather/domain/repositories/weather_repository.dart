import 'package:dartz/dartz.dart';
import 'package:sky_ways/core/errors/failures/open_weather_failure.dart';
import 'package:sky_ways/features/weather/domain/entities/weather_entity.dart';

abstract interface class WeatherRepository {
  Future<Either<OpenWeatherFailure, OpenWeatherDataEntity>>
      getWeatherFromGeoHash({
    required String geoHashString,
  });
}
