part of 'weather_bloc.dart';

@freezed
class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.fetchWeatherData(
    String geoHash,
  ) = _FetchWeatherData;
}
