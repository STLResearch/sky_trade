part of 'geo_hash_bloc.dart';

@freezed
class GeoHashEvent with _$GeoHashEvent {
  const factory GeoHashEvent.computeGeoHash({
    LatLng? coordinates,
    Bounds? bounds,
    int? precision,
  }) = _ComputeGeoHash;
}
