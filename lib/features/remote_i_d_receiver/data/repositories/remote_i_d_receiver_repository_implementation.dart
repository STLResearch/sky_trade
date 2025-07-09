import 'dart:async' show StreamController, StreamSubscription;
import 'dart:io' show Platform;

import 'package:dartz/dartz.dart' show Either, Function1, Left, Right;
import 'package:flutter_opendroneid/flutter_opendroneid.dart'
    show FlutterOpenDroneId;
import 'package:flutter_opendroneid/models/dri_source_type.dart'
    show DriSourceType;
import 'package:flutter_opendroneid/models/message_container.dart';
import 'package:rxdart/rxdart.dart' show MergeStream;
import 'package:sky_trade/core/errors/failures/remote_i_d_receiver_failure.dart';
import 'package:sky_trade/core/resources/numbers/networking.dart' show zero;
import 'package:sky_trade/core/utils/enums/networking.dart'
    show ConnectionState;
import 'package:sky_trade/core/utils/extensions/remote_i_d_entity_extensions.dart';
import 'package:sky_trade/features/remote_i_d_receiver/data/data_sources/remote_i_d_receiver_local_data_source.dart'
    show RemoteIDReceiverLocalDataSource;
import 'package:sky_trade/features/remote_i_d_receiver/data/data_sources/remote_i_d_receiver_remote_data_source.dart'
    show RemoteIDReceiverRemoteDataSource;
import 'package:sky_trade/features/remote_i_d_receiver/domain/entities/remote_i_d_entity.dart'
    show DeviceEntity, GeolocatedRemoteIDCollectionEntity, RemoteIDEntity;
import 'package:sky_trade/features/remote_i_d_receiver/domain/repositories/remote_i_d_receiver_repository.dart';

final class RemoteIDReceiverRepositoryImplementation
    implements RemoteIDReceiverRepository {
  const RemoteIDReceiverRepositoryImplementation({
    required RemoteIDReceiverLocalDataSource remoteIDReceiverLocalDataSource,
    required RemoteIDReceiverRemoteDataSource remoteIDReceiverRemoteDataSource,
  })  : _remoteIDReceiverLocalDataSource = remoteIDReceiverLocalDataSource,
        _remoteIDReceiverRemoteDataSource = remoteIDReceiverRemoteDataSource;

  final RemoteIDReceiverLocalDataSource _remoteIDReceiverLocalDataSource;

  final RemoteIDReceiverRemoteDataSource _remoteIDReceiverRemoteDataSource;

  @override
  Stream<Either<BroadcastRemoteIDReceiverFailure, List<RemoteIDEntity>>>
      get broadcastRemoteIDs {
    late final StreamController<
            Either<BroadcastRemoteIDReceiverFailure, List<RemoteIDEntity>>>
        remoteIDStreamController;
    late final StreamSubscription<MessageContainer> remoteIDStreamSubscription;

    final remoteIDEntities = <RemoteIDEntity>{};

    remoteIDStreamController = StreamController<
        Either<BroadcastRemoteIDReceiverFailure, List<RemoteIDEntity>>>(
      onListen: () {
        FlutterOpenDroneId.startScan(
          DriSourceType.Bluetooth,
        );

        if (Platform.isAndroid) {
          FlutterOpenDroneId.startScan(
            DriSourceType.Wifi,
          );
        }

        remoteIDStreamSubscription = MergeStream<MessageContainer>([
          FlutterOpenDroneId.bluetoothMessages,
          if (Platform.isAndroid) FlutterOpenDroneId.wifiMessages,
        ]).listen(
          (messageContainer) {
            final computedRemoteIDEntityWithPartialData =
                RemoteIDEntity.fromOpenDroneID(
              messageContainer,
            );

            if (remoteIDEntities.isNotEmpty) {
              for (var index = zero; index < remoteIDEntities.length; index++) {
                if (remoteIDEntities
                        .elementAt(
                          index,
                        )
                        .connection
                        .macAddress ==
                    computedRemoteIDEntityWithPartialData
                        .connection.macAddress) {
                  final currentRemoteIDEntity = remoteIDEntities.elementAt(
                    index,
                  );

                  final freshRemoteIDEntity = currentRemoteIDEntity.merge(
                    computedRemoteIDEntityWithPartialData,
                  );

                  remoteIDEntities
                    ..remove(
                      currentRemoteIDEntity,
                    )
                    ..add(
                      freshRemoteIDEntity,
                    );

                  remoteIDStreamController.add(
                    Right(
                      remoteIDEntities.toList(),
                    ),
                  );

                  return;
                }
              }
            }

            remoteIDEntities.add(
              computedRemoteIDEntityWithPartialData,
            );

            remoteIDStreamController.add(
              Right(
                remoteIDEntities.toList(),
              ),
            );
          },
          onError: (_) => remoteIDStreamController.add(
            Left(
              BroadcastRemoteIDReceiverFailure(),
            ),
          ),
        );
      },
      onCancel: () {
        FlutterOpenDroneId.stopScan(
          DriSourceType.Bluetooth,
        );

        if (Platform.isAndroid) {
          FlutterOpenDroneId.stopScan(
            DriSourceType.Wifi,
          );
        }

        remoteIDStreamController.close();
        remoteIDStreamSubscription.cancel();
      },
    );

    return remoteIDStreamController.stream;
  }

  @override
  Future<void> listenNetworkRemoteIDs({
    required Function1<List<RemoteIDEntity>, void> onNetworkRemoteIDsGotten,
    required Function1<ConnectionState, void> onConnectionChanged,
  }) =>
      _remoteIDReceiverRemoteDataSource.listenNetworkRemoteIDs(
        onNetworkRemoteIDsGotten: onNetworkRemoteIDsGotten,
        onConnectionChanged: onConnectionChanged,
      );

  @override
  void requestNetworkRemoteIDsAround({
    required String geoHash,
  }) =>
      _remoteIDReceiverRemoteDataSource.requestNetworkRemoteIDsAround(
        geoHash: geoHash,
      );

  @override
  Future<List<GeolocatedRemoteIDCollectionEntity>?>
      get cachedGeolocatedRemoteIDCollections =>
          _remoteIDReceiverLocalDataSource.cachedGeolocatedRemoteIDCollections;

  @override
  Future<void> cacheGeolocatedRemoteIDCollection({
    required List<RemoteIDEntity> remoteIDs,
    required DeviceEntity? device,
  }) =>
      _remoteIDReceiverLocalDataSource.cacheGeolocatedRemoteIDCollection(
        remoteIDs: remoteIDs
            .map(
              (remoteID) => remoteID.toRemoteIDModel(),
            )
            .toList(),
        device: device?.toDeviceModel(),
      );

  @override
  Future<void> deleteCachedGeolocatedRemoteIDCollections() =>
      _remoteIDReceiverLocalDataSource
          .deleteCachedGeolocatedRemoteIDCollections();

  @override
  Future<void> closeGeolocatedRemoteIDCollectionsLocalStorageBox() =>
      _remoteIDReceiverLocalDataSource
          .closeGeolocatedRemoteIDCollectionsLocalStorageBox();

  @override
  void stopListeningNetworkRemoteIDs() =>
      _remoteIDReceiverRemoteDataSource.stopListeningNetworkRemoteIDs();
}
