import 'package:dartz/dartz.dart' show Function1;
import 'package:sky_trade/core/resources/strings/networking.dart'
    show
        dataKey,
        emailAddressHeaderKey,
        geoHashKey,
        isTestKey,
        signAddressHeaderKey,
        signHeaderKey,
        signIssueAtHeaderKey,
        signNonceHeaderKey,
        uasActivityEvent,
        uasActivityRoom;
import 'package:sky_trade/core/utils/clients/network_client.dart'
    show SocketIOClient;
import 'package:sky_trade/core/utils/enums/networking.dart' show ConnectionState;
import 'package:sky_trade/core/utils/typedefs/networking.dart' show Signature;
import 'package:sky_trade/features/u_a_s_activity/data/models/u_a_s_model.dart'
    show UASModel;

abstract interface class UASActivityRemoteDataSource {
  Future<void> listenUASActivities({
    required Function1<List<UASModel>, void> onUASActivitiesGotten,
    required Function1<ConnectionState, void> onConnectionChanged,
  });

  void requestNewUASActivitiesAround({
    required String geoHash,
    required Signature signature,
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
  void requestNewUASActivitiesAround({
    required String geoHash,
    required Signature signature,
  }) =>
      _socketIOClient.send(
        roomName: uasActivityRoom,
        data: {
          geoHashKey: geoHash,
          isTestKey: false,
        },
        headers: {
          signHeaderKey: signature.sign,
          signIssueAtHeaderKey: signature.issuedAt,
          signNonceHeaderKey: signature.nonce,
          signAddressHeaderKey: signature.address,
          if (signature.email != null) emailAddressHeaderKey: signature.email,
        },
      );

  @override
  void stopListeningUASActivities() => _socketIOClient.close();
}
