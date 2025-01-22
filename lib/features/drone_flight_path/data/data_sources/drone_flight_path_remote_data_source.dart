//ignore_for_file: lines_longer_than_80_chars

import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:sky_trade/core/resources/strings/networking.dart';
import 'package:sky_trade/core/utils/clients/network_client.dart';
import 'package:sky_trade/core/utils/enums/networking.dart';

import 'package:sky_trade/features/drone_flight_path/data/models/drone_flight_path_model.dart';

abstract interface class DroneFlightPathRemoteDataSource {
  Future<Stream<DroneFlightPathModel>> listenToDroneFlightPathUpdates({
    required Function1<ConnectionState, void> onConnectionChanged,
  });

  Future<void> getDroneFlightPathUpdatesFor({
    required String macAddress,
  });
}

final class DroneFlightPathRemoteDataSourceImplementation
    implements DroneFlightPathRemoteDataSource {
  DroneFlightPathRemoteDataSourceImplementation(
    SocketIOClient socketIOClient,
  ) : _socketIOClient = socketIOClient;

  final SocketIOClient _socketIOClient;
  late final StreamController<DroneFlightPathModel>
      _droneFlightPathModelStreamController;

  @override
  Future<Stream<DroneFlightPathModel>> listenToDroneFlightPathUpdates({
    required Function1<ConnectionState, void> onConnectionChanged,
  }) async {
    _droneFlightPathModelStreamController = StreamController<DroneFlightPathModel>(
      onCancel: _stopListeningToDroneFlightPathUpdates,
    );
    await _socketIOClient.listenToEvent(
      eventName: droneFlightPathResponseEvent,
      onResponse: (response) {
        if (response != null) {
          _droneFlightPathModelStreamController.add(
            DroneFlightPathModel.fromJson(response as Map<String, dynamic>),
          );
        }
      },
      onConnectionChanged: onConnectionChanged,
    );
    return _droneFlightPathModelStreamController.stream;
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

  void _stopListeningToDroneFlightPathUpdates() {
    _droneFlightPathModelStreamController.close();
    _socketIOClient.close();
  }
}
