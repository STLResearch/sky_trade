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
      mID: json['mapbox_id'] as String,
      mName: json['name'] as String,
      mPlaceFormatted: json['place_formatted'] as String,
      mNamePreferred: json['name_preferred'] as String?,
    );

Map<String, dynamic> _$SuggestionModelToJson(SuggestionModel instance) =>
    <String, dynamic>{
      'mapbox_id': instance.mID,
      'name': instance.mName,
      'place_formatted': instance.mPlaceFormatted,
      'name_preferred': instance.mNamePreferred,
    };
