import 'package:sky_trade/core/errors/exceptions/weather_exception.dart';
import 'package:sky_trade/core/resources/strings/networking.dart'
    show
        airRightsPath,
        geoHashKey,
        getWeatherDataPath,
        imperialValue,
        unitsKey,
        weatherDataKey;
import 'package:sky_trade/core/utils/clients/network_client.dart'
    show HttpClient;
import 'package:sky_trade/core/utils/clients/response_handler.dart';
import 'package:sky_trade/core/utils/enums/networking.dart' show RequestMethod;
import 'package:sky_trade/features/weather/data/models/weather_model.dart'
    show WeatherModel;

abstract interface class WeatherRemoteDataSource {
  Future<WeatherModel> getWeatherConditionOf({
    required String geoHash,
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
    required String geoHash,
  }) =>
      handleResponse<WeatherException, Map<String, dynamic>, WeatherModel>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.get,
          path: airRightsPath + getWeatherDataPath,
          includeSignature: false,
          queryParameters: {
            geoHashKey: geoHash,
            unitsKey: imperialValue,
          },
        ),
        onSuccess: (response) => WeatherModel.fromJson(
          response[weatherDataKey] as Map<String, dynamic>,
        ),
        onError: (_) => WeatherException(),
      );
}
