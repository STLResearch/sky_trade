import 'package:dartz/dartz.dart' show Function1;
import 'package:sky_trade/core/resources/strings/networking.dart'
    show
        bodyKey,
        droneFlightPathEvent,
        droneFlightPathResponseEvent,
        isTestKey,
        macAddressKey;
import 'package:sky_trade/core/utils/clients/network_client.dart'
    show SocketIOClient;
import 'package:sky_trade/core/utils/enums/networking.dart'
    show ConnectionState;
import 'package:sky_trade/features/drone_flight_path/data/models/drone_flight_path_model.dart'
    show DroneFlightPathModel;

abstract interface class DroneFlightPathRemoteDataSource {
  Future<void> listenFlightPath({
    required Function1<DroneFlightPathModel, void> onFlightPathReceived,
    required Function1<ConnectionState, void> onConnectionChanged,
  });

  void requestFlightPathFor({
    required String macAddress,
  });

  void stopListeningFlightPath();
}

final class DroneFlightPathRemoteDataSourceImplementation
    implements DroneFlightPathRemoteDataSource {
  const DroneFlightPathRemoteDataSourceImplementation(
    SocketIOClient socketIOClient,
  ) : _socketIOClient = socketIOClient;

  final SocketIOClient _socketIOClient;

  @override
  Future<void> listenFlightPath({
    required Function1<DroneFlightPathModel, void> onFlightPathReceived,
    required Function1<ConnectionState, void> onConnectionChanged,
  }) =>
      _socketIOClient.listenToEvent<int,Map<String, dynamic>>(
        eventName: droneFlightPathResponseEvent,
        onSuccess: (response) => onFlightPathReceived(
          DroneFlightPathModel.fromJson(
            response,
          ),
        ),
        onConnectionChanged: onConnectionChanged,
      );

  @override
  void requestFlightPathFor({
    required String macAddress,
  }) =>
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
  void stopListeningFlightPath() => _socketIOClient.close();
}
