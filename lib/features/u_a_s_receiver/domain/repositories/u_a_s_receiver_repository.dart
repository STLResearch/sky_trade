import 'package:dart_geohash/dart_geohash.dart';
import 'package:dartz/dartz.dart';
import 'package:sky_trade/core/errors/failures/u_a_s_receiver_failure.dart';
import 'package:sky_trade/features/u_a_s_receiver/domain/entities/remote_i_d_entity.dart';

abstract interface class UasReceiverRepository {
  Stream<Either<UASReceiverFailure, Set<RemoteIDEntity>>> get remoteIDStream;

  Future<void> notifyGeoHashUpdated(
    GeoHash userGeoHash,
    GeoHash currentGeoHash,
  );

  void listenBroadcastDataStream();

  void listenNetworkDataStream();

  void clearRemoteIDsFromPreviousGeoHash();
}
