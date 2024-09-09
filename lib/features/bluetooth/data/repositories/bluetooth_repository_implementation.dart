import 'package:permission_handler/permission_handler.dart';

import 'package:sky_ways/core/utils/enums/local.dart' as enums show PermissionStatus;


final class BluetoothRepositoryImplementation{

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

  Future<bool> checkTechnologiesEnabled() async {
    return await Permission.bluetooth.serviceStatus.isEnabled &&
        await Permission.location.serviceStatus.isEnabled;
  }

}