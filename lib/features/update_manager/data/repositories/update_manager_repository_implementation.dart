import 'package:dartz/dartz.dart' show Either;
import 'package:sky_trade/core/errors/failures/update_manager_failure.dart';
import 'package:sky_trade/core/utils/clients/data_handler.dart'
    show DataHandler;
import 'package:sky_trade/features/update_manager/data/data_sources/update_manager_remote_data_source.dart';
import 'package:sky_trade/features/update_manager/domain/entities/update_manager_entity.dart';
import 'package:sky_trade/features/update_manager/domain/repositories/update_manager_repository.dart'
    show UpdateManagerRepository;

final class UpdateManagerRepositoryImplementation
    with DataHandler
    implements UpdateManagerRepository {
  const UpdateManagerRepositoryImplementation(
    UpdateManagerRemoteDataSource updateManagerRemoteDataSource,
  ) : _updateManagerRemoteDataSource = updateManagerRemoteDataSource;

  final UpdateManagerRemoteDataSource _updateManagerRemoteDataSource;

  @override
  Future<Either<UpdateManagerFailure, UpdateManagerEntity>>
      getMinimumMobileAppVersion() =>
          handleData<UpdateManagerFailure, UpdateManagerEntity>(
            dataSourceOperation: () =>
                _updateManagerRemoteDataSource.getMinimumMobileAppVersion,
            onSuccess: (upgradeEntity) => upgradeEntity,
            onFailure: (_) => UpdateManagerFailure(),
          );
}
