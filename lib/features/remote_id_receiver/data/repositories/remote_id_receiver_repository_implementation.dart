import 'dart:async';

import 'package:flutter_opendroneid/flutter_opendroneid.dart';
import 'package:flutter_opendroneid/models/message_container.dart';
import 'package:sky_ways/features/remote_id_receiver/domain/entities/remote_id_message.dart';
import 'package:sky_ways/features/remote_id_receiver/domain/repositories/remote_id_receiver_repository.dart';

final class BluetoothReceiver implements RemoteIdReceiverRepository {
  @override
  Stream<RemoteIDMessage> getRemoteIDMessageStream(
    UsedTechnologies technology,
  ) {
    late final StreamController<RemoteIDMessage> streamController;
    late final StreamSubscription<MessageContainer> streamSubscription;

    streamController = StreamController<RemoteIDMessage>(
      onListen: () async {
        await FlutterOpenDroneId.startScan(technology);
        streamSubscription =
            FlutterOpenDroneId.allMessages.listen((MessageContainer message) {
          streamController.add(RemoteIDMessage(message));
        });
      },
      onCancel: () {
        FlutterOpenDroneId.stopScan();
        streamSubscription.cancel();
        streamController.close();
      },
    );

    return streamController.stream;
  }
}
