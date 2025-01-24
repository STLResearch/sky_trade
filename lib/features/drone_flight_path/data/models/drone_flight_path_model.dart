import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/resources/strings/networking.dart'
    show coordinatesKey, dataKey, featuresKey, geoJsonKey, geometryKey, typeKey;
import 'package:sky_trade/core/utils/converters/lng_lat_converter.dart';
import 'package:sky_trade/core/utils/enums/networking.dart'
    show GeoJsonType, GeometryType;
import 'package:sky_trade/core/utils/typedefs/networking.dart' show LngLat;
import 'package:sky_trade/features/drone_flight_path/domain/entities/drone_flight_path_entity.dart';

part 'drone_flight_path_model.g.dart';

@JsonSerializable()
final class DroneFlightPathModel extends DroneFlightPathEntity {
  const DroneFlightPathModel({
    required this.mData,
  }) : super(
          data: mData,
        );

  factory DroneFlightPathModel.fromJson(Map<String, dynamic> json) =>
      _$DroneFlightPathModelFromJson(json);

  @JsonKey(name: dataKey)
  final DataModel mData;

  Map<String, dynamic> toJson() => _$DroneFlightPathModelToJson(this);
}

@JsonSerializable()
final class DataModel extends DataEntity {
  const DataModel({
    required this.mGeoJson,
  }) : super(
          geoJson: mGeoJson,
        );

  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);

  @JsonKey(name: geoJsonKey)
  final GeoJsonModel mGeoJson;

  Map<String, dynamic> toJson() => _$DataModelToJson(this);
}

@JsonSerializable()
final class GeoJsonModel extends GeoJsonEntity {
  const GeoJsonModel({
    required this.mType,
    required this.mFeatures,
  }) : super(
          type: mType,
          features: mFeatures,
        );

  factory GeoJsonModel.fromJson(Map<String, dynamic> json) =>
      _$GeoJsonModelFromJson(json);

  @JsonKey(name: typeKey)
  final GeoJsonType mType;

  @JsonKey(name: featuresKey)
  final List<FeatureModel> mFeatures;

  Map<String, dynamic> toJson() => _$GeoJsonModelToJson(this);
}

@JsonSerializable()
final class FeatureModel extends FeatureEntity {
  const FeatureModel({
    required this.mType,
    required this.mGeometry,
  }) : super(
          type: mType,
          geometry: mGeometry,
        );

  factory FeatureModel.fromJson(Map<String, dynamic> json) =>
      _$FeatureModelFromJson(json);

  @JsonKey(name: typeKey)
  final String mType;

  @JsonKey(name: geometryKey)
  final GeometryModel mGeometry;

  Map<String, dynamic> toJson() => _$FeatureModelToJson(this);
}

@JsonSerializable()
final class GeometryModel extends GeometryEntity {
  const GeometryModel({
    required this.mType,
    required this.mCoordinates,
  }) : super(
          type: mType,
          coordinates: mCoordinates,
        );

  factory GeometryModel.fromJson(Map<String, dynamic> json) =>
      _$GeometryModelFromJson(json);

  @JsonKey(name: typeKey)
  final GeometryType mType;

  @JsonKey(name: coordinatesKey)
  @LngLatConverter()
  final List<LngLat> mCoordinates;

  Map<String, dynamic> toJson() => _$GeometryModelToJson(this);
}
