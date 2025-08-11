// SPDX-License-Identifier: UNLICENSED
                            
import 'package:equatable/equatable.dart' show Equatable;

final class LocationPositionEntity extends Equatable {
  const LocationPositionEntity({
    required this.latitude,
    required this.longitude,
    required this.heading,
  });

  final double latitude;
  final double longitude;
  final double heading;

  @override
  List<Object?> get props => [
        latitude,
        longitude,
        heading,
      ];
}

final class LocationServiceStatusEntity extends Equatable {
  const LocationServiceStatusEntity({
    required this.enabled,
  });

  final bool enabled;

  @override
  List<Object?> get props => [
        enabled,
      ];
}

final class LocationPermissionEntity extends Equatable {
  const LocationPermissionEntity({
    required this.granted,
  });

  final bool granted;

  @override
  List<Object?> get props => [
        granted,
      ];
}
