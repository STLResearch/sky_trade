//ignore_for_file: lines_longer_than_80_chars

import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:sky_trade/core/resources/strings/networking.dart';
import 'package:sky_trade/core/utils/clients/network_client.dart';
import 'package:sky_trade/core/utils/enums/networking.dart';

import 'package:sky_trade/features/drone_flight_path/data/models/drone_flight_path_model.dart';

abstract interface class DroneFlightPathRemoteDataSource {
  Future<void> listenToDroneFlightPathUpdates({
    required Function1<DroneFlightPathModel,void> onDroneFlightPathReceived,
    required Function1<ConnectionState,void> onConnectionChanged,
  });

  Future<void> getDroneFlightPathUpdatesFor({
    required String macAddress,
  });

  void stopDroneFlightPathUpdates();
}

final class DroneFlightPathRemoteDataSourceImplementation
    implements DroneFlightPathRemoteDataSource {
  DroneFlightPathRemoteDataSourceImplementation(
    SocketIOClient socketIOClient,
  ) : _socketIOClient = socketIOClient;

  final SocketIOClient _socketIOClient;

  @override
  Future<void> listenToDroneFlightPathUpdates({
    required Function1<DroneFlightPathModel,void> onDroneFlightPathReceived,
    required Function1<ConnectionState,void> onConnectionChanged,
  }) async {
    await _socketIOClient.listenToEvent(
      eventName: droneFlightPathResponseEvent,
      onResponse: (response) {
        if (response != null) {
          onDroneFlightPathReceived(
            DroneFlightPathModel.fromJson(response as Map<String, dynamic>),
          );
        }
      },
      onConnectionChanged: onConnectionChanged,
    );
  }

  @override
  Future<void> getDroneFlightPathUpdatesFor({
    required String macAddress,
  }) async =>
      _socketIOClient.sendDataToEvent(
        eventName: droneFlightPathEvent,
        data: {
          bodyKey: {
            isTestKey: false,
            macAddressKey: macAddress,
          },
        },
      );

  @override
  void stopDroneFlightPathUpdates() => _socketIOClient.close();
}
