part of 'geo_hash_bloc.dart';

@freezed
class GeoHashState with _$GeoHashState {
  const factory GeoHashState.initial() = _Initial;

  const factory GeoHashState.computedGeoHash({
    required String geoHash,
  }) = _ComputedGeoHash;

  const factory GeoHashState.failedToComputeGeoHash() = _FailedToComputeGeoHash;
}
