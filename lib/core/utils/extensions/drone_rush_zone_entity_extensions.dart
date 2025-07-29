import 'dart:math' show cos, pi, sin;
import 'dart:ui' show Color;

import 'package:sky_trade/core/resources/colors.dart' show hex2653AB;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show oneEighty, sixMillionThreeSeventyOneThousandDotNil, two, zero;
import 'package:sky_trade/features/rewards/domain/entities/rewards_entity.dart'
    show DroneRushZoneEntity;

extension DroneRushZoneEntityExtensions on DroneRushZoneEntity {
  Color get circleFillColor => hex2653AB;

  List<List<List<double>>> computeCirclePolygon() {
    const earthRadius = sixMillionThreeSeventyOneThousandDotNil;
    final latInRadians = latitude * pi / oneEighty;
    final longInRadians = longitude * pi / oneEighty;

    final numOfPoints = _computeNumCirclePoints();
    final circlePolygonCoordinates = <List<double>>[];

    for (var i = zero; i <= numOfPoints; i++) {
      final theta = i * two * pi / numOfPoints;
      final dx = radius * cos(theta);
      final dy = radius * sin(theta);

      final deltaLat = dy / earthRadius;
      final deltaLon = dx / (earthRadius * cos(latInRadians));

      final pointLat = (latInRadians + deltaLat) * oneEighty / pi;
      final pointLong = (longInRadians + deltaLon) * oneEighty / pi;

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

  int _computeNumCirclePoints() {
    const spacingInMeters = two;
    final circumference = two * pi * radius;
    return (circumference / spacingInMeters).round();
  }
}
