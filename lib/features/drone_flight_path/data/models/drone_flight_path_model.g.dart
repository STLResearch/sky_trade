// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drone_flight_path_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DroneFlightPathModel _$DroneFlightPathModelFromJson(
        Map<String, dynamic> json) =>
    DroneFlightPathModel(
      mData: DataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DroneFlightPathModelToJson(
        DroneFlightPathModel instance) =>
    <String, dynamic>{
      'data': instance.mData,
    };

DataModel _$DataModelFromJson(Map<String, dynamic> json) => DataModel(
      mGeoJson: GeoJsonModel.fromJson(json['geojson'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataModelToJson(DataModel instance) => <String, dynamic>{
      'geojson': instance.mGeoJson,
    };

GeoJsonModel _$GeoJsonModelFromJson(Map<String, dynamic> json) => GeoJsonModel(
      mType: $enumDecode(_$GeoJsonTypeEnumMap, json['type']),
      mFeatures: (json['features'] as List<dynamic>)
          .map((e) => FeatureModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GeoJsonModelToJson(GeoJsonModel instance) =>
    <String, dynamic>{
      'type': _$GeoJsonTypeEnumMap[instance.mType]!,
      'features': instance.mFeatures,
    };

const _$GeoJsonTypeEnumMap = {
  GeoJsonType.featureCollection: 'FeatureCollection',
  GeoJsonType.geometryCollection: 'GeometryCollection',
};

FeatureModel _$FeatureModelFromJson(Map<String, dynamic> json) => FeatureModel(
      mType: json['type'] as String,
      mGeometry:
          GeometryModel.fromJson(json['geometry'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FeatureModelToJson(FeatureModel instance) =>
    <String, dynamic>{
      'type': instance.mType,
      'geometry': instance.mGeometry,
    };

GeometryModel _$GeometryModelFromJson(Map<String, dynamic> json) =>
    GeometryModel(
      mType: $enumDecode(_$GeometryTypeEnumMap, json['type']),
      mCoordinates: (json['coordinates'] as List<dynamic>)
          .map((e) => const LngLatConverter().fromJson(e as List<double>))
          .toList(),
    );

Map<String, dynamic> _$GeometryModelToJson(GeometryModel instance) =>
    <String, dynamic>{
      'type': _$GeometryTypeEnumMap[instance.mType]!,
      'coordinates':
          instance.mCoordinates.map(const LngLatConverter().toJson).toList(),
    };

const _$GeometryTypeEnumMap = {
  GeometryType.point: 'Point',
  GeometryType.lineString: 'LineString',
  GeometryType.polygon: 'Polygon',
  GeometryType.multiPoint: 'MultiPoint',
  GeometryType.multiLineString: 'MultiLineString',
  GeometryType.multiPolygon: 'MultiPolygon',
};
