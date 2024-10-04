import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter_opendroneid/flutter_opendroneid.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sky_ways/features/remote_i_d_receiver/data/repositories/remote_id_receiver_repository_implementation.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    () async {
        await [
          Permission.bluetooth,
          Permission.bluetoothConnect,
          Permission.bluetoothScan,
          Permission.nearbyWifiDevices,
          Permission.location,
        ].request();
        final result = await FlutterOpenDroneId.isWifiNanSupported;
    }.call();

    RemoteIdReceiver()
        .getRemoteIdStream(technologyType: UsedTechnologies.Both)
        .listen((streamDataOrFailure){
          streamDataOrFailure.fold(
              (failure){
                log('$failure');
              },
              (data){
                // log('$data');
              }
          );
    });
    return const Placeholder();
  }
}
