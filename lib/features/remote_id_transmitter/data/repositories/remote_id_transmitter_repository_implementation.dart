import 'package:sky_ways/core/resources/strings/networking.dart';
import 'package:sky_ways/core/utils/clients/network_client.dart';
import 'package:sky_ways/features/remote_i_d_receiver/domain/entities/remote_id_entity.dart';
import 'package:sky_ways/features/remote_id_transmitter/domain/repositories/remote_id_transmitter_repository.dart';

final class RemoteIdTransmitterRepositoryImplementation
    implements RemoteIdTransmitterRepository {
  final SocketIOClient _transmitterSocketIOClient = SocketIOClient();

  @override
  void startTransmitter() =>
      _transmitterSocketIOClient.handshake(
        eventName: remoteIdTransmitterEvent,
        onResponse: (_) {},
      );


  @override
  void transmitRemoteIdData(
    DroneStatus droneStatus,
    RemoteIdEntity remoteIdData,
  ) {
    _transmitterSocketIOClient.send(
      roomName: remoteIdTransmitterRoom,
      data: {
        'isTest': true,
        'droneStatus': droneStatus.name,
        'remoteData': remoteIdData.toJson(),
      },
    );
  }

  @override
  void stopTransmitter() => _transmitterSocketIOClient.close();

}
