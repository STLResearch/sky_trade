import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/weather_failure.dart';
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show emptyString;
import 'package:sky_trade/core/utils/clients/network_client.dart';
import 'package:sky_trade/features/air_rights/data/data_source/air_rights_remote_data_source.dart';
import 'package:sky_trade/features/weather/domain/entities/weather_entity.dart'
    show WeatherEntity;
import 'package:sky_trade/features/weather/domain/repositories/weather_repository.dart';

part 'weather_bloc.freezed.dart';

part 'weather_event.dart';

part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc(
    WeatherRepository weatherRepository,
  )   : _weatherRepository = weatherRepository,
        super(
          const WeatherState.initial(),
        ) {
    on<_GetWeather>(
      _getWeather,
    );
  }

  final WeatherRepository _weatherRepository;

  String _oldGeoHash = emptyString;

  Future<void> _getWeather(
    _GetWeather event,
    Emitter<WeatherState> emit,
  ) async {
    // final airRightsRepo = AirRightsRepositoriesImplementation(
    //   airRightsRemoteDataSource: AirRightsRemoteDataSourceImplementation(
    //     httpClient: HttpClient(),
    //   ),
    // );

    final airRightsRemoteDataSource = AirRightsRemoteDataSourceImplementation(
    httpClient: HttpClient(),
    );

    final x = await airRightsRemoteDataSource.generateBidTx(
      auction: '9Pf1FSVofyf7TW4JAhJjya3j6c4YMxoTeLgT8pRvAFDr',
      amount: 10,
    );

    if (event.geoHash == _oldGeoHash) {
      return;
    }

    _oldGeoHash = event.geoHash;

    emit(
      const WeatherState.gettingWeather(),
    );

    final weatherResult = await _weatherRepository.getWeatherConditionOf(
      geoHash: event.geoHash,
    );

    weatherResult.fold(
      (weatherFailure) => emit(
        WeatherState.failedToGetWeather(
          weatherFailure: weatherFailure,
        ),
      ),
      (weatherEntity) => emit(
        WeatherState.gotWeather(
          weatherEntity: weatherEntity,
        ),
      ),
    );
  }
}
