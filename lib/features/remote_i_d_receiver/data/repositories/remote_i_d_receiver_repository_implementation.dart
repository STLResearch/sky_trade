import 'dart:async' show StreamController, StreamSubscription;

import 'package:dartz/dartz.dart' show Either, Left, Right;
import 'package:flutter_opendroneid/flutter_opendroneid.dart'
    show FlutterOpenDroneId, UsedTechnologies;
import 'package:flutter_opendroneid/models/message_container.dart';
import 'package:sky_ways/core/errors/failures/remote_i_d_receiver_failure.dart';
import 'package:sky_ways/core/resources/numbers/ui.dart' show zero;
import 'package:sky_ways/core/utils/clients/data_handler.dart';
import 'package:sky_ways/features/remote_i_d_receiver/domain/entities/remote_i_d_entity.dart';
import 'package:sky_ways/features/remote_i_d_receiver/domain/repositories/remote_i_d_receiver_repository.dart';

final _remoteIDEntities = <RemoteIDEntity>{};

final class BluetoothReceiver
    with DataHandler
    implements RemoteIDReceiverRepository<BluetoothReceiverFailure> {
  @override
  Stream<Either<BluetoothReceiverFailure, Set<RemoteIDEntity>>>
      get remoteIDStream {
    late final StreamController<
            Either<BluetoothReceiverFailure, Set<RemoteIDEntity>>>
        remoteIDStreamController;
    late final StreamSubscription<MessageContainer> remoteIDStreamSubscription;

    remoteIDStreamController =
        StreamController<Either<BluetoothReceiverFailure, Set<RemoteIDEntity>>>(
      onListen: () async {
        await FlutterOpenDroneId.startScan(
          UsedTechnologies.Bluetooth,
        );

        remoteIDStreamSubscription = FlutterOpenDroneId.allMessages.listen(
          (messageContainer) {
            if (!_remoteIDEntities.contains(
              RemoteIDEntity(
                messageContainer,
              ),
            )) {
              _remoteIDEntities.add(
                RemoteIDEntity(
                  messageContainer,
                ),
              );
            } else {
              for (var index = zero;
                  index < _remoteIDEntities.length;
                  index++) {
                final oldRemoteIDEntity = _remoteIDEntities.elementAt(index);

                if (oldRemoteIDEntity.macAddress ==
                    messageContainer.macAddress) {
                  final newMessageContainer = oldRemoteIDEntity.copyWith(
                    lastMessageRssi: messageContainer.lastMessageRssi ??
                        oldRemoteIDEntity.lastMessageRssi,
                    lastUpdate: messageContainer.lastUpdate,
                    source: messageContainer.source,
                    basicIdMessage: messageContainer.basicIdMessages ??
                        oldRemoteIDEntity.basicIdMessages,
                    locationMessage: messageContainer.locationMessage ??
                        oldRemoteIDEntity.locationMessage,
                    operatorIdMessage: messageContainer.operatorIdMessage ??
                        oldRemoteIDEntity.operatorIdMessage,
                    selfIdMessage: messageContainer.selfIdMessage ??
                        oldRemoteIDEntity.selfIdMessage,
                    authenticationMessage:
                        messageContainer.authenticationMessage ??
                            oldRemoteIDEntity.authenticationMessage,
                    systemDataMessage: messageContainer.systemDataMessage ??
                        oldRemoteIDEntity.systemDataMessage,
                  );

                  final newRemoteIDEntity = RemoteIDEntity(
                    newMessageContainer,
                  );

                  _remoteIDEntities
                    ..remove(oldRemoteIDEntity)
                    ..add(newRemoteIDEntity);

                  break;
                }
              }
            }

            remoteIDStreamController.add(
              Right(
                _remoteIDEntities,
              ),
            );
          },
          onError: (_) => remoteIDStreamController.add(
            Left(
              BluetoothReceiverFailure(),
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

final class WifiReceiver
    with DataHandler
    implements RemoteIDReceiverRepository<WifiReceiverFailure> {
  @override
  Stream<Either<WifiReceiverFailure, Set<RemoteIDEntity>>> get remoteIDStream {
    late final StreamController<
            Either<WifiReceiverFailure, Set<RemoteIDEntity>>>
        remoteIDStreamController;
    late final StreamSubscription<MessageContainer> remoteIDStreamSubscription;

    remoteIDStreamController =
        StreamController<Either<WifiReceiverFailure, Set<RemoteIDEntity>>>(
      onListen: () async {
        await FlutterOpenDroneId.startScan(
          UsedTechnologies.Bluetooth,
        );

        remoteIDStreamSubscription = FlutterOpenDroneId.allMessages.listen(
          (messageContainer) {
            remoteIDStreamController.add(
              Right(
                _remoteIDEntities,
              ),
            );
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
