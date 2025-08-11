// SPDX-License-Identifier: UNLICENSED
                            
import 'package:flutter_dotenv/flutter_dotenv.dart' show dotenv;
import 'package:sky_trade/core/resources/strings/local.dart' show pngFileEnding;
import 'package:sky_trade/core/resources/strings/networking.dart'
    show imgPath, twoXValue, wnPath;
import 'package:sky_trade/core/resources/strings/secret_keys.dart'
    show openWeatherMapIconBaseUrl;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show at, forwardSlash;
import 'package:sky_trade/features/weather/domain/entities/weather_entity.dart'
    show WeatherConditionEntity;

extension WeatherConditionEntityExtensions on WeatherConditionEntity {
  String get iconUrl =>
      dotenv.env[openWeatherMapIconBaseUrl]! +
      imgPath +
      wnPath +
      forwardSlash +
      icon +
      at +
      twoXValue +
      pngFileEnding;
}
