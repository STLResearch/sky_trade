// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResultModel _$SearchResultModelFromJson(Map<String, dynamic> json) =>
    SearchResultModel(
      mSuggestions: (json['suggestions'] as List<dynamic>)
          .map((e) => SuggestionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      mAttribution: json['attribution'] as String,
    );

Map<String, dynamic> _$SearchResultModelToJson(SearchResultModel instance) =>
    <String, dynamic>{
      'suggestions': instance.mSuggestions,
      'attribution': instance.mAttribution,
    };

SuggestionModel _$SuggestionModelFromJson(Map<String, dynamic> json) =>
    SuggestionModel(
      mId: json['mapbox_id'] as String,
      mName: json['name'] as String,
      mPlaceFormatted: json['place_formatted'] as String,
      mNamePreferred: json['name_preferred'] as String?,
    );

Map<String, dynamic> _$SuggestionModelToJson(SuggestionModel instance) =>
    <String, dynamic>{
      'mapbox_id': instance.mId,
      'name': instance.mName,
      'place_formatted': instance.mPlaceFormatted,
      'name_preferred': instance.mNamePreferred,
    };

RetrieveResultModel _$RetrieveResultModelFromJson(Map<String, dynamic> json) =>
    RetrieveResultModel(
      mFeatures: (json['features'] as List<dynamic>)
          .map((e) => FeatureModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      mAttribution: json['attribution'] as String,
    );

Map<String, dynamic> _$RetrieveResultModelToJson(
        RetrieveResultModel instance) =>
    <String, dynamic>{
      'features': instance.mFeatures,
      'attribution': instance.mAttribution,
    };

FeatureModel _$FeatureModelFromJson(Map<String, dynamic> json) => FeatureModel(
      mGeometry:
          GeometryModel.fromJson(json['geometry'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FeatureModelToJson(FeatureModel instance) =>
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
