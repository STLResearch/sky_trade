//ignore_for_file: lines_longer_than_80_chars

import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:sky_trade/core/utils/enums/networking.dart';
import 'package:sky_trade/features/drone_flight_path/data/data_sources/drone_flight_path_remote_data_source.dart';
import 'package:sky_trade/features/drone_flight_path/domain/entities/drone_flight_path_entity.dart';
import 'package:sky_trade/features/drone_flight_path/domain/repositories/drone_flight_path_repository.dart';

final class DroneFlightPathRepositoryImplementation
    implements DroneFlightPathRepository {
  DroneFlightPathRepositoryImplementation(
    DroneFlightPathRemoteDataSource droneFlightPathRemoteDataSource,
  ) : _droneFlightPathRemoteDataSource = droneFlightPathRemoteDataSource;

  final DroneFlightPathRemoteDataSource _droneFlightPathRemoteDataSource;

  @override
  Future<void> listenToDroneFlightPathUpdates({
    required Function1<DroneFlightPathEntity,void> onDroneFlightPathReceived,
    required Function1<ConnectionState, void> onConnectionChanged,
  }) async =>
     _droneFlightPathRemoteDataSource.listenToDroneFlightPathUpdates(
       onDroneFlightPathReceived: onDroneFlightPathReceived,
       onConnectionChanged: onConnectionChanged,
     );

  @override
  void getDroneFlightPathUpdatesFor({required String macAddress}) =>
    _droneFlightPathRemoteDataSource.getDroneFlightPathUpdatesFor(macAddress: macAddress);

  @override
  void stopDroneFlightPathUpdates() => _droneFlightPathRemoteDataSource.stopDroneFlightPathUpdates();
}
