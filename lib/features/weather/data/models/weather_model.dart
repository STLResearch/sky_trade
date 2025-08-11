// SPDX-License-Identifier: UNLICENSED
                            
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/resources/strings/networking.dart'
    show iconKey, mainKey, tempKey, weatherKey;
import 'package:sky_trade/features/weather/domain/entities/weather_entity.dart';

part 'weather_model.g.dart';

@JsonSerializable()
final class WeatherModel extends WeatherEntity {
  const WeatherModel({
    required this.mWeatherConditions,
    required this.mMain,
  }) : super(
          weatherConditions: mWeatherConditions,
          main: mMain,
        );

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);

  @JsonKey(name: weatherKey)
  final List<WeatherConditionModel> mWeatherConditions;

  @JsonKey(name: mainKey)
  final MainModel mMain;

  Map<String, dynamic> toJson() => _$WeatherModelToJson(this);
}

@JsonSerializable()
final class WeatherConditionModel extends WeatherConditionEntity {
  const WeatherConditionModel({
    required this.mIcon,
  }) : super(
          icon: mIcon,
        );

  factory WeatherConditionModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherConditionModelFromJson(json);

  @JsonKey(name: iconKey)
  final String mIcon;

  Map<String, dynamic> toJson() => _$WeatherConditionModelToJson(this);
}

@JsonSerializable()
final class MainModel extends MainEntity {
  const MainModel({
    required this.mTemperature,
  }) : super(
          temperature: mTemperature,
        );

  factory MainModel.fromJson(Map<String, dynamic> json) =>
      _$MainModelFromJson(json);

  @JsonKey(name: tempKey)
  final double mTemperature;

  Map<String, dynamic> toJson() => _$MainModelToJson(this);
}
