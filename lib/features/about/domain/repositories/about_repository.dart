// SPDX-License-Identifier: UNLICENSED
                            
import 'package:dartz/dartz.dart' show Either;
import 'package:sky_trade/core/errors/failures/about_failure.dart';
import 'package:sky_trade/features/about/domain/entities/about_entity.dart';

abstract interface class AboutRepository {
  Future<Either<AppVersionFailure, AppVersionEntity>> get appVersion;
}
