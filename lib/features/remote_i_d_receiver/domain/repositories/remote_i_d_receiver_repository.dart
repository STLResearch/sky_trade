// SPDX-License-Identifier: UNLICENSED
                            
import 'package:dartz/dartz.dart' show Either, Function1;
import 'package:sky_trade/core/errors/failures/remote_i_d_receiver_failure.dart'
    show BroadcastRemoteIDReceiverFailure;
import 'package:sky_trade/core/utils/enums/networking.dart'
    show ConnectionState;
import 'package:sky_trade/features/remote_i_d_receiver/domain/entities/remote_i_d_entity.dart'
    show DeviceEntity, GeolocatedRemoteIDCollectionEntity, RemoteIDEntity;

abstract interface class RemoteIDReceiverRepository {
  Stream<Either<BroadcastRemoteIDReceiverFailure, List<RemoteIDEntity>>>
      get broadcastRemoteIDs;

  Future<void> listenNetworkRemoteIDs({
    required Function1<List<RemoteIDEntity>, void> onNetworkRemoteIDsGotten,
    required Function1<ConnectionState, void> onConnectionChanged,
  });

  void requestNetworkRemoteIDsAround({
    required String geoHash,
  });

  Future<List<GeolocatedRemoteIDCollectionEntity>?>
      get cachedGeolocatedRemoteIDCollections;

  Future<void> cacheGeolocatedRemoteIDCollection({
    required List<RemoteIDEntity> remoteIDs,
    required DeviceEntity? device,
  });

  Future<void> deleteCachedGeolocatedRemoteIDCollections();

  Future<void> closeGeolocatedRemoteIDCollectionsLocalStorageBox();

  void stopListeningNetworkRemoteIDs();
}
