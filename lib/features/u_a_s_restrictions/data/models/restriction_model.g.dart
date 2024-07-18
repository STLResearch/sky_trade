// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restriction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RestrictionModel _$RestrictionModelFromJson(Map<String, dynamic> json) =>
    RestrictionModel(
      mAdditionLinks: AdditionalLinksModel.fromJson(
          json['additional_links'] as Map<String, dynamic>),
      mCountry: json['country'] as String,
      mLowerLimit: json['lower_limit'] as String,
      mMessage: json['message'] as String,
      mRegion: RegionModel.fromJson(json['region'] as Map<String, dynamic>),
      mType: $enumDecode(_$RestrictionTypeEnumMap, json['type']),
      mUpperLimit: json['upper_limit'] as String,
    );

Map<String, dynamic> _$RestrictionModelToJson(RestrictionModel instance) =>
    <String, dynamic>{
      'additional_links': instance.mAdditionLinks,
      'country': instance.mCountry,
      'lower_limit': instance.mLowerLimit,
      'message': instance.mMessage,
      'region': instance.mRegion,
      'type': _$RestrictionTypeEnumMap[instance.mType]!,
      'upper_limit': instance.mUpperLimit,
    };

const _$RestrictionTypeEnumMap = {
  RestrictionType.danger: 'Danger',
  RestrictionType.prohibited: 'Prohibited',
  RestrictionType.restricted: 'Restricted',
};

AdditionalLinksModel _$AdditionalLinksModelFromJson(
        Map<String, dynamic> json) =>
    AdditionalLinksModel(
      mLink: json['link'] as String,
      mName: json['name'] as String,
    );

Map<String, dynamic> _$AdditionalLinksModelToJson(
        AdditionalLinksModel instance) =>
    <String, dynamic>{
      'link': instance.mLink,
      'name': instance.mName,
    };

RegionModel _$RegionModelFromJson(Map<String, dynamic> json) => RegionModel(
      mType: $enumDecode(_$RegionTypeEnumMap, json['type']),
      mCoordinates: (json['coordinates'] as List<dynamic>)
          .map((e) => (e as List<dynamic>)
              .map((e) => (e as List<dynamic>)
                  .map((e) => (e as num).toDouble())
                  .toList())
              .toList())
          .toList(),
    );

Map<String, dynamic> _$RegionModelToJson(RegionModel instance) =>
    <String, dynamic>{
      'type': _$RegionTypeEnumMap[instance.mType]!,
      'coordinates': instance.mCoordinates,
    };

const _$RegionTypeEnumMap = {
  RegionType.point: 'Point',
  RegionType.lineString: 'LineString',
  RegionType.polygon: 'Polygon',
  RegionType.multiPoint: 'MultiPoint',
  RegionType.multiLineString: 'MultiLineString',
  RegionType.multiPolygon: 'MultiPolygon',
};
