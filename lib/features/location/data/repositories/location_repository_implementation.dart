import 'dart:async' show StreamController, StreamSubscription;

import 'package:dartz/dartz.dart' show Either, Left, Right;
import 'package:geolocator/geolocator.dart'
    show
        Geolocator,
        LocationPermission,
        LocationSettings,
        Position,
        ServiceStatus;
import 'package:sky_ways/core/errors/failures/location_failure.dart';
import 'package:sky_ways/features/location/domain/entities/location_entity.dart';
import 'package:sky_ways/features/location/domain/repositories/location_repository.dart';

final class LocationRepositoryImplementation implements LocationRepository {
  @override
  Future<LocationPositionEntity> get locationPosition async {
    final lastKnownPosition = await Geolocator.getLastKnownPosition();

    if (lastKnownPosition != null) {
      return LocationPositionEntity(
        latitude: lastKnownPosition.latitude,
        longitude: lastKnownPosition.longitude,
        heading: lastKnownPosition.heading,
      );
    }

    final currentPosition = await Geolocator.getCurrentPosition(
      locationSettings: const LocationSettings(),
    );

    return LocationPositionEntity(
      latitude: currentPosition.latitude,
      longitude: currentPosition.longitude,
      heading: currentPosition.heading,
    );
  }

  @override
  Stream<Either<LocationPositionFailure, LocationPositionEntity>>
      get locationPositionStream {
    late final StreamController<
            Either<LocationPositionFailure, LocationPositionEntity>>
        locationPositionStreamController;
    late final StreamSubscription<Position> positionStreamSubscription;

    locationPositionStreamController = StreamController<
        Either<LocationPositionFailure, LocationPositionEntity>>(
      onListen: () {
        positionStreamSubscription = Geolocator.getPositionStream(
          locationSettings: const LocationSettings(),
        ).listen(
          (position) => locationPositionStreamController.add(
            Right(
              LocationPositionEntity(
                latitude: position.latitude,
                longitude: position.longitude,
                heading: position.heading,
              ),
            ),
          ),
          onError: (_) => locationPositionStreamController.add(
            Left(
              LocationPositionFailure(),
            ),
          ),
        );
      },
      onCancel: () {
        locationPositionStreamController.close();
        positionStreamSubscription.cancel();
      },
    );

    return locationPositionStreamController.stream;
  }

  @override
  Stream<Either<LocationServiceStatusFailure, LocationServiceStatusEntity>>
      get locationServiceStatusStream {
    late final StreamController<
            Either<LocationServiceStatusFailure, LocationServiceStatusEntity>>
        locationServiceStatusStreamController;
    late final StreamSubscription<ServiceStatus>
        serviceStatusStreamSubscription;

    locationServiceStatusStreamController = StreamController<
        Either<LocationServiceStatusFailure, LocationServiceStatusEntity>>(
      onListen: () {
        Geolocator.isLocationServiceEnabled().then(
          (enabled) => locationServiceStatusStreamController.add(
            Right(
              LocationServiceStatusEntity(
                enabled: enabled,
              ),
            ),
          ),
        );

        serviceStatusStreamSubscription =
            Geolocator.getServiceStatusStream().listen(
          (serviceStatus) => locationServiceStatusStreamController.add(
            Right(
              LocationServiceStatusEntity(
                enabled: serviceStatus == ServiceStatus.enabled,
              ),
            ),
          ),
          onError: (_) => locationServiceStatusStreamController.add(
            Left(
              LocationServiceStatusFailure(),
            ),
          ),
        );
      },
      onCancel: () {
        locationServiceStatusStreamController.close();
        serviceStatusStreamSubscription.cancel();
      },
    );

    return locationServiceStatusStreamController.stream;
  }

  @override
  Future<Either<LocationPermissionFailure, LocationPermissionEntity>>
      requestLocationPermission() async {
    final permissionResult = await Geolocator.requestPermission();

    return switch (permissionResult) {
      LocationPermission.always || LocationPermission.whileInUse => const Right(
          LocationPermissionEntity(
            granted: true,
          ),
        ),
      LocationPermission.denied => const Right(
          LocationPermissionEntity(
            granted: false,
          ),
        ),
      _ => Left(
          LocationPermissionFailure(),
        ),
    };
  }
}
