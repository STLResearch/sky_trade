// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetrieveResultModel _$RetrieveResultModelFromJson(Map<String, dynamic> json) =>
    RetrieveResultModel(
      mFeatures: (json['features'] as List<dynamic>)
          .map((e) => FeaturesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RetrieveResultModelToJson(
        RetrieveResultModel instance) =>
    <String, dynamic>{
      'features': instance.mFeatures,
    };

FeaturesModel _$FeaturesModelFromJson(Map<String, dynamic> json) =>
    FeaturesModel(
      mGeometry:
          GeometryModel.fromJson(json['geometry'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FeaturesModelToJson(FeaturesModel instance) =>
    <String, dynamic>{
      'geometry': instance.mGeometry,
    };

GeometryModel _$GeometryModelFromJson(Map<String, dynamic> json) =>
    GeometryModel(
      mCoordinates: (json['coordinates'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$GeometryModelToJson(GeometryModel instance) =>
    <String, dynamic>{
      'coordinates': instance.mCoordinates,
    };
