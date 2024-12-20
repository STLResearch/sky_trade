import 'dart:typed_data' show Uint8List;

import 'package:dartz/dartz.dart' show Function0, Function1;
import 'package:sky_trade/core/resources/strings/networking.dart'
    show remoteIDTransmissionEvent, remoteIDTransmissionRoom;
import 'package:sky_trade/core/utils/clients/network_client.dart'
    show SocketIOClient;
import 'package:sky_trade/core/utils/enums/networking.dart'
    show ConnectionState;
import 'package:sky_trade/core/utils/extensions/remote_i_d_transmission_entity_extensions.dart';
import 'package:sky_trade/features/remote_i_d_receiver/domain/entities/remote_i_d_entity.dart'
    show RemoteIDEntity;
import 'package:sky_trade/features/remote_i_d_transmitter/domain/entities/remote_transmission_entity.dart'
    show DeviceEntity, RemoteTransmissionEntity;

abstract interface class RemoteIDTransmitterRemoteDataSource {
  Future<void> startTransmitter({
    required Function0<void> onRemoteIDSent,
    required Function1<ConnectionState, void> onConnectionChanged,
  });

  Future<void> transmit({
    required List<RemoteIDEntity> remoteIDEntities,
    required DeviceEntity deviceEntity,
    required Uint8List rawData,
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
  Future<void> transmit({
    required List<RemoteIDEntity> remoteIDEntities,
    required DeviceEntity deviceEntity,
    required Uint8List rawData,
  }) =>
      Future.forEach(
        List<RemoteIDEntity>.from(
          remoteIDEntities,
        ),
        (remoteIDEntity) => _socketIOClient.send(
          roomName: remoteIDTransmissionRoom,
          data: RemoteTransmissionEntity(
            remoteData: remoteIDEntity,
            isTest: false,
            device: deviceEntity,
            rawData: rawData,
          ).toRemoteTransmissionModel().toJson(),
        ),
      );

  @override
  void stopTransmitter() => _socketIOClient.close();
}
