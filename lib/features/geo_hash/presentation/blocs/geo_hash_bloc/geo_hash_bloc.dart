// SPDX-License-Identifier: UNLICENSED
                            
import 'package:bloc/bloc.dart' show Bloc, Emitter, EventTransformer;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart' show DebounceExtensions, SwitchMapExtension;
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
  String? _currentGeoHashOfPrecision3;

  Future<void> _computeGeoHash(
    _ComputeGeoHash event,
    Emitter<GeoHashState> emit,
  ) async {
    final geoHashOfPrecision3 = _geoHashRepository.geoHashForCoordinates(
      coordinates: event.coordinates,
      precision: three,
    );

    if (_currentGeoHashOfPrecision3 == geoHashOfPrecision3) {
      return;
    }

    _currentGeoHashOfPrecision3 = geoHashOfPrecision3;

    emit(
      GeoHashState.computedGeoHashOfPrecision3(
        geoHash: geoHashOfPrecision3,
      ),
    );
  }

  EventTransformer<_ComputeGeoHash> get _debounceTransformer =>
      (events, mapper) => events
          .debounceTime(
            const Duration(
              seconds: three,
            ),
          )
          .switchMap(
            mapper,
          );
}
