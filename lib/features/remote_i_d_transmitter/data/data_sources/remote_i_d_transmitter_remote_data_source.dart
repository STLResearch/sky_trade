import 'dart:typed_data' show Uint8List;

import 'package:dartz/dartz.dart' show Function0, Function1;
import 'package:flutter_dotenv/flutter_dotenv.dart' show dotenv;
import 'package:sky_ways/core/resources/strings/networking.dart'
    show
        emailAddressHeaderKey,
        remoteIDTransmissionEvent,
        remoteIDTransmissionRoom,
        signAddressHeaderKey,
        signHeaderKey,
        signIssueAtHeaderKey,
        signNonceHeaderKey,
        skyTradeServerApiKey;
import 'package:sky_ways/core/resources/strings/networking.dart'
    show apiKeyHeaderKey, closeHeaderValue, connectionHeaderKey;
import 'package:sky_ways/core/utils/clients/network_client.dart'
    show SocketIOClient;
import 'package:sky_ways/core/utils/enums/networking.dart' show ConnectionState;
import 'package:sky_ways/core/utils/extensions/remote_i_d_transmission_entity_extensions.dart';
import 'package:sky_ways/core/utils/typedefs/networking.dart' show Signature;
import 'package:sky_ways/features/remote_i_d_receiver/domain/entities/remote_i_d_entity.dart'
    show RemoteIDEntity;
import 'package:sky_ways/features/remote_i_d_transmitter/domain/entities/remote_transmission_entity.dart'
    show DeviceEntity, RemoteTransmissionEntity;

abstract interface class RemoteIDTransmitterRemoteDataSource {
  Future<void> startTransmitter({
    required Function0<void> onRemoteIDSent,
    required Function1<ConnectionState, void> onConnectionChanged,
  });

  void transmit({
    required RemoteIDEntity remoteIDEntity,
    required DeviceEntity deviceEntity,
    required Uint8List rawData,
    required Signature signature,
  });

  void stopTransmitter();
}

final class RemoteIDTransmitterRemoteDataSourceImplementation
    implements RemoteIDTransmitterRemoteDataSource {
  const RemoteIDTransmitterRemoteDataSourceImplementation(
    SocketIOClient socketIOClient,
  ) : _socketIOClient = socketIOClient;

  final SocketIOClient _socketIOClient;

  @override
  Future<void> startTransmitter({
    required Function0<void> onRemoteIDSent,
    required Function1<ConnectionState, void> onConnectionChanged,
  }) =>
      _socketIOClient.handshake<dynamic>(
        eventName: remoteIDTransmissionEvent,
        onResponse: (response) {
          onRemoteIDSent();
        },
        onConnectionChanged: onConnectionChanged,
      );

  @override
  void transmit({
    required RemoteIDEntity remoteIDEntity,
    required DeviceEntity deviceEntity,
    required Uint8List rawData,
    required Signature signature,
  }) =>
      _socketIOClient.send(
        roomName: remoteIDTransmissionRoom,
        data: RemoteTransmissionEntity(
          remoteData: remoteIDEntity,
          isTest: false,
          device: deviceEntity,
          rawData: rawData,
        ).toRemoteTransmissionModel().toJson(),
        headers: {
          connectionHeaderKey: closeHeaderValue,
          signHeaderKey: signature.sign,
          signIssueAtHeaderKey: signature.issuedAt,
          signNonceHeaderKey: signature.nonce,
          signAddressHeaderKey: signature.address,
          if (signature.email != null) emailAddressHeaderKey: signature.email,
          apiKeyHeaderKey: dotenv.env[skyTradeServerApiKey],
        },
      );

  @override
  void stopTransmitter() => _socketIOClient.close();
}
