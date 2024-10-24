// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenWeatherDataModel _$OpenWeatherDataModelFromJson(
        Map<String, dynamic> json) =>
    OpenWeatherDataModel(
      mWeatherList: (json['weather'] as List<dynamic>?)
          ?.map((e) => WeatherDetailsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      mWeatherMetrics: json['main'] == null
          ? null
          : WeatherMetricsModel.fromJson(json['main'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OpenWeatherDataModelToJson(
        OpenWeatherDataModel instance) =>
    <String, dynamic>{
      'weather': instance.mWeatherList,
      'main': instance.mWeatherMetrics,
    };

WeatherDetailsModel _$WeatherDetailsModelFromJson(Map<String, dynamic> json) =>
    WeatherDetailsModel(
      iconID: json['icon'] as String,
    );

Map<String, dynamic> _$WeatherDetailsModelToJson(
        WeatherDetailsModel instance) =>
    <String, dynamic>{
      'icon': instance.iconID,
    };

WeatherMetricsModel _$WeatherMetricsModelFromJson(Map<String, dynamic> json) =>
    WeatherMetricsModel(
      currentTemperature: (json['temp'] as num).toDouble(),
    );

Map<String, dynamic> _$WeatherMetricsModelToJson(
        WeatherMetricsModel instance) =>
    <String, dynamic>{
      'temp': instance.currentTemperature,
    };
