import 'dart:math' show cos, pi, sin;
import 'dart:ui' show Color;

import 'package:sky_trade/core/resources/colors.dart' show hex2653AB;
import 'package:sky_trade/features/rewards/domain/entities/rewards_entity.dart'
    show DroneRushZoneEntity;

extension DroneRushZoneEntityExtensions on DroneRushZoneEntity {
  Color get circleFillColor => hex2653AB;

  int _getNumCirclePoints() {
    const spacingInMeters = 2;
    final circumference = 2 * pi * radius;
    return (circumference / spacingInMeters).round();
  }

  List<List<List<double>>> generateCirclePolygon() {
    const earthRadius = 6371000.0;
    final latInRadians = latitude * pi / 180;
    final longInRadians = longitude * pi / 180;

    final numOfPoints = _getNumCirclePoints();
    final circlePolygonCoordinates = <List<double>>[];

    for (var i = 0; i <= numOfPoints; i++) {
      final theta = i * 2 * pi / numOfPoints;
      final dx = radius * cos(theta);
      final dy = radius * sin(theta);

      final deltaLat = dy / earthRadius;
      final deltaLon = dx / (earthRadius * cos(latInRadians));

      final pointLat = (latInRadians + deltaLat) * 180 / pi;
      final pointLong = (longInRadians + deltaLon) * 180 / pi;

      circlePolygonCoordinates.add(
        [
          pointLong,
          pointLat,
        ],
      );
    }
    return [
      circlePolygonCoordinates,
    ];
  }
}
