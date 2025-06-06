// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restriction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RestrictionModel _$RestrictionModelFromJson(Map<String, dynamic> json) =>
    RestrictionModel(
      mId: json['id'] as String,
      mProperties:
          PropertiesModel.fromJson(json['properties'] as Map<String, dynamic>),
      mGeometry:
          GeometryModel.fromJson(json['geometry'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RestrictionModelToJson(RestrictionModel instance) =>
    <String, dynamic>{
      'id': instance.mId,
      'properties': instance.mProperties,
      'geometry': instance.mGeometry,
    };

PropertiesModel _$PropertiesModelFromJson(Map<String, dynamic> json) =>
    PropertiesModel(
      mType: $enumDecode(_$RestrictionTypeEnumMap, json['type']),
      mCountry: json['country'] as String,
      mUpperLimit: json['upper_limit'] as String,
      mLowerLimit: json['lower_limit'] as String,
      mMessage: json['message'] as String,
      mAdditionLinks: (json['additional_links'] as List<dynamic>)
          .map((e) => AdditionalLinkModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PropertiesModelToJson(PropertiesModel instance) =>
    <String, dynamic>{
      'type': _$RestrictionTypeEnumMap[instance.mType]!,
      'country': instance.mCountry,
      'upper_limit': instance.mUpperLimit,
      'lower_limit': instance.mLowerLimit,
      'message': instance.mMessage,
      'additional_links': instance.mAdditionLinks,
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

GeometryModel _$GeometryModelFromJson(Map<String, dynamic> json) =>
    GeometryModel(
      mType: $enumDecode(_$GeometryTypeEnumMap, json['type']),
      mCoordinates: (json['coordinates'] as List<dynamic>)
          .map((e) => (e as List<dynamic>)
              .map((e) => (e as List<dynamic>)
                  .map((e) => (e as num).toDouble())
                  .toList())
              .toList())
          .toList(),
    );

Map<String, dynamic> _$GeometryModelToJson(GeometryModel instance) =>
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
