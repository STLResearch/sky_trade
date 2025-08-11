// SPDX-License-Identifier: UNLICENSED
                            
import 'package:dartz/dartz.dart' show Function1;
import 'package:sky_trade/core/utils/enums/networking.dart'
    show ConnectionState;
import 'package:sky_trade/features/drone_flight_path/data/data_sources/drone_flight_path_remote_data_source.dart'
    show DroneFlightPathRemoteDataSource;
import 'package:sky_trade/features/drone_flight_path/domain/entities/drone_flight_path_entity.dart'
    show DroneFlightPathEntity;
import 'package:sky_trade/features/drone_flight_path/domain/repositories/drone_flight_path_repository.dart';

final class DroneFlightPathRepositoryImplementation
    implements DroneFlightPathRepository {
  const DroneFlightPathRepositoryImplementation(
    DroneFlightPathRemoteDataSource droneFlightPathRemoteDataSource,
  ) : _droneFlightPathRemoteDataSource = droneFlightPathRemoteDataSource;

  final DroneFlightPathRemoteDataSource _droneFlightPathRemoteDataSource;

  @override
  Future<void> listenFlightPath({
    required Function1<DroneFlightPathEntity, void> onFlightPathReceived,
    required Function1<ConnectionState, void> onConnectionChanged,
  }) =>
      _droneFlightPathRemoteDataSource.listenFlightPath(
        onFlightPathReceived: onFlightPathReceived,
        onConnectionChanged: onConnectionChanged,
      );

  @override
  void requestFlightPathFor({
    required String macAddress,
  }) =>
      _droneFlightPathRemoteDataSource.requestFlightPathFor(
        macAddress: macAddress,
      );

  @override
  void stopListeningFlightPath() =>
      _droneFlightPathRemoteDataSource.stopListeningFlightPath();
}
