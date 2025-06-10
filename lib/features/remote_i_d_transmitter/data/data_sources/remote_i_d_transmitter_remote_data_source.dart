import 'package:dartz/dartz.dart' show Function0, Function1;
import 'package:flutter_dotenv/flutter_dotenv.dart' show dotenv;
import 'package:sky_trade/core/resources/strings/networking.dart'
    show remoteIDTransmissionEvent, remoteIDTransmissionResponseEvent;
import 'package:sky_trade/core/resources/strings/secret_keys.dart'
    show remoteIDDataVersion;
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

  void transmit({
    required List<RemoteIDEntity> remoteIDEntities,
    required DeviceEntity? deviceEntity,
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
      _socketIOClient.listenToEvent<int, int>(
        eventName: remoteIDTransmissionResponseEvent,
        onSuccess: (response) => onRemoteIDSent(),
        onConnectionChanged: onConnectionChanged,
      );

  @override
  void transmit({
    required List<RemoteIDEntity> remoteIDEntities,
    required DeviceEntity? deviceEntity,
  }) =>
      Future.forEach(
        List<RemoteIDEntity>.from(
          remoteIDEntities,
        ),
        (remoteIDEntity) => _socketIOClient.sendDataToEvent(
          eventName: remoteIDTransmissionEvent,
          data: RemoteTransmissionEntity(
            remoteData: remoteIDEntity,
            isTest: false,
            device: deviceEntity,
            version: dotenv.env[remoteIDDataVersion]!,
          ).toRemoteTransmissionModel().toJson(),
        ),
      );

  @override
  void stopTransmitter() => _socketIOClient.close();
}
