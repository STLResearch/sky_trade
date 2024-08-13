abstract interface class GeoHashRepository {
  String geoHashForCoordinates({
    required double latitude,
    required double longitude,
    int? precision,
  });
}
