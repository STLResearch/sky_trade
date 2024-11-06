// ignore_for_file: sort_constructors_first
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: curly_braces_in_flow_control_structures

import 'dart:async';
import 'package:dart_geohash/dart_geohash.dart';
import 'package:dartz/dartz.dart';
import 'package:sky_trade/core/errors/failures/u_a_s_receiver_failure.dart';
import 'package:sky_trade/core/utils/clients/signature_handler.dart';
import 'package:sky_trade/core/utils/typedefs/networking.dart';
import 'package:sky_trade/features/u_a_s_receiver/data/data_sources/u_a_s_broadcast_data_source.dart';
import 'package:sky_trade/features/u_a_s_receiver/data/data_sources/u_a_s_network_data_source.dart';
import 'package:sky_trade/features/u_a_s_receiver/data/models/remote_i_d_model.dart';
import 'package:sky_trade/features/u_a_s_receiver/domain/entities/broadcast_remote_i_d_entity.dart';
import 'package:sky_trade/features/u_a_s_receiver/domain/entities/network_remote_i_d_entity.dart';
import 'package:sky_trade/features/u_a_s_receiver/domain/entities/remote_i_d_entity.dart';
import 'package:sky_trade/features/u_a_s_receiver/domain/repositories/u_a_s_receiver_repository.dart';

final class UASRepositoryImplementation with SignatureHandler implements UasReceiverRepository {

  final remoteIDEntities = <RemoteIDEntity>{};
  final UASBroadcastDataSource _uasBroadcastDataSource;
  final UASNetworkDataSource _uasNetworkDataSource;
  late final StreamController<Either<UASReceiverFailure, Set<RemoteIDEntity>>> _remoteIDStreamController;
  late final StreamSubscription<Either<BroadcastRemoteIDFailure, RemoteIDModel>> _broadcastRemoteIdStreamSubscription;
  late final StreamSubscription<Either<NetworkRemoteIDFailure, RemoteIDModel>> _networkRemoteIdStreamSubscription;

  UASRepositoryImplementation(
    UASBroadcastDataSource uasBroadcastDataSource,
    UASNetworkDataSource uasNetworkDataSource,
  )   : _uasBroadcastDataSource = uasBroadcastDataSource,
        _uasNetworkDataSource = uasNetworkDataSource;

  @override
  Stream<Either<UASReceiverFailure, Set<RemoteIDEntity>>> get remoteIDStream {
    _remoteIDStreamController = StreamController<Either<UASReceiverFailure, Set<RemoteIDEntity>>>(
      onListen: () {
        listenBroadcastDataStream();
        listenNetworkDataStream();
      },
      onCancel: () {
        _remoteIDStreamController.close();
        _broadcastRemoteIdStreamSubscription.cancel();
        _networkRemoteIdStreamSubscription.cancel();
      },
    );

    return _remoteIDStreamController.stream;
  }

  @override
  Future<void> notifyGeoHashUpdated(
    GeoHash userGeoHash,
    GeoHash currentGeoHash,
  ) async {
    clearRemoteIDsFromPreviousGeoHash();

    if (userGeoHash.geohash == currentGeoHash.geohash && _broadcastRemoteIdStreamSubscription.isPaused)
      _broadcastRemoteIdStreamSubscription.resume();
    else if (userGeoHash.geohash != currentGeoHash.geohash)
      _broadcastRemoteIdStreamSubscription.pause();

    _uasNetworkDataSource.requestRemoteIDsAround(
      geoHash: currentGeoHash.geohash,
      signature: await getSiganture(),
    );
  }

  Future<Signature> getSiganture() async {
    final issuedAt = computeIssuedAt();
    final nonce = computeNonce();
    final userAddress = await computeUserAddress();
    final message = computeMessageToSignUsing(
      issuedAt: issuedAt,
      nonce: nonce,
      userAddress: userAddress,
    );
    final email = await computeUserEmail();
    final sign = await signMessage(message);

    return (
      sign: sign,
      issuedAt: issuedAt,
      nonce: nonce,
      address: userAddress,
      email: email,
    );
  }

  @override
  void listenBroadcastDataStream() {
    _broadcastRemoteIdStreamSubscription = _uasBroadcastDataSource.broadcastRemoteIdStream
        .listen((broadcastFailureOrRemoteIDModel) {
          broadcastFailureOrRemoteIDModel.fold(
                (broadcastFailure) => _remoteIDStreamController.add(Left(broadcastFailure)),
                (remoteIDModel) => broadcastRemoteIDFilter,
          );
        });
  }

  @override
  void listenNetworkDataStream() {
    _networkRemoteIdStreamSubscription = _uasNetworkDataSource.networkRemoteIdStream
        .listen((networkFailureOrRemoteIDModel) {
          networkFailureOrRemoteIDModel.fold(
                (networkFailure) => _remoteIDStreamController.add(Left(networkFailure)),
                (remoteIDModel) => networkRemoteIDFilter,
          );
        });
  }

  @override
  void clearRemoteIDsFromPreviousGeoHash() => remoteIDEntities.clear();

  void broadcastRemoteIDFilter(RemoteIDModel remoteIDModel) {
    var newBroadcastRemoteIDEntity = BroadcastRemoteIDEntity(remoteIDEntity: remoteIDModel);
    final RemoteIDEntity oldRemoteIDEntity;

    if (remoteIDEntities.contains(newBroadcastRemoteIDEntity)) {
      oldRemoteIDEntity = remoteIDEntities.lookup(newBroadcastRemoteIDEntity)!;
      newBroadcastRemoteIDEntity = BroadcastRemoteIDEntity(
        remoteIDEntity: oldRemoteIDEntity.merge(newBroadcastRemoteIDEntity),
      );
    }

    remoteIDEntities.add(newBroadcastRemoteIDEntity);
    _remoteIDStreamController.add(Right(remoteIDEntities));
  }

  void networkRemoteIDFilter(RemoteIDModel remoteIDModel) {
    var hasPassedFilters = false;
    final RemoteIDEntity oldRemoteIDEntity;
    final newNetworkRemoteIDEntity = NetworkRemoteIDEntity(remoteIDEntity: remoteIDModel);

    if (remoteIDEntities.contains(newNetworkRemoteIDEntity)) {
      oldRemoteIDEntity = remoteIDEntities.lookup(newNetworkRemoteIDEntity)!;
      if (oldRemoteIDEntity.connection.lastSeen.isBefore(newNetworkRemoteIDEntity.connection.lastSeen))
        hasPassedFilters = true;
    } else
      hasPassedFilters = true;

    if (hasPassedFilters) {
      remoteIDEntities.add(newNetworkRemoteIDEntity);
      _remoteIDStreamController.add(Right(remoteIDEntities));
    }
  }
}
