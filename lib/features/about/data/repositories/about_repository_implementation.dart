// SPDX-License-Identifier: UNLICENSED
                            
import 'package:dartz/dartz.dart' show Either;
import 'package:package_info_plus/package_info_plus.dart';
import 'package:sky_trade/core/errors/failures/about_failure.dart';
import 'package:sky_trade/core/utils/clients/data_handler.dart';
import 'package:sky_trade/features/about/domain/entities/about_entity.dart';
import 'package:sky_trade/features/about/domain/repositories/about_repository.dart'
    show AboutRepository;

final class AboutRepositoryImplementation
    with DataHandler
    implements AboutRepository {
  @override
  Future<Either<AppVersionFailure, AppVersionEntity>> get appVersion =>
      handleData<AppVersionFailure, AppVersionEntity>(
        dataSourceOperation: () async {
          final packageInfo = await PackageInfo.fromPlatform();

          return AppVersionEntity(
            versionName: packageInfo.version,
            versionCode: packageInfo.buildNumber,
          );
        },
        onSuccess: (appVersionEntity) => appVersionEntity,
        onFailure: (_) => AppVersionFailure(),
      );
}
