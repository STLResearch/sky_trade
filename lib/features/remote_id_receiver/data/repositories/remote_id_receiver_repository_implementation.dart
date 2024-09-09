import 'dart:async';

import 'package:sky_ways/core/utils/enums/local.dart' as enums show PermissionStatus;
import 'package:flutter_opendroneid/flutter_opendroneid.dart';
import 'package:flutter_opendroneid/models/message_container.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sky_ways/features/remote_id_receiver/domain/entities/remote_id_message.dart';
import 'package:sky_ways/features/remote_id_receiver/domain/repositories/remote_id_receiver_repository.dart';

final class BluetoothReceiver implements RemoteIdReceiverRepository {
  @override
  UsedTechnologies usedTechnology = UsedTechnologies.Bluetooth;
  @override
  late StreamController<RemoteIDMessage> streamController;
  @override
  late StreamSubscription<MessageContainer> streamSubscription;

  @override
  Future<enums.PermissionStatus> requestRequiredPermissions() async {
    final statuses = await [
      Permission.bluetoothScan,
      Permission.bluetoothConnect,
    ].request();

    final permissionNotGranted =
        statuses.containsValue(PermissionStatus.denied) ||
            statuses.containsValue(PermissionStatus.permanentlyDenied) ||
            statuses.containsValue(PermissionStatus.restricted);

    if (permissionNotGranted) {
      return enums.PermissionStatus.notGranted;
    }

    return enums.PermissionStatus.granted;
  }

  @override
  Future<bool> checkTechnologiesEnabled() async {
    return await Permission.bluetooth.serviceStatus.isEnabled &&
        await Permission.location.serviceStatus.isEnabled;
  }

  @override
  Stream<RemoteIDMessage> getRemoteIDMessageStream() {
    streamController = StreamController<RemoteIDMessage>(
      onListen: () async {
        if (await requestRequiredPermissions() == enums.PermissionStatus.granted
            && await checkTechnologiesEnabled()) {
          await FlutterOpenDroneId.startScan(UsedTechnologies.Bluetooth);
          streamSubscription =
              FlutterOpenDroneId.allMessages.listen((MessageContainer message) {
                streamController.add(RemoteIDMessage(message));
              });
        } else {
          //return left error
        }
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
