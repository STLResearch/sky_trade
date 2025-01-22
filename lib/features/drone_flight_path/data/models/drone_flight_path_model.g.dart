// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drone_flight_path_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DroneFlightPathModel _$DroneFlightPathModelFromJson(
        Map<String, dynamic> json) =>
    DroneFlightPathModel(
      data: DataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DroneFlightPathModelToJson(
        DroneFlightPathModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

DataModel _$DataModelFromJson(Map<String, dynamic> json) => DataModel(
      geoJson: GeoJsonModel.fromJson(json['geojson'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataModelToJson(DataModel instance) => <String, dynamic>{
      'geojson': instance.geoJson,
    };

GeoJsonModel _$GeoJsonModelFromJson(Map<String, dynamic> json) => GeoJsonModel(
      collectionType: json['type'] as String,
      features: (json['features'] as List<dynamic>)
          .map((e) => FeatureModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GeoJsonModelToJson(GeoJsonModel instance) =>
    <String, dynamic>{
      'type': instance.collectionType,
      'features': instance.features,
    };

FeatureModel _$FeatureModelFromJson(Map<String, dynamic> json) => FeatureModel(
      featureType: json['type'] as String,
      geometry:
          GeometryModel.fromJson(json['geometry'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FeatureModelToJson(FeatureModel instance) =>
    <String, dynamic>{
      'type': instance.featureType,
      'geometry': instance.geometry,
    };

GeometryModel _$GeometryModelFromJson(Map<String, dynamic> json) =>
    GeometryModel(
      geometryType: json['type'] as String,
      geometryCoordinates: (json['coordinates'] as List<dynamic>)
          .map((e) => _$recordConvert(
                e,
                ($jsonValue) => (
                  latitude: ($jsonValue['latitude'] as num).toDouble(),
                  longitude: ($jsonValue['longitude'] as num).toDouble(),
                ),
              ))
          .toList(),
    );

Map<String, dynamic> _$GeometryModelToJson(GeometryModel instance) =>
    <String, dynamic>{
      'type': instance.geometryType,
      'coordinates': instance.geometryCoordinates
          .map((e) => <String, dynamic>{
                'latitude': e.latitude,
                'longitude': e.longitude,
              })
          .toList(),
    };

$Rec _$recordConvert<$Rec>(
  Object? value,
  $Rec Function(Map) convert,
) =>
    convert(value as Map<String, dynamic>);
