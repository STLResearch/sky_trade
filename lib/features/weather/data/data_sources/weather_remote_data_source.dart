import 'package:flutter_dotenv/flutter_dotenv.dart' show dotenv;
import 'package:sky_trade/core/errors/exceptions/weather_exception.dart';
import 'package:sky_trade/core/resources/strings/networking.dart'
    show
        appidKey,
        dataPath,
        latKey,
        lonKey,
        metricValue,
        openWeatherMapApiBaseUrl,
        openWeatherMapApiKey,
        twoDotFivePath,
        unitsKey,
        weatherPath;
import 'package:sky_trade/core/utils/clients/network_client.dart'
    show HttpClient;
import 'package:sky_trade/core/utils/clients/response_handler.dart';
import 'package:sky_trade/core/utils/enums/networking.dart' show RequestMethod;
import 'package:sky_trade/core/utils/typedefs/networking.dart' show LatLng;
import 'package:sky_trade/features/weather/data/models/weather_model.dart'
    show WeatherModel;

abstract interface class WeatherRemoteDataSource {
  Future<WeatherModel> getWeatherConditionOf({
    required LatLng coordinates,
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
  Future<WeatherModel> getWeatherConditionOf({
    required LatLng coordinates,
  }) async =>
      handleResponse<WeatherException, Map<String, dynamic>, WeatherModel>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.get,
          overrideBaseUrl: dotenv.env[openWeatherMapApiBaseUrl],
          path: dataPath + twoDotFivePath + weatherPath,
          queryParameters: {
            latKey: coordinates.latitude,
            lonKey: coordinates.longitude,
            appidKey: dotenv.env[openWeatherMapApiKey],
            unitsKey: metricValue,
          },
          includeSignature: false,
        ),
        onSuccess: WeatherModel.fromJson,
        onError: (_) => WeatherException(),
      );
}
