import 'dart:async' show StreamController, StreamSubscription;
import 'dart:developer';

import 'package:dartz/dartz.dart' show Either, Left, Right;
import 'package:flutter_opendroneid/flutter_opendroneid.dart'
    show FlutterOpenDroneId, UsedTechnologies;
import 'package:flutter_opendroneid/models/message_container.dart';
import 'package:sky_ways/core/errors/failures/remote_i_d_receiver_failure.dart';
import 'package:sky_ways/core/utils/clients/data_handler.dart';
import 'package:sky_ways/features/remote_i_d_receiver/domain/entities/remote_id_entity.dart';
import 'package:sky_ways/features/remote_i_d_receiver/domain/repositories/remote_i_d_receiver_repository.dart';

final _remoteIDEntities = <RemoteIdEntity>{};

final class BluetoothReceiver
    with DataHandler
    implements RemoteIDReceiverRepository<BluetoothReceiverFailure> {
  @override
  Stream<
          Either<BluetoothReceiverFailure,
              Map<RemoteIDReceiverOperationType, RemoteIdEntity>>>
      get remoteIDStream {
    late final StreamController<
            Either<BluetoothReceiverFailure,
                Map<RemoteIDReceiverOperationType, RemoteIdEntity>>>
        remoteIDStreamController;

    late final StreamSubscription<MessageContainer> remoteIDStreamSubscription;

    remoteIDStreamController = StreamController<
        Either<BluetoothReceiverFailure,
            Map<RemoteIDReceiverOperationType, RemoteIdEntity>>>(
      onListen: () async {
        await FlutterOpenDroneId.startScan(UsedTechnologies.Bluetooth);

        remoteIDStreamSubscription = FlutterOpenDroneId.allMessages.listen(
          (messageContainer) {
            var newRemoteIdEntity = RemoteIdEntity(messageContainer);
            final RemoteIDReceiverOperationType operationType;

            if (!_remoteIDEntities.contains(newRemoteIdEntity)) {
              operationType = RemoteIDReceiverOperationType.add;
              _remoteIDEntities.add(newRemoteIdEntity);
            } else {
              operationType = RemoteIDReceiverOperationType.update;
              final oldRemoteIDEntity =
                  _remoteIDEntities.lookup(newRemoteIdEntity);

              newRemoteIdEntity = RemoteIdEntity.coalesceProperties(
                newRemoteIdEntity,
                oldRemoteIDEntity!,
              );

              _remoteIDEntities
                ..remove(oldRemoteIDEntity)
                ..add(newRemoteIdEntity);
            }

            remoteIDStreamController.add(
              Right(
                {operationType: newRemoteIdEntity},
              ),
            );
          },
          onError: (_) => remoteIDStreamController.add(
            Left(BluetoothReceiverFailure()),
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
}

final class WifiReceiver
    with DataHandler
    implements RemoteIDReceiverRepository<WifiReceiverFailure> {
  @override
  Stream<
          Either<WifiReceiverFailure,
              Map<RemoteIDReceiverOperationType, RemoteIdEntity>>>
      get remoteIDStream {
    late final StreamController<
            Either<WifiReceiverFailure,
                Map<RemoteIDReceiverOperationType, RemoteIdEntity>>>
        remoteIDStreamController;
    late final StreamSubscription<MessageContainer> remoteIDStreamSubscription;

    remoteIDStreamController = StreamController<
        Either<WifiReceiverFailure,
            Map<RemoteIDReceiverOperationType, RemoteIdEntity>>>(
      onListen: () async {
        await FlutterOpenDroneId.startScan(
          UsedTechnologies.Bluetooth,
        );

        remoteIDStreamSubscription = FlutterOpenDroneId.allMessages.listen(
          (messageContainer) {
            // remoteIDStreamController.add(
            //   Right(
            //     _remoteIDEntities,
            //   ),
            // );
          },
          onError: (_) => remoteIDStreamController.add(
            Left(
              WifiReceiverFailure(),
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
}
