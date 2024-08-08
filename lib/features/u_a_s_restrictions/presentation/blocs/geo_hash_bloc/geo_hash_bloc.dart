import 'package:bloc/bloc.dart' show Bloc, Emitter, EventTransformer;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart' show DebounceExtensions;
import 'package:sky_ways/core/resources/numbers/ui.dart' show three;
import 'package:sky_ways/features/u_a_s_restrictions/domain/repositories/u_a_s_restrictions_repository.dart';

part 'geo_hash_bloc.freezed.dart';

part 'geo_hash_event.dart';

part 'geo_hash_state.dart';

class GeoHashBloc extends Bloc<GeoHashEvent, GeoHashState> {
  GeoHashBloc(
    UASRestrictionsRepository uASRestrictionsRepository,
  )   : _uASRestrictionsRepository = uASRestrictionsRepository,
        super(
          const GeoHashState.initial(),
        ) {
    on<_ComputeGeoHash>(
      _computeGeoHash,
      transformer: _debounceTransformer,
    );
  }

  final UASRestrictionsRepository _uASRestrictionsRepository;

  Future<void> _computeGeoHash(
    _ComputeGeoHash event,
    Emitter<GeoHashState> emit,
  ) async {
    final result = _uASRestrictionsRepository.geoHashForCoordinates(
      latitude: event.latitude,
      longitude: event.longitude,
    );

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
