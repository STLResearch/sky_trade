import 'package:bloc/bloc.dart' show Bloc, Emitter, EventTransformer;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart' show DebounceExtensions;
import 'package:sky_trade/core/resources/numbers/ui.dart' show three;
import 'package:sky_trade/core/utils/typedefs/ui.dart' show Bounds, LatLng;
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

  Future<void> _computeGeoHash(
    _ComputeGeoHash event,
    Emitter<GeoHashState> emit,
  ) async {
    if (event.coordinates == null && event.bounds == null) {
      emit(
        const GeoHashState.failedToComputeGeoHash(),
      );

      return;
    }

    final result = switch (event.coordinates != null) {
      true => _geoHashRepository.geoHashForCoordinates(
          coordinates: event.coordinates!,
          precision: event.precision,
        ),
      false => _geoHashRepository.geoHashForBounds(
          bounds: event.bounds!,
          precision: event.precision,
        ),
    };

    emit(
      GeoHashState.computedGeoHash(
        geoHash: result,
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
          .asyncExpand(
            mapper,
          );
}
