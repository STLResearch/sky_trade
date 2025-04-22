import 'package:dartz/dartz.dart' show Either;
import 'package:sky_trade/core/errors/failures/about_failure.dart';

abstract interface class AboutRepository {
  Future<Either<GetAppVersionFailure, String>> getAppVersion();
}
