import 'package:dartz/dartz.dart' show Function1;
import 'package:sky_trade/core/resources/strings/networking.dart'
    show
        dataKey,
        geoHashKey,
        isTestKey,
        remoteDataKey,
        uasActivityEvent,
        uasActivityResponseEvent;
import 'package:sky_trade/core/utils/clients/network_client.dart'
    show SocketIOClient;
import 'package:sky_trade/core/utils/enums/networking.dart'
    show ConnectionState;
import 'package:sky_trade/features/remote_i_d_receiver/data/models/remote_i_d_model.dart'
    show RemoteIDModel;

abstract interface class RemoteIDReceiverRemoteDataSource {
  Future<void> listenNetworkRemoteIDs({
    required Function1<List<RemoteIDModel>, void> onNetworkRemoteIDsGotten,
    required Function1<ConnectionState, void> onConnectionChanged,
  });

  Future<void> requestNetworkRemoteIDsAround({
    required String geoHash,
  });

  void stopListeningNetworkRemoteIDs();
}

final class RemoteIDReceiverRemoteDataSourceImplementation
    implements RemoteIDReceiverRemoteDataSource {
  const RemoteIDReceiverRemoteDataSourceImplementation(
    SocketIOClient socketIOClient,
  ) : _socketIOClient = socketIOClient;

  final SocketIOClient _socketIOClient;

  @override
  Future<void> listenNetworkRemoteIDs({
    required Function1<List<RemoteIDModel>, void> onNetworkRemoteIDsGotten,
    required Function1<ConnectionState, void> onConnectionChanged,
  }) =>
      _socketIOClient.listenToEvent<Map<String, dynamic>>(
        eventName: uasActivityResponseEvent,
        onResponse: (response) {
          final jsonList = response[dataKey] as List<dynamic>;

          final remoteIDModels = jsonList
              .map(
                (json) => RemoteIDModel.fromJson(
                  (json as Map<String, dynamic>)[remoteDataKey]
                      as Map<String, dynamic>,
                ),
              )
              .toList();

          onNetworkRemoteIDsGotten(
            remoteIDModels,
          );
        },
        onConnectionChanged: onConnectionChanged,
      );

  @override
  Future<void> requestNetworkRemoteIDsAround({
    required String geoHash,
  }) =>
      _socketIOClient.sendDataToEvent(
        eventName: uasActivityEvent,
        data: {
          geoHashKey: geoHash,
          isTestKey: false,
        },
      );

  @override
  void stopListeningNetworkRemoteIDs() => _socketIOClient.close();
}
