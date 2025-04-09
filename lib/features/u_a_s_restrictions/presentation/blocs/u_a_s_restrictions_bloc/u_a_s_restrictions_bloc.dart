import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/u_a_s_restrictions_failure.dart';
import 'package:sky_trade/features/u_a_s_restrictions/domain/entities/restriction_entity.dart'
    show RestrictionEntity;
import 'package:sky_trade/features/u_a_s_restrictions/domain/repositories/u_a_s_restrictions_repository.dart';

part 'u_a_s_restrictions_bloc.freezed.dart';

part 'u_a_s_restrictions_event.dart';

part 'u_a_s_restrictions_state.dart';

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

    on<_SelectRestriction>(
      _selectRestriction,
    );
  }

  final UASRestrictionsRepository _uASRestrictionsRepository;
  final Set<RestrictionEntity> _restrictionEntities = {};
  final Set<String> previousGeoHashRequest = {};

  Future<void> _getRestrictions(
    _GetRestrictions event,
    Emitter<UASRestrictionsState> emit,
  ) async {
    if (previousGeoHashRequest.contains(
      event.geoHash,
    )) {
      emit(
        const UASRestrictionsState.previouslyGotRestrictions(),
      );

      return;
    }

    previousGeoHashRequest.add(
      event.geoHash,
    );

    emit(
      const UASRestrictionsState.gettingRestrictions(),
    );

    final result = await _uASRestrictionsRepository.getRestrictionsUsing(
      geoHash: event.geoHash,
    );

    result.fold(
      (uASRestrictionsFailure) {
        emit(
          UASRestrictionsState.failedToGetRestrictions(
            uasRestrictionsFailure: uASRestrictionsFailure,
          ),
        );

        previousGeoHashRequest.remove(
          event.geoHash,
        );
      },
      (restrictionEntities) {
        restrictionEntities.removeWhere(
          _restrictionEntities.contains,
        );

        emit(
          UASRestrictionsState.gotRestrictions(
            geoHash: event.geoHash,
            restrictionEntities: restrictionEntities,
          ),
        );

        _restrictionEntities.addAll(
          restrictionEntities,
        );
      },
    );
  }

  void _selectRestriction(
    _SelectRestriction event,
    Emitter<UASRestrictionsState> emit,
  ) {
    emit(
      UASRestrictionsState.selectedRestriction(
        selectedRestriction: switch (event.restrictionId == null) {
          true => null,
          false => _restrictionEntities.firstWhere(
              (entity) => entity.id == event.restrictionId,
            ),
        },
      ),
    );
  }
}
