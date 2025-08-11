// SPDX-License-Identifier: UNLICENSED
                            
import 'package:dartz/dartz.dart' show Either;
import 'package:flutter_dotenv/flutter_dotenv.dart' show dotenv;
import 'package:sky_trade/core/errors/failures/update_manager_failure.dart'
    show IncompatibleBackendApiVersionFailure;
import 'package:sky_trade/core/resources/strings/secret_keys.dart'
    as secret_keys show compatibleBackendApiVersion;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show fullStop;
import 'package:sky_trade/core/utils/clients/data_handler.dart';
import 'package:sky_trade/features/update_manager/data/data_sources/update_manager_remote_data_source.dart'
    show UpdateManagerRemoteDataSource;
import 'package:sky_trade/features/update_manager/domain/entities/update_manager_entity.dart';
import 'package:sky_trade/features/update_manager/domain/repositories/update_manager_repository.dart';

final class UpdateManagerRepositoryImplementation
    with DataHandler
    implements UpdateManagerRepository {
  const UpdateManagerRepositoryImplementation(
    UpdateManagerRemoteDataSource updateManagerRemoteDataSource,
  ) : _updateManagerRemoteDataSource = updateManagerRemoteDataSource;

  final UpdateManagerRemoteDataSource _updateManagerRemoteDataSource;

  @override
  Future<Either<IncompatibleBackendApiVersionFailure, VersionEntity>>
      get compatibleBackendApiVersion =>
          handleData<IncompatibleBackendApiVersionFailure, VersionEntity>(
            dataSourceOperation: () =>
                _updateManagerRemoteDataSource.compatibleBackendApiVersion,
            onSuccess: (versionEntity) => versionEntity,
            onFailure: (_) => IncompatibleBackendApiVersionFailure(),
          );

  @override
  bool? isCurrentVersionCompatibleWith({
    required String apiVersionFromBackend,
  }) {
    final currentCompatibleApiVersion =
        dotenv.env[secret_keys.compatibleBackendApiVersion]!;

    final currentCompatibleApiVersionAsNumber = int.tryParse(
      currentCompatibleApiVersion
          .split(
            fullStop,
          )
          .join(),
    );

    final apiVersionFromBackendAsNumber = int.tryParse(
      apiVersionFromBackend
          .split(
            fullStop,
          )
          .join(),
    );

    if (currentCompatibleApiVersionAsNumber == null ||
        apiVersionFromBackendAsNumber == null) {
      return null;
    }

    return currentCompatibleApiVersionAsNumber ==
            apiVersionFromBackendAsNumber ||
        currentCompatibleApiVersionAsNumber > apiVersionFromBackendAsNumber;
  }
}
