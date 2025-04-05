import 'package:equatable/equatable.dart' show Equatable;
import 'package:sky_trade/core/utils/enums/networking.dart'
    show GeoJsonType, GeometryType;
import 'package:sky_trade/core/utils/typedefs/networking.dart' show LngLat;

base class DroneFlightPathEntity extends Equatable {
  const DroneFlightPathEntity({
    required this.data,
  });

  final DataEntity data;

  @override
  List<Object?> get props => [
        data,
      ];
}

base class DataEntity extends Equatable {
  const DataEntity({
    required this.geoJson,
  });

  final GeoJsonEntity geoJson;

  @override
  List<Object?> get props => [
        geoJson,
      ];
}

base class GeoJsonEntity extends Equatable {
  const GeoJsonEntity({
    required this.type,
    required this.features,
  });

  final GeoJsonType type;

  final List<FeatureEntity> features;

  @override
  List<Object?> get props => [
        type,
        features,
      ];
}

base class FeatureEntity extends Equatable {
  const FeatureEntity({
    required this.type,
    required this.geometry,
  });

  final String type;

  final GeometryEntity geometry;

  @override
  List<Object?> get props => [
        type,
        geometry,
      ];
}

base class GeometryEntity extends Equatable {
  const GeometryEntity({
    required this.type,
    required this.coordinates,
  });

  final GeometryType type;

  final List<LngLat> coordinates;

  @override
  List<Object?> get props => [
        type,
        coordinates,
      ];
}
