import 'dart:async' show StreamSubscription;

import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:dartz/dartz.dart' show Either;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/location_failure.dart'
    show LocationPositionFailure;
import 'package:sky_trade/features/location/domain/entities/location_entity.dart'
    show LocationPositionEntity;
import 'package:sky_trade/features/location/domain/repositories/location_repository.dart';

part 'location_position_event.dart';

part 'location_position_state.dart';

part 'location_position_bloc.freezed.dart';

class LocationPositionBloc
    extends Bloc<LocationPositionEvent, LocationPositionState> {
  LocationPositionBloc(
    LocationRepository locationRepository,
  )   : _locationRepository = locationRepository,
        super(
          const LocationPositionState.initial(),
        ) {
    on<_GetLocationPosition>(
      _getLocationPosition,
    );

    on<_ListenLocationPosition>(
      _listenLocationPosition,
    );

    on<_LocationPositionGotten>(
      _locationPositionGotten,
    );

    on<_LocationPositionNotGotten>(
      _locationPositionNotGotten,
    );

    on<_StopListeningLocationPosition>(
      _stopListeningLocationPosition,
    );
  }

  final LocationRepository _locationRepository;

  Future<void> _getLocationPosition(
    _GetLocationPosition _,
    Emitter<LocationPositionState> emit,
  ) async {
    emit(
      const LocationPositionState.gettingLocationPosition(),
    );

    final result = await _locationRepository.locationPosition;

    add(
      LocationPositionEvent.locationPositionGotten(
        locationPositionEntity: result,
      ),
    );
  }

  StreamSubscription<Either<LocationPositionFailure, LocationPositionEntity>>?
      _locationPositionStreamSubscription;

  Future<void> _listenLocationPosition(
    _ListenLocationPosition _,
    Emitter<LocationPositionState> emit,
  ) async {
    await cleanupStreamSubscription();

    emit(
      const LocationPositionState.gettingLocationPosition(),
    );

    _locationPositionStreamSubscription =
        _locationRepository.locationPositionStream.listen(
      (
        locationPositionFailureOrEntity,
      ) =>
          _listenLocationPositionStream(
        locationPositionFailureOrEntity: locationPositionFailureOrEntity,
        emit: emit,
      ),
    );
  }

  void _listenLocationPositionStream({
    required Either<LocationPositionFailure, LocationPositionEntity>
        locationPositionFailureOrEntity,
    required Emitter<LocationPositionState> emit,
  }) =>
      locationPositionFailureOrEntity.fold(
        (locationPositionFailure) => add(
          LocationPositionEvent.locationPositionNotGotten(
            locationPositionFailure: locationPositionFailure,
          ),
        ),
        (locationPositionEntity) => add(
          LocationPositionEvent.locationPositionGotten(
            locationPositionEntity: locationPositionEntity,
          ),
        ),
      );

  void _locationPositionNotGotten(
    _LocationPositionNotGotten event,
    Emitter<LocationPositionState> emit,
  ) =>
      emit(
        LocationPositionState.failedToGetLocationPosition(
          locationPositionFailure: event.locationPositionFailure,
        ),
      );

  void _locationPositionGotten(
    _LocationPositionGotten event,
    Emitter<LocationPositionState> emit,
  ) =>
      emit(
        LocationPositionState.gotLocationPosition(
          locationPositionEntity: event.locationPositionEntity,
        ),
      );

  Future<void> _stopListeningLocationPosition(
    _StopListeningLocationPosition _,
    Emitter<LocationPositionState> emit,
  ) async {
    await cleanupStreamSubscription();

    emit(
      const LocationPositionState.initial(),
    );
  }

  Future<void> cleanupStreamSubscription() async {
    await _locationPositionStreamSubscription?.cancel();
    _locationPositionStreamSubscription = null;
  }

  @override
  Future<void> close() async {
    await cleanupStreamSubscription();

    return super.close();
  }
}
