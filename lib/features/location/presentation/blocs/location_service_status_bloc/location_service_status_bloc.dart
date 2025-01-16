import 'dart:async' show StreamSubscription;

import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:dartz/dartz.dart' show Either;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/location_failure.dart'
    show LocationServiceStatusFailure;
import 'package:sky_trade/features/location/domain/entities/location_entity.dart'
    show LocationServiceStatusEntity;
import 'package:sky_trade/features/location/domain/repositories/location_repository.dart';

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

    on<_LocationServiceStatusGotten>(
      _locationServiceStatusGotten,
    );

    on<_LocationServiceStatusNotGotten>(
      _locationServiceStatusNotGotten,
    );

    on<_StopListeningLocationServiceStatus>(
      _stopListeningLocationServiceStatus,
    );
  }

  @override
  Future<void> close() async {
    await _cleanupStreamSubscription();

    return super.close();
  }

  final LocationRepository _locationRepository;

  StreamSubscription<
          Either<LocationServiceStatusFailure, LocationServiceStatusEntity>>?
      _locationServiceStatusStreamSubscription;

  Future<void> _listenLocationServiceStatus(
    _ListenLocationServiceStatus _,
    Emitter<LocationServiceStatusState> emit,
  ) async {
    await _cleanupStreamSubscription();

    emit(
      const LocationServiceStatusState.gettingLocationServiceStatus(),
    );

    final result = await _locationRepository.locationServiceStatus;

    add(
      LocationServiceStatusEvent.locationServiceStatusGotten(
        locationServiceStatusEntity: result,
      ),
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
        (locationServiceStatusFailure) => add(
          LocationServiceStatusEvent.locationServiceStatusNotGotten(
            locationServiceStatusFailure: locationServiceStatusFailure,
          ),
        ),
        (locationServiceStatusEntity) => add(
          LocationServiceStatusEvent.locationServiceStatusGotten(
            locationServiceStatusEntity: locationServiceStatusEntity,
          ),
        ),
      );

  void _locationServiceStatusNotGotten(
    _LocationServiceStatusNotGotten event,
    Emitter<LocationServiceStatusState> emit,
  ) =>
      emit(
        LocationServiceStatusState.failedToGetLocationServiceStatus(
          locationServiceStatusFailure: event.locationServiceStatusFailure,
        ),
      );

  void _locationServiceStatusGotten(
    _LocationServiceStatusGotten event,
    Emitter<LocationServiceStatusState> emit,
  ) =>
      emit(
        LocationServiceStatusState.gotLocationServiceStatus(
          locationServiceStatusEntity: event.locationServiceStatusEntity,
        ),
      );

  Future<void> _stopListeningLocationServiceStatus(
    _StopListeningLocationServiceStatus _,
    Emitter<LocationServiceStatusState> emit,
  ) async {
    await _cleanupStreamSubscription();

    emit(
      const LocationServiceStatusState.initial(),
    );
  }

  Future<void> _cleanupStreamSubscription() async {
    await _locationServiceStatusStreamSubscription?.cancel();
    _locationServiceStatusStreamSubscription = null;
  }
}
