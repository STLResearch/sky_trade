import 'dart:async' show StreamSubscription;

import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:dartz/dartz.dart' show Either;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_ways/core/errors/failures/location_failure.dart'
    show LocationServiceStatusFailure;
import 'package:sky_ways/features/location/domain/entities/location_entity.dart'
    show LocationServiceStatusEntity;
import 'package:sky_ways/features/location/domain/repositories/location_repository.dart'
    show LocationRepository;

part 'location_service_status_event.dart';

part 'location_service_status_state.dart';

part 'location_service_status_bloc.freezed.dart';

class LocationServiceStatusBloc
    extends Bloc<LocationServiceStatusEvent, LocationServiceStatusState> {
  LocationServiceStatusBloc(
    LocationRepository locationRepository,
  )   : _locationRepository = locationRepository,
        super(
          const LocationServiceStatusState.initial(),
        ) {
    on<_ListenLocationServiceStatus>(
      _listenLocationServiceStatus,
    );

    on<_StopListeningLocationServiceStatus>(
      _stopListeningLocationServiceStatus,
    );
  }

  final LocationRepository _locationRepository;

  StreamSubscription<
          Either<LocationServiceStatusFailure, LocationServiceStatusEntity>>?
      _locationServiceStatusStreamSubscription;

  Future<void> _listenLocationServiceStatus(
    _ListenLocationServiceStatus event,
    Emitter<LocationServiceStatusState> emit,
  ) async {
    await _cancelListeningLocationServiceStatus(
      emit: emit,
    );

    emit(
      const LocationServiceStatusState.gettingLocationServiceStatus(),
    );

    _locationServiceStatusStreamSubscription =
        _locationRepository.locationServiceStatusStream.listen(
      (
        locationServiceStatusFailureOrEntity,
      ) =>
          _listenLocationServiceStatusStream(
        locationServiceStatusFailureOrEntity:
            locationServiceStatusFailureOrEntity,
        emit: emit,
      ),
    );
  }

  void _listenLocationServiceStatusStream({
    required Either<LocationServiceStatusFailure, LocationServiceStatusEntity>
        locationServiceStatusFailureOrEntity,
    required Emitter<LocationServiceStatusState> emit,
  }) =>
      locationServiceStatusFailureOrEntity.fold(
        (locationServiceStatusFailure) => emit(
          LocationServiceStatusState.failedToGetLocationServiceStatus(
            locationServiceStatusFailure: locationServiceStatusFailure,
          ),
        ),
        (locationServiceStatusEntity) => emit(
          LocationServiceStatusState.gotLocationServiceStatus(
            locationServiceStatusEntity: locationServiceStatusEntity,
          ),
        ),
      );

  Future<void> _stopListeningLocationServiceStatus(
    _StopListeningLocationServiceStatus _,
    Emitter<LocationServiceStatusState> emit,
  ) =>
      _cancelListeningLocationServiceStatus(
        emit: emit,
      );

  Future<void> _cancelListeningLocationServiceStatus({
    required Emitter<LocationServiceStatusState> emit,
  }) async {
    await _locationServiceStatusStreamSubscription?.cancel();

    if (_locationServiceStatusStreamSubscription != null) {
      _locationServiceStatusStreamSubscription = null;
    }

    emit(
      const LocationServiceStatusState.initial(),
    );
  }
}
