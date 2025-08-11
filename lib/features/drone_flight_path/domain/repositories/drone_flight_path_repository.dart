// SPDX-License-Identifier: UNLICENSED
                            
import 'package:dartz/dartz.dart' show Function1;
import 'package:sky_trade/core/utils/enums/networking.dart'
    show ConnectionState;
import 'package:sky_trade/features/drone_flight_path/domain/entities/drone_flight_path_entity.dart';

abstract interface class DroneFlightPathRepository {
  Future<void> listenFlightPath({
    required Function1<DroneFlightPathEntity, void> onFlightPathReceived,
    required Function1<ConnectionState, void> onConnectionChanged,
  });

  void requestFlightPathFor({
    required String macAddress,
  });

  void stopListeningFlightPath();
}
