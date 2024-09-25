// import 'dart:async';
// import 'dart:developer';
//
// import 'package:flutter_blue_plus/flutter_blue_plus.dart';
// import 'package:flutter_opendroneid/models/message_container.dart';
// import 'package:sky_ways/features/remote_id_receiver/domain/remote_id_receiver.dart';
//
// class MockBluetoothReceiver implements RemoteIdReceiver {
//   @override
//   late Stream<MessageContainer> remoteIDMessages;
//   final StreamSubscription<BluetoothAdapterState> _streamBluetoothState =
//       FlutterBluePlus.adapterState.listen(null);
//   final StreamSubscription<List<ScanResult>> _streamBluetoothScanResult =
//       FlutterBluePlus.onScanResults.listen(null);
//
//   @override
//   void startScan() {
//     _streamBluetoothState.onData((BluetoothAdapterState state) async {
//       if (state == BluetoothAdapterState.on) {
//         await FlutterBluePlus.startScan(
//           oneByOne: true,
//           androidUsesFineLocation: true,
//         );
//
//         _streamBluetoothScanResult.onData((scanResultList) {
//           for (final scanResult in scanResultList) {
//             final serviceData = scanResult.advertisementData.serviceData;
//             log('$serviceData');
//           }
//         });
//       }
//     });
//   }
//
//   @override
//   void stopScan() {
//     FlutterBluePlus.stopScan();
//     _streamBluetoothState.cancel();
//     _streamBluetoothScanResult.cancel();
//   }
// }
