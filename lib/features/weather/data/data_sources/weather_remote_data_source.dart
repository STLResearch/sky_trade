import 'package:flutter_dotenv/flutter_dotenv.dart' show dotenv;
import 'package:sky_ways/core/errors/exceptions/open_weather_exception.dart';
import 'package:sky_ways/core/resources/strings/networking.dart';
import 'package:sky_ways/core/utils/clients/network_client.dart';
import 'package:sky_ways/core/utils/clients/response_handler.dart';
import 'package:sky_ways/core/utils/enums/networking.dart';
import 'package:sky_ways/features/weather/data/models/weather_model.dart';

abstract interface class WeatherRemoteDataSource {
  Future<OpenWeatherDataModel> requestWeatherData({
    required double latitude,
    required double longitude,
    required String units,
  });
}

class WeatherRemoteDataSourceImplementation
    with ResponseHandler
    implements WeatherRemoteDataSource {
  const WeatherRemoteDataSourceImplementation(
    HttpClient httpClient,
  ) : _httpClient = httpClient;

  final HttpClient _httpClient;

  @override
  Future<OpenWeatherDataModel> requestWeatherData({
    required double latitude,
    required double longitude,
    required String units,
  }) async =>
      handleResponse<OpenWeatherException, Map<String, dynamic>,
          OpenWeatherDataModel>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.get,
          overrideBaseUrl: dotenv.env[openWeatherApiBaseUrl],
          path: weatherDataPath,
          queryParameters: {
            latKey: latitude,
            lonKey: longitude,
            appIdKey: dotenv.env[openWeatherApiKey],
            unitsKey: units,
          },
        ),
        onSuccess: OpenWeatherDataModel.fromJson,
        onError: (_) => OpenWeatherException(),
      );
}
