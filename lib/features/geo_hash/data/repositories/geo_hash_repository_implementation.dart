import 'package:dart_geohash/dart_geohash.dart' show GeoHash;
import 'package:geodart/geometries.dart' as geo_dart
    show BoundingBox, Coordinate;
import 'package:sky_ways/core/resources/numbers/ui.dart' show four;
import 'package:sky_ways/core/utils/typedefs/ui.dart' show Bounds, LatLng;
import 'package:sky_ways/features/geo_hash/domain/repositories/geo_hash_repository.dart';

final class GeoHashRepositoryImplementation implements GeoHashRepository {
  @override
  String geoHashForCoordinates({
    required LatLng coordinates,
    int? precision,
  }) {
    final geoHash = GeoHash.fromDecimalDegrees(
      coordinates.longitude,
      coordinates.latitude,
      precision: precision ?? _defaultPrecision,
    );

    return geoHash.geohash;
  }

  @override
  String geoHashForBounds({
    required Bounds bounds,
    int? precision,
  }) {
    final geoDartBoundingBox = geo_dart.BoundingBox.fromCoordinates([
      geo_dart.Coordinate(
        bounds.northEastLatitude,
        bounds.northEastLongitude,
      ),
      geo_dart.Coordinate(
        bounds.southWestLatitude,
        bounds.southWestLongitude,
      ),
    ]);

    final geoDartBoundingBoxCenter = geoDartBoundingBox.center;

    return geoHashForCoordinates(
      coordinates: (
        latitude: geoDartBoundingBoxCenter.latitude,
        longitude: geoDartBoundingBoxCenter.longitude,
      ),
      precision: precision,
    );
  }

  int get _defaultPrecision => four;
}
