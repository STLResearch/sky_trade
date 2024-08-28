import 'package:dartz/dartz.dart' show Function1;
import 'package:sky_ways/core/resources/strings/networking.dart'
    show dataKey, geoHashKey, uasActivityEvent, uasActivityRoom;
import 'package:sky_ways/core/utils/clients/network_client.dart'
    show SocketIOClient;
import 'package:sky_ways/core/utils/enums/networking.dart' show ConnectionState;
import 'package:sky_ways/features/u_a_s_activity/data/models/u_a_s_model.dart'
    show UASModel;

abstract interface class UASActivityRemoteDataSource {
  Future<void> listenUASActivities({
    required Function1<List<UASModel>, void> onUASActivitiesGotten,
    required Function1<ConnectionState, void> onConnectionChanged,
  });

  void requestNewUASActivitiesAround({
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

          final uasModelList = jsonList
              .map(
                (json) => UASModel.fromJson(
                  json as Map<String, dynamic>,
                ),
              )
              .toList();

          onUASActivitiesGotten(
            uasModelList,
          );
        },
        onConnectionChanged: onConnectionChanged,
      );

  @override
  void requestNewUASActivitiesAround({
    required String geoHash,
  }) =>
      _socketIOClient.send(
        roomName: uasActivityRoom,
        data: {
          geoHashKey: geoHash,
        },
      );

  @override
  void stopListeningUASActivities() => _socketIOClient.close();
}
