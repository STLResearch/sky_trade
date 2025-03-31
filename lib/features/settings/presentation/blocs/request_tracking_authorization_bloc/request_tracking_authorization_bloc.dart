import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/settings_failure.dart'
    show TrackingStatusFailure;
import 'package:sky_trade/features/settings/domain/entities/settings_entity.dart'
    show TrackingStatusEntity;
import 'package:sky_trade/features/settings/domain/repositories/settings_repository.dart';

part 'request_tracking_authorization_event.dart';

part 'request_tracking_authorization_state.dart';

part 'request_tracking_authorization_bloc.freezed.dart';

class RequestTrackingAuthorizationBloc extends Bloc<
    RequestTrackingAuthorizationEvent, RequestTrackingAuthorizationState> {
  RequestTrackingAuthorizationBloc(
    SettingsRepository settingsRepository,
  )   : _settingsRepository = settingsRepository,
        super(
          const RequestTrackingAuthorizationState.initial(),
        ) {
    on<_Request>(
      _request,
    );
  }

  final SettingsRepository _settingsRepository;

  Future<void> _request(
    _Request event,
    Emitter<RequestTrackingAuthorizationState> emit,
  ) async {
    emit(
      const RequestTrackingAuthorizationState.requesting(),
    );

    final result =
        await _settingsRepository.maybeRequestTrackingAuthorization();

    result.fold(
      (trackingStatusFailure) => emit(
        RequestTrackingAuthorizationState.cannotAuthorize(
          trackingStatusFailure: trackingStatusFailure,
        ),
      ),
      (trackingStatusEntity) => emit(
        RequestTrackingAuthorizationState.maybeAuthorized(
          trackingStatusEntity: trackingStatusEntity,
        ),
      ),
    );
  }
}
