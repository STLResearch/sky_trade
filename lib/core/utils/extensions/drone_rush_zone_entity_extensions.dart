import 'dart:ui' show Color;

import 'package:sky_trade/core/resources/colors.dart' show hex2357AB, hex2653AB;
import 'package:sky_trade/features/rewards/domain/entities/rewards_entity.dart'
    show DroneRushZoneEntity;

extension DroneRushZoneEntityExtensions on DroneRushZoneEntity {
  Color get circleFillColor => hex2653AB;

  Color get circleOutlineColor => hex2357AB;
}
