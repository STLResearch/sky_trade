import 'dart:async' show StreamController, StreamSubscription;

import 'package:dartz/dartz.dart' show Either, Left, Right;
import 'package:flutter_opendroneid/flutter_opendroneid.dart'
    show FlutterOpenDroneId, UsedTechnologies;
import 'package:flutter_opendroneid/models/message_container.dart';
import 'package:sky_trade/core/errors/failures/remote_i_d_receiver_failure.dart';
import 'package:sky_trade/core/resources/numbers/networking.dart' show zero;
import 'package:sky_trade/features/remote_i_d_receiver/domain/entities/remote_i_d_entity.dart'
    show RemoteIDEntity;
import 'package:sky_trade/features/remote_i_d_receiver/domain/repositories/remote_i_d_receiver_repository.dart';

final class RemoteIDReceiverRepositoryImplementation
    implements RemoteIDReceiverRepository {
  @override
  Stream<Either<RemoteIDReceiverFailure, Set<RemoteIDEntity>>>
      get remoteIDStream {
    late final StreamController<
            Either<RemoteIDReceiverFailure, Set<RemoteIDEntity>>>
        remoteIDStreamController;

    late final StreamSubscription<MessageContainer> remoteIDStreamSubscription;

    final remoteIDEntities = <RemoteIDEntity>{};

    remoteIDStreamController =
        StreamController<Either<RemoteIDReceiverFailure, Set<RemoteIDEntity>>>(
      onListen: () {
        FlutterOpenDroneId.startScan(
          UsedTechnologies.Both,
        );

        void addNewRemoteIDEntityAndEmitNewEventUsing(
          RemoteIDEntity newRemoteIDEntity,
        ) {
          remoteIDEntities.add(
            newRemoteIDEntity,
          );

          remoteIDStreamController.add(
            Right(
              remoteIDEntities,
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
                      remoteIDEntities,
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
              RemoteIDReceiverFailure(),
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
