part of 'geo_hash_bloc.dart';

@freezed
class GeoHashState with _$GeoHashState {
  const factory GeoHashState.initial() = _Initial;

  const factory GeoHashState.computedGeoHashP4({
    required String geoHashP4,
  }) = _ComputedGeoHashP4;

  const factory GeoHashState.computedGeoHashP6({
    required String geoHashP6,
  }) = _ComputedGeoHashP6;
}
