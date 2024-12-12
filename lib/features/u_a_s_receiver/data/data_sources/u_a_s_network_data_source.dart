// ignore_for_file: sort_constructors_first
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: curly_braces_in_flow_control_structures

import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:sky_trade/core/errors/failures/u_a_s_receiver_failure.dart';
import 'package:sky_trade/core/resources/strings/networking.dart';
import 'package:sky_trade/core/utils/clients/network_client.dart';
import 'package:sky_trade/core/utils/enums/networking.dart';
import 'package:sky_trade/features/u_a_s_receiver/data/models/remote_i_d_model.dart';

abstract interface class UASNetworkDataSource {
  void requestRemoteIDsAround({
    required String geoHash,
  });

  Stream<Either<NetworkRemoteIDFailure, RemoteIDModel>> get networkRemoteIdStream;
}

final class UASNetworkDataSourceImplementation implements UASNetworkDataSource {

  final SocketIOClient _socketIOClient;
  late final StreamController<Either<NetworkRemoteIDFailure, RemoteIDModel>>_networkRemoteIDStreamController;

  UASNetworkDataSourceImplementation(
    SocketIOClient socketIOClient,
  ) : _socketIOClient = socketIOClient;

  @override
  Stream<Either<NetworkRemoteIDFailure, RemoteIDModel>> get networkRemoteIdStream {
    _networkRemoteIDStreamController = StreamController<Either<NetworkRemoteIDFailure, RemoteIDModel>>(
          onListen: (){
            _socketIOClient.handshake<Map<String, dynamic>>(
              eventName: uasActivityEvent,
              onResponse: (response) {
                (response[dataKey] as List<dynamic>).map((jsonObject) {
                  final mappedJsonObject= jsonObject as Map<String, dynamic>;
                  final newRemoteIDModel = RemoteIDModel.fromJson(
                    mappedJsonObject[remoteDataKey] as Map<String, dynamic>,
                  );
                  addNewRemoteIDEntityToStream(newRemoteIDModel);
                });
              },
              onConnectionChanged: (connectionState) {
                if (connectionState == ConnectionState.error
                    || connectionState == ConnectionState.connectionError
                    || connectionState == ConnectionState.disconnected)
                  emitNetworkFailureToStream();
              },
            );
          },
          onCancel: (){
            _socketIOClient.close();
            _networkRemoteIDStreamController.close();
          },
        );
    return _networkRemoteIDStreamController.stream;
  }

  void addNewRemoteIDEntityToStream(
      RemoteIDModel newRemoteIDModel,
  ) {
    _networkRemoteIDStreamController.add(
      Right(
        newRemoteIDModel,
      ),
    );
  }

  void emitNetworkFailureToStream(){
    _networkRemoteIDStreamController.add(
      Left(
        NetworkRemoteIDFailure(),
      ),
    );
  }

  @override
  void requestRemoteIDsAround({
    required String geoHash,
  }) {
    _socketIOClient.send(
      roomName: uasActivityRoom,
      includeSignature: true,
      data: {
        geoHashKey: geoHash,
        isTestKey: false,
      },
    );
  }

}
