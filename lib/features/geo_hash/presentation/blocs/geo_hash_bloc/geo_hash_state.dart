part of 'geo_hash_bloc.dart';

@freezed
class GeoHashState with _$GeoHashState {
  const factory GeoHashState.initial() = _Initial;

  const factory GeoHashState.computedGeoHashOfPrecision3({
    required String geoHashOfPrecision3,
  }) = _ComputedGeoHashOfPrecision3;
}
