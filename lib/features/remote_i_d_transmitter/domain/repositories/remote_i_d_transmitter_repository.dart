import 'package:dartz/dartz.dart' show Function0, Function1;
import 'package:sky_trade/core/utils/enums/networking.dart'
    show ConnectionState;
import 'package:sky_trade/features/remote_i_d_receiver/domain/entities/remote_i_d_entity.dart'
    show GeolocatedRemoteIDCollectionEntity, RemoteIDEntity;
import 'package:sky_trade/features/remote_i_d_transmitter/domain/entities/remote_transmission_entity.dart'
    show DeviceEntity;

abstract interface class RemoteIDTransmitterRepository {
  Future<void> startTransmitter({
    required Function0<void> onRemoteIDSent,
    required Function1<ConnectionState, void> onConnectionChanged,
  });

  void transmitGeolocatedRemoteIDCollections({
    required List<GeolocatedRemoteIDCollectionEntity>
        geolocatedRemoteIDCollectionEntities,
  });

  void transmit({
    required List<RemoteIDEntity> remoteIDEntities,
    required DeviceEntity? deviceEntity,
  });

  void stopTransmitter();
}
