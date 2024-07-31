import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_ways/core/errors/failures/u_a_s_restrictions_failure.dart';
import 'package:sky_ways/features/u_a_s_restrictions/domain/entities/restriction_entity.dart'
    show RestrictionEntity;
import 'package:sky_ways/features/u_a_s_restrictions/domain/repositories/u_a_s_restrictions_repository.dart';

part 'u_a_s_restrictions_event.dart';

part 'u_a_s_restrictions_state.dart';

part 'u_a_s_restrictions_bloc.freezed.dart';

class UASRestrictionsBloc
    extends Bloc<UASRestrictionsEvent, UASRestrictionsState> {
  UASRestrictionsBloc(
    UASRestrictionsRepository uASRestrictionsRepository,
  )   : _uASRestrictionsRepository = uASRestrictionsRepository,
        super(
          const UASRestrictionsState.initial(),
        ) {
    on<_GetRestrictions>(
      _getRestrictions,
    );
  }

  final UASRestrictionsRepository _uASRestrictionsRepository;

  Future<void> _getRestrictions(
    _GetRestrictions event,
    Emitter<UASRestrictionsState> emit,
  ) async {
    emit(
      const UASRestrictionsState.gettingRestrictions(),
    );

    final result = await _uASRestrictionsRepository.getRestrictionsWithin(
      southWestLatitude: event.southWestLatitude,
      southWestLongitude: event.southWestLongitude,
      northEastLatitude: event.northEastLatitude,
      northEastLongitude: event.northEastLongitude,
    );

    result.fold(
      (uASRestrictionsFailure) => emit(
        UASRestrictionsState.failedToGetRestrictions(
          uasRestrictionsFailure: uASRestrictionsFailure,
        ),
      ),
      (restrictionEntities) => emit(
        UASRestrictionsState.gotRestrictions(
          restrictionEntities: restrictionEntities,
        ),
      ),
    );
  }
}
