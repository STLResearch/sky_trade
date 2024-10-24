import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_ways/core/errors/failures/open_weather_failure.dart';
import 'package:sky_ways/features/weather/domain/entities/weather_entity.dart';
import 'package:sky_ways/features/weather/domain/repositories/weather_repository.dart';

part 'weather_event.dart';
part 'weather_state.dart';
part 'weather_bloc.freezed.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc(
    WeatherRepository weatherRepository,
  )   : _weatherRepository = weatherRepository,
        super(const WeatherState.initial()) {
    on<_FetchWeatherData>(_fetchWeatherData);
  }

  final WeatherRepository _weatherRepository;
  String? _cachedGeoHash;

  Future<void> _fetchWeatherData(
    _FetchWeatherData event,
    Emitter<WeatherState> emit,
  ) async {

    if(event.geoHash == _cachedGeoHash){
      return;
    }

    emit(const WeatherState.fetchingWeatherData());

    final weatherResult = await _weatherRepository.getWeatherFromGeoHash(
        geoHashString: event.geoHash,
    );
    _cachedGeoHash = event.geoHash;

    weatherResult.fold(
      (openWeatherFailure) =>
          emit(
            WeatherState.fetchFailed(
              weatherFailure: openWeatherFailure,
            ),
          ),
      (openWeatherEntity) =>
          emit(
            WeatherState.fetchSuccessful(
              weatherData: openWeatherEntity,
            ),
          ),
    );
  }
}
