import 'package:dart_geohash/dart_geohash.dart' show GeoHash;
import 'package:sky_ways/core/resources/numbers/ui.dart' show four;
import 'package:sky_ways/features/geo_hash/domain/repositories/geo_hash_repository.dart';

final class GeoHashRepositoryImplementation implements GeoHashRepository {
  @override
  String geoHashForCoordinates({
    required double latitude,
    required double longitude,
    int? precision,
  }) =>
      GeoHash.fromDecimalDegrees(
        longitude,
        latitude,
        precision: precision ?? four,
      ).geohash;
}
