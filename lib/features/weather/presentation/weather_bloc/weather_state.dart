part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.initial() = _Initial;

  const factory WeatherState.gettingWeather() = _GettingWeather;

  const factory WeatherState.gotWeather({
    required WeatherEntity weatherEntity,
  }) = _GotWeather;

  const factory WeatherState.failedToGetWeather({
    required WeatherFailure weatherFailure,
  }) = _FailedToGetWeather;
}
