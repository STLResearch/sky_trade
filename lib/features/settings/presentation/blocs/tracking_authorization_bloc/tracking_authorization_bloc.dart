import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/settings_failure.dart'
    show TrackingStatusFailure;
import 'package:sky_trade/features/settings/domain/entities/settings_entity.dart'
    show TrackingStatusEntity;
import 'package:sky_trade/features/settings/domain/repositories/settings_repository.dart';

part 'tracking_authorization_bloc.freezed.dart';

part 'tracking_authorization_event.dart';

part 'tracking_authorization_state.dart';

class TrackingAuthorizationBloc
    extends Bloc<TrackingAuthorizationEvent, TrackingAuthorizationState> {
  TrackingAuthorizationBloc(
    SettingsRepository settingsRepository,
  )   : _settingsRepository = settingsRepository,
        super(
          const TrackingAuthorizationState.initial(),
        ) {
    on<_CheckTrackingStatus>(
      _checkTrackingStatus,
    );

    on<_RequestTracking>(
      _requestTracking,
    );
  }

  final SettingsRepository _settingsRepository;

  Future<void> _checkTrackingStatus(
    _CheckTrackingStatus event,
    Emitter<TrackingAuthorizationState> emit,
  ) async {
    emit(
      const TrackingAuthorizationState.processing(),
    );

    final result = await _settingsRepository.trackingAuthorizationStatus;

    result.fold(
      (trackingStatusFailure) => emit(
        TrackingAuthorizationState.cannotAuthorizeTracking(
          trackingStatusFailure: trackingStatusFailure,
        ),
      ),
      (trackingStatusEntity) => emit(
        TrackingAuthorizationState.maybeAuthorizedTracking(
          trackingStatusEntity: trackingStatusEntity,
        ),
      ),
    );
  }

  Future<void> _requestTracking(
    _RequestTracking event,
    Emitter<TrackingAuthorizationState> emit,
  ) async {
    emit(
      const TrackingAuthorizationState.processing(),
    );

    final result =
        await _settingsRepository.maybeRequestTrackingAuthorization();

    result.fold(
      (trackingStatusFailure) => emit(
        TrackingAuthorizationState.cannotAuthorizeTracking(
          trackingStatusFailure: trackingStatusFailure,
        ),
      ),
      (trackingStatusEntity) => emit(
        TrackingAuthorizationState.maybeAuthorizedTracking(
          trackingStatusEntity: trackingStatusEntity,
        ),
      ),
    );
  }
}
