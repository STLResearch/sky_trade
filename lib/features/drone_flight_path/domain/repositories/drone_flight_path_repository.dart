import 'package:dartz/dartz.dart';
import 'package:sky_trade/core/utils/enums/networking.dart';
import 'package:sky_trade/features/drone_flight_path/domain/entities/drone_flight_path_entity.dart';

abstract interface class DroneFlightPathRepository {
  Future<void> listenToDroneFlightPathUpdates({
    required Function1<DroneFlightPathEntity,void> onDroneFlightPathReceived,
    required Function1<ConnectionState,void> onConnectionChanged,
  });

  void getDroneFlightPathUpdatesFor({
    required String macAddress,
  });

  void stopDroneFlightPathUpdates();
}
