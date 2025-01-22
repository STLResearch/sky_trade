import 'package:sky_trade/core/utils/typedefs/networking.dart';

base class DroneFlightPathEntity {
  DroneFlightPathEntity({
    required this.droneFlightPath,
  });

  final List<LngLat> droneFlightPath;
}
