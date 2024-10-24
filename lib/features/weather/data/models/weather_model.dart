import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_ways/core/resources/strings/networking.dart';
import 'package:sky_ways/core/utils/extensions/weather_details_extensions.dart';
import 'package:sky_ways/features/weather/domain/entities/weather_entity.dart';

part 'weather_model.g.dart';

@JsonSerializable()
final class OpenWeatherDataModel extends OpenWeatherDataEntity {
  OpenWeatherDataModel({
    required this.mWeatherList,
    required this.mWeatherMetrics,
  }) : super(
          iconUrls: mWeatherList?.extractIconUrls(),
          currentTemperature: mWeatherMetrics?.currentTemperature,
        );

  factory OpenWeatherDataModel.fromJson(Map<String, dynamic> json) =>
      _$OpenWeatherDataModelFromJson(json);

  @JsonKey(name: weatherKey)
  final List<WeatherDetailsModel>? mWeatherList;

  @JsonKey(name: weatherMetricsKey)
  final WeatherMetricsModel? mWeatherMetrics;
}

@JsonSerializable()
final class WeatherDetailsModel {
  const WeatherDetailsModel({
    required this.iconID,
  });

  factory WeatherDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherDetailsModelFromJson(json);

  @JsonKey(name: iconIdKey)
  final String iconID;
}

@JsonSerializable()
final class WeatherMetricsModel {
  const WeatherMetricsModel({
    required this.currentTemperature,
  });

  factory WeatherMetricsModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherMetricsModelFromJson(json);

  @JsonKey(name: currentTemperatureKey)
  final double currentTemperature; // celsius
}
