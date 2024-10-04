import 'dart:async';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter_opendroneid/flutter_opendroneid.dart';
import 'package:flutter_opendroneid/models/message_container.dart';

import 'package:sky_ways/core/errors/failures/remote_i_d_receiver_failure.dart';
import 'package:sky_ways/core/utils/clients/data_handler.dart';

import 'package:sky_ways/features/remote_i_d_receiver/domain/entities/remote_id_entity.dart';
import 'package:sky_ways/features/remote_i_d_receiver/domain/repositories/remote_id_receiver_repository.dart';

final _remoteIDEntities = <RemoteIdEntity>{};

final class RemoteIdReceiver
    with DataHandler
    implements RemoteIdReceiverRepository<RemoteIdReceiverFailure> {
  @override
  Stream<
          Either<RemoteIdReceiverFailure,
              Map<RemoteIdReceiverOperationType, RemoteIdEntity>>>
      getRemoteIdStream({
    required UsedTechnologies technologyType,
  }) {
    late final StreamController<
            Either<RemoteIdReceiverFailure,
                Map<RemoteIdReceiverOperationType, RemoteIdEntity>>>
        remoteIDStreamController;

    late final StreamSubscription<MessageContainer> remoteIDStreamSubscription;

    remoteIDStreamController = StreamController<
        Either<RemoteIdReceiverFailure,
            Map<RemoteIdReceiverOperationType, RemoteIdEntity>>>(
      onListen: () async {
        await FlutterOpenDroneId.startScan(technologyType);

        remoteIDStreamSubscription = FlutterOpenDroneId.allMessages.listen(
          (messageContainer) {
            var newRemoteIdEntity = RemoteIdEntity(messageContainer);
            final RemoteIdReceiverOperationType operationType;

            if (!_remoteIDEntities.contains(newRemoteIdEntity)) {
              operationType = RemoteIdReceiverOperationType.add;
              _remoteIDEntities.add(newRemoteIdEntity);
            } else {
              operationType = RemoteIdReceiverOperationType.update;
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

            // log('operatorID: ${messageContainer.operatorIdMessage}');
            // log('selfID: ${messageContainer.selfIdMessage}');
            // log('systemID: ${messageContainer.systemDataMessage}');
            log('${newRemoteIdEntity.toJson()}');
            remoteIDStreamController.add(
              Right(
                {operationType: newRemoteIdEntity},
              ),
            );
          },
          onError: (_) {
            remoteIDStreamController.add(
              Left(RemoteIdReceiverFailure()),
            );
          },
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
