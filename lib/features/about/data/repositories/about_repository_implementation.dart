import 'package:dartz/dartz.dart' show Either;
import 'package:package_info_plus/package_info_plus.dart';
import 'package:sky_trade/core/errors/failures/about_failure.dart';
import 'package:sky_trade/core/utils/clients/data_handler.dart';
import 'package:sky_trade/features/about/domain/repositories/about_repository.dart'
    show AboutRepository;

final class AboutRepositoryImplementation
    with DataHandler
    implements AboutRepository {
  @override
  Future<Either<GetAppVersionFailure, String>> getAppVersion() =>
      handleData<GetAppVersionFailure, String>(
        dataSourceOperation: () => PackageInfo.fromPlatform().then(
          (packageInfo) => packageInfo.version,
        ),
        onSuccess: (appVersion) => appVersion,
        onFailure: (_) => GetAppVersionFailure(),
      );

}
