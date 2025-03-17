part of 'geo_hash_bloc.dart';

@freezed
class GeoHashEvent with _$GeoHashEvent {
  const factory GeoHashEvent.computeGeoHash({
    required LatLng coordinates,
  }) = _ComputeGeoHash;
}
