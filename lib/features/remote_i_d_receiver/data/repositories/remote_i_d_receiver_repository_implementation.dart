import 'dart:async' show StreamController, StreamSubscription;
import 'dart:io' show Platform;

import 'package:dartz/dartz.dart' show Either, Function1, Left, Right;
import 'package:flutter_opendroneid/flutter_opendroneid.dart'
    show FlutterOpenDroneId, UsedTechnologies;
import 'package:flutter_opendroneid/models/message_container.dart';
import 'package:sky_trade/core/errors/failures/remote_i_d_receiver_failure.dart'
    show BroadcastRemoteIDReceiverFailure;
import 'package:sky_trade/core/resources/numbers/networking.dart' show zero;
import 'package:sky_trade/core/utils/enums/networking.dart'
    show ConnectionState;
import 'package:sky_trade/features/remote_i_d_receiver/data/data_sources/remote_i_d_receiver_remote_data_source.dart'
    show RemoteIDReceiverRemoteDataSource;
import 'package:sky_trade/features/remote_i_d_receiver/domain/entities/remote_i_d_entity.dart'
    show RemoteIDEntity;
import 'package:sky_trade/features/remote_i_d_receiver/domain/repositories/remote_i_d_receiver_repository.dart';

final class RemoteIDReceiverRepositoryImplementation
    implements RemoteIDReceiverRepository {
  const RemoteIDReceiverRepositoryImplementation(
    RemoteIDReceiverRemoteDataSource remoteIDReceiverRemoteDataSource,
  ) : _remoteIDReceiverRemoteDataSource = remoteIDReceiverRemoteDataSource;

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
          switch (Platform.isAndroid) {
            true => UsedTechnologies.Both,
            false => UsedTechnologies.Bluetooth,
          },
        );

        void addNewRemoteIDEntityAndEmitNewEventUsing(
          RemoteIDEntity newRemoteIDEntity,
        ) {
          remoteIDEntities.add(
            newRemoteIDEntity,
          );

          remoteIDStreamController.add(
            Right(
              remoteIDEntities.toList(),
            ),
          );
        }

        remoteIDStreamSubscription = FlutterOpenDroneId.allMessages.listen(
          (messageContainer) {
            final currentRemoteIDEntity = RemoteIDEntity.fromOpenDroneID(
              messageContainer,
            );

            if (remoteIDEntities.isEmpty) {
              addNewRemoteIDEntityAndEmitNewEventUsing(
                currentRemoteIDEntity,
              );

              return;
            }

            if (remoteIDEntities.isNotEmpty) {
              for (var index = zero; index < remoteIDEntities.length; index++) {
                if (remoteIDEntities
                        .elementAt(
                          index,
                        )
                        .connection
                        .macAddress ==
                    currentRemoteIDEntity.connection.macAddress) {
                  final oldRemoteIDEntity = remoteIDEntities.elementAt(
                    index,
                  );

                  final newRemoteIDEntity = oldRemoteIDEntity.merge(
                    currentRemoteIDEntity,
                  );

                  remoteIDEntities
                    ..remove(
                      oldRemoteIDEntity,
                    )
                    ..add(
                      newRemoteIDEntity,
                    );

                  remoteIDStreamController.add(
                    Right(
                      remoteIDEntities.toList(),
                    ),
                  );

                  return;
                }
              }

              addNewRemoteIDEntityAndEmitNewEventUsing(
                currentRemoteIDEntity,
              );
            }
          },
          onError: (_) => remoteIDStreamController.add(
            Left(
              BroadcastRemoteIDReceiverFailure(),
            ),
          ),
        );
      },
      onCancel: () {
        FlutterOpenDroneId.stopScan();
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
  void stopListeningNetworkRemoteIDs() =>
      _remoteIDReceiverRemoteDataSource.stopListeningNetworkRemoteIDs();
}
