import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/resources/strings/networking.dart';
import 'package:sky_trade/core/utils/typedefs/networking.dart';
import 'package:sky_trade/features/drone_flight_path/domain/entities/drone_flight_path_entity.dart';

part 'drone_flight_path_model.g.dart';

@JsonSerializable()
final class DroneFlightPathModel extends DroneFlightPathEntity {
  DroneFlightPathModel({
    required this.data,
  }) : super(
          droneFlightPath:
              data.geoJson.features[0].geometry.geometryCoordinates,
        );

  factory DroneFlightPathModel.fromJson(Map<String, dynamic> json) =>
      _$DroneFlightPathModelFromJson(json);

  @JsonKey(name: dataKey)
  final DataModel data;
}

@JsonSerializable()
final class DataModel {
  DataModel({
    required this.geoJson,
  });

  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);

  @JsonKey(name: geoJsonKey)
  final GeoJsonModel geoJson;
}

@JsonSerializable()
final class GeoJsonModel {
  GeoJsonModel({
    required this.collectionType,
    required this.features,
  });

  factory GeoJsonModel.fromJson(Map<String, dynamic> json) =>
      _$GeoJsonModelFromJson(json);

  @JsonKey(name: collectionTypeKey)
  final String collectionType;

  @JsonKey(name: featuresKey)
  final List<FeatureModel> features;
}

@JsonSerializable()
final class FeatureModel {
  FeatureModel({
    required this.featureType,
    required this.geometry,
  });

  factory FeatureModel.fromJson(Map<String, dynamic> json) =>
      _$FeatureModelFromJson(json);

  @JsonKey(name: featureTypeKey)
  final String featureType;

  @JsonKey(name: geometryKey)
  final GeometryModel geometry;
}

@JsonSerializable()
final class GeometryModel {
  GeometryModel({
    required this.geometryType,
    required this.geometryCoordinates,
  });

  factory GeometryModel.fromJson(Map<String, dynamic> json) =>
      _$GeometryModelFromJson(json);

  @JsonKey(name: geometryTypeKey)
  final String geometryType;

  @JsonKey(name: coordinatesKey)
  final List<LngLat> geometryCoordinates;
}
