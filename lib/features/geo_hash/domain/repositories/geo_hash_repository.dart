import 'package:sky_trade/core/utils/typedefs/ui.dart' show Bounds, LatLng;

abstract interface class GeoHashRepository {
  String geoHashForCoordinates({
    required LatLng coordinates,
    int? precision,
  });

  String geoHashForBounds({
    required Bounds bounds,
    int? precision,
  });
}
