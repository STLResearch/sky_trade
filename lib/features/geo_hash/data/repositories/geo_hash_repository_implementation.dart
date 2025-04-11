import 'package:dart_geohash/dart_geohash.dart' show GeoHash;
import 'package:sky_trade/core/utils/typedefs/ui.dart' show LatLng;
import 'package:sky_trade/features/geo_hash/domain/repositories/geo_hash_repository.dart';

final class GeoHashRepositoryImplementation implements GeoHashRepository {
  @override
  String geoHashForCoordinates({
    required LatLng coordinates,
    required int precision,
  }) {
    final geoHash = GeoHash.fromDecimalDegrees(
      coordinates.longitude,
      coordinates.latitude,
      precision: precision,
    );
    return geoHash.geohash;
  }
}
