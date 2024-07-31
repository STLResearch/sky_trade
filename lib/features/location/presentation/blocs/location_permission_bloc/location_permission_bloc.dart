import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:dartz/dartz.dart' show Either;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_ways/core/errors/failures/location_failure.dart'
    show LocationPermissionFailure;
import 'package:sky_ways/features/location/domain/entities/location_entity.dart'
    show LocationPermissionEntity;
import 'package:sky_ways/features/location/domain/repositories/location_repository.dart'
    show LocationRepository;

part 'location_permission_event.dart';

part 'location_permission_state.dart';

part 'location_permission_bloc.freezed.dart';

class LocationPermissionBloc
    extends Bloc<LocationPermissionEvent, LocationPermissionState> {
  LocationPermissionBloc(
    LocationRepository locationRepository,
  )   : _locationRepository = locationRepository,
        super(
          const LocationPermissionState.initial(),
        ) {
    on<_RequestPermission>(
      _requestPermission,
    );
  }

  final LocationRepository _locationRepository;

  Future<void> _requestPermission(
    _RequestPermission event,
    Emitter<LocationPermissionState> emit,
  ) async {
    emit(
      const LocationPermissionState.requestingPermission(),
    );

    final result = await _locationRepository.requestLocationPermission();

    result.fold(
      (locationPermissionFailure) => emit(
        LocationPermissionState.cannotRequestPermission(
          locationPermissionFailure: locationPermissionFailure,
        ),
      ),
      (locationPermissionEntity) => emit(
        LocationPermissionState.maybeGrantedPermission(
          locationPermissionEntity: locationPermissionEntity,
        ),
      ),
    );
  }
}
