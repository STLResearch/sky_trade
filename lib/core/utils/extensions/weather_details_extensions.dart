import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:sky_ways/core/resources/strings/networking.dart';
import 'package:sky_ways/features/weather/data/models/weather_model.dart';

extension WeatherDetailsListExtensions on List<WeatherDetailsModel> {
  List<String> extractIconUrls() {
    return map(
      (weatherDetail) => '${dotenv.env[openWeatherIconBaseUrl]}$weatherIconPath/${weatherDetail.iconID}@2x.png',
    ).toList();
  }
}
