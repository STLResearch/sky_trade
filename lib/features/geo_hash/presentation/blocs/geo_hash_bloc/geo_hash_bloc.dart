import 'package:bloc/bloc.dart' show Bloc, Emitter, EventTransformer;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart' show DebounceExtensions;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show four, three, zero;
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
  String? _currentGeoHashOfPrecision3;
  String? _currentGeoHashOfPrecision4;

  Future<void> _computeGeoHash(
    _ComputeGeoHash event,
    Emitter<GeoHashState> emit,
  ) async {
    final geoHashOfPrecision9 = _geoHashRepository.geoHashForCoordinates(
      coordinates: event.coordinates,
    );

    final geoHashOfPrecision3 = geoHashOfPrecision9.substring(
      zero,
      three,
    );

    final geoHashOfPrecision4 = geoHashOfPrecision9.substring(
      zero,
      four,
    );

    if (_currentGeoHashOfPrecision3 != geoHashOfPrecision3) {
      _currentGeoHashOfPrecision3 = geoHashOfPrecision3;

      emit(
        GeoHashState.computedGeoHashOfPrecision3(
          geoHashOfPrecision3: geoHashOfPrecision3,
        ),
      );
    }

    if (_currentGeoHashOfPrecision4 != geoHashOfPrecision4) {
      _currentGeoHashOfPrecision4 = geoHashOfPrecision4;

      emit(
        GeoHashState.computedGeoHashOfPrecision4(
          geoHashOfPrecision4: geoHashOfPrecision4,
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
