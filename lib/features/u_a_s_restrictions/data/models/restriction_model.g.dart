// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restriction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RestrictionModel _$RestrictionModelFromJson(Map<String, dynamic> json) =>
    RestrictionModel(
      mAdditionLinks: (json['additional_links'] as List<dynamic>)
          .map((e) => AdditionalLinkModel.fromJson(e as Map<String, dynamic>))
          .toList(),
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

AdditionalLinkModel _$AdditionalLinkModelFromJson(Map<String, dynamic> json) =>
    AdditionalLinkModel(
      mLink: json['link'] as String,
      mName: json['name'] as String,
    );

Map<String, dynamic> _$AdditionalLinkModelToJson(
        AdditionalLinkModel instance) =>
    <String, dynamic>{
      'link': instance.mLink,
      'name': instance.mName,
    };

RegionModel _$RegionModelFromJson(Map<String, dynamic> json) => RegionModel(
      mType: $enumDecode(_$GeometryTypeEnumMap, json['type']),
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
      'type': _$GeometryTypeEnumMap[instance.mType]!,
      'coordinates': instance.mCoordinates,
    };

const _$GeometryTypeEnumMap = {
  GeometryType.point: 'Point',
  GeometryType.lineString: 'LineString',
  GeometryType.polygon: 'Polygon',
  GeometryType.multiPoint: 'MultiPoint',
  GeometryType.multiLineString: 'MultiLineString',
  GeometryType.multiPolygon: 'MultiPolygon',
};
