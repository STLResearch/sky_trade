import 'package:sky_ways/features/remote_i_d_receiver/domain/entities/remote_id_entity.dart';

abstract interface class RemoteIdTransmitterRepository {
  void startTransmitter();

  void transmitRemoteIdData(
    DroneStatus droneStatus,
    RemoteIdEntity remoteIdData,
  );

  void stopTransmitter();
}

enum DroneStatus { discovered, changed, inactive }
