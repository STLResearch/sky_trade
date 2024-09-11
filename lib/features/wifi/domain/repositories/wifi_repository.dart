import 'package:dartz/dartz.dart' show Either;
import 'package:sky_ways/core/errors/failures/wifi_failure.dart';
import 'package:sky_ways/features/wifi/domain/entities/wifi_entity.dart';

abstract interface class WifiRepository {
  Stream<Either<WifiAdapterStateFailure, WifiAdapterStateEntity>>
      get wifiAdapterStateStream;

  Future<Either<WifiPermissionFailure, WifiPermissionEntity>>
      requestWifiPermission();
}
