part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.initial() = _Initial;

  const factory WeatherState.fetchingWeatherData() = _FetchingWeatherData;

  const factory WeatherState.fetchSuccessful({
    required OpenWeatherDataEntity weatherData,
  }) = _FetchSuccessful;

  const factory WeatherState.fetchFailed({
    required OpenWeatherFailure weatherFailure,
  }) = _FetchFailed;
}
