import 'package:freezed_annotation/freezed_annotation.dart' show JsonConverter;
import 'package:sky_trade/core/resources/numbers/networking.dart'
    show one, zero;
import 'package:sky_trade/core/utils/typedefs/networking.dart' show LngLat;

final class LngLatConverter implements JsonConverter<LngLat, List<double>> {
  const LngLatConverter();

  @override
  LngLat fromJson(List<double> jsonList) => (
        longitude: jsonList[zero],
        latitude: jsonList[one],
      );

  @override
  List<double> toJson(LngLat object) => [
        object.longitude,
        object.latitude,
      ];
}
