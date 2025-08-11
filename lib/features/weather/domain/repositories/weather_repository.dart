// SPDX-License-Identifier: UNLICENSED
                            
import 'package:dartz/dartz.dart' show Either;
import 'package:sky_trade/core/errors/failures/weather_failure.dart';
import 'package:sky_trade/features/weather/domain/entities/weather_entity.dart'
    show WeatherEntity;

abstract interface class WeatherRepository {
  Future<Either<WeatherFailure, WeatherEntity>> getWeatherConditionOf({
    required String geoHash,
  });
}
