import 'package:dartz/dartz.dart' show Function1;
import 'package:sky_trade/core/resources/strings/networking.dart'
    show dataKey, geoHashKey, isTestKey, uasActivityEvent, uasActivityRoom;
import 'package:sky_trade/core/utils/clients/network_client.dart'
    show SocketIOClient;
import 'package:sky_trade/core/utils/enums/networking.dart'
    show ConnectionState;
import 'package:sky_trade/features/u_a_s_activity/data/models/u_a_s_model.dart'
    show UASModel;

abstract interface class UASActivityRemoteDataSource {
  Future<void> listenUASActivities({
    required Function1<List<UASModel>, void> onUASActivitiesGotten,
    required Function1<ConnectionState, void> onConnectionChanged,
  });

  Future<void> requestNewUASActivitiesAround({
    required String geoHash,
  });

  void stopListeningUASActivities();
}

final class UASActivityRemoteDataSourceImplementation
    implements UASActivityRemoteDataSource {
  const UASActivityRemoteDataSourceImplementation(
    SocketIOClient socketIOClient,
  ) : _socketIOClient = socketIOClient;

  final SocketIOClient _socketIOClient;

  @override
  Future<void> listenUASActivities({
    required Function1<List<UASModel>, void> onUASActivitiesGotten,
    required Function1<ConnectionState, void> onConnectionChanged,
  }) =>
      _socketIOClient.handshake<Map<String, dynamic>>(
        eventName: uasActivityEvent,
        onResponse: (response) {
          final jsonList = response[dataKey] as List<dynamic>;

          final uasModels = jsonList
              .map(
                (json) => UASModel.fromJson(
                  json as Map<String, dynamic>,
                ),
              )
              .toList();

          onUASActivitiesGotten(
            uasModels,
          );
        },
        onConnectionChanged: onConnectionChanged,
      );

  @override
  Future<void> requestNewUASActivitiesAround({
    required String geoHash,
  }) =>
      _socketIOClient.send(
        roomName: uasActivityRoom,
        data: {
          geoHashKey: geoHash,
          isTestKey: false,
        },
        includeSignature: true,
      );

  @override
  void stopListeningUASActivities() => _socketIOClient.close();
}
