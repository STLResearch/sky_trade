// SPDX-License-Identifier: UNLICENSED
                            
import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/settings_failure.dart'
    show TrackingStatusFailure;
import 'package:sky_trade/features/settings/domain/entities/settings_entity.dart'
    show TrackingStatusEntity;
import 'package:sky_trade/features/settings/domain/repositories/settings_repository.dart';

part 'tracking_authorization_status_event.dart';

part 'tracking_authorization_status_state.dart';

part 'tracking_authorization_status_bloc.freezed.dart';

class TrackingAuthorizationStatusBloc extends Bloc<
    TrackingAuthorizationStatusEvent, TrackingAuthorizationStatusState> {
  TrackingAuthorizationStatusBloc(
    SettingsRepository settingsRepository,
  )   : _settingsRepository = settingsRepository,
        super(
          const TrackingAuthorizationStatusState.initial(),
        ) {
    on<_Check>(
      _check,
    );
  }

  final SettingsRepository _settingsRepository;

  Future<void> _check(
    _Check event,
    Emitter<TrackingAuthorizationStatusState> emit,
  ) async {
    emit(
      const TrackingAuthorizationStatusState.checking(),
    );

    final result = await _settingsRepository.trackingAuthorizationStatus;

    result.fold(
      (trackingStatusFailure) => emit(
        TrackingAuthorizationStatusState.cannotAuthorize(
          trackingStatusFailure: trackingStatusFailure,
        ),
      ),
      (trackingStatusEntity) => emit(
        TrackingAuthorizationStatusState.maybeAuthorized(
          trackingStatusEntity: trackingStatusEntity,
        ),
      ),
    );
  }
}
