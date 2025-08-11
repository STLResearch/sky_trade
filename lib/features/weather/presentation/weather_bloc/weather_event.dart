// SPDX-License-Identifier: UNLICENSED
                            
part of 'weather_bloc.dart';

@freezed
class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.getWeather({
    required String geoHash,
  }) = _GetWeather;
}
