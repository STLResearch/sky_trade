import 'package:bloc/bloc.dart' show Bloc, Emitter, EventTransformer;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart' show DebounceExtensions;
import 'package:sky_trade/core/resources/numbers/ui.dart' show three;
import 'package:sky_trade/core/utils/typedefs/ui.dart' show LatLng;
import 'package:sky_trade/features/geo_hash/domain/repositories/geo_hash_repository.dart';

part 'geo_hash_bloc.freezed.dart';

part 'geo_hash_event.dart';

part 'geo_hash_state.dart';

class GeoHashBloc extends Bloc<GeoHashEvent, GeoHashState> {
  GeoHashBloc(
    GeoHashRepository geoHashRepository,
  )   : _geoHashRepository = geoHashRepository,
        super(
          const GeoHashState.initial(),
        ) {
    on<_ComputeGeoHash>(
      _computeGeoHash,
      transformer: _debounceTransformer,
    );
  }

  final GeoHashRepository _geoHashRepository;
  String? _currentGeoHashP4;
  String? _currentGeoHashP6;

  Future<void> _computeGeoHash(
    _ComputeGeoHash event,
    Emitter<GeoHashState> emit,
  ) async {

    final geoHashP9 = _geoHashRepository.geoHashForCoordinates(
      coordinates: event.coordinates,
    );

    if(_currentGeoHashP4 != geoHashP9.substring(0,4)) {
      _currentGeoHashP4 = geoHashP9.substring(0,4);
      emit(
        GeoHashState.computedGeoHashP4(
          geoHashP4: _currentGeoHashP4!,
        ),
      );
    }

    if(_currentGeoHashP6 != geoHashP9.substring(0,6)){
      _currentGeoHashP6 = geoHashP9.substring(0,6);
      emit(
        GeoHashState.computedGeoHashP6(
          geoHashP6: _currentGeoHashP6!,
        ),
      );
    }

  }

  EventTransformer<_ComputeGeoHash> get _debounceTransformer =>
      (events, mapper) => events
          .debounceTime(
            const Duration(
              seconds: three,
            ),
          )
          .asyncExpand(
            mapper,
          );
}
