import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:sky_ways/features/remote_id_receiver/domain/entities/remote_id_message.dart';

class ReceiverTestScreen extends StatelessWidget {

  const ReceiverTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final remoteIDScanner = BluetoothReceiver();
    // final sub = remoteIDScanner.getRemoteIDMessageStream().listen(
    //     (RemoteIDMessage message){ log(message.toString()); },
    // );
    // () async{ await Future.delayed(const Duration(seconds: 30),sub.cancel);}
    //     .call();
    return Container(color: const Color(0xFFFFFFFF));
  }
}

