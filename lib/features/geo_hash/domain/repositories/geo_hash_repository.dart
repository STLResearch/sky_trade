import 'package:sky_trade/core/utils/typedefs/ui.dart' show LatLng;

abstract interface class GeoHashRepository {
  String geoHashForCoordinates({
    required LatLng coordinates,
  });
}
