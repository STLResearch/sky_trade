import 'package:sky_ways/core/utils/clients/data_handler.dart';
import 'package:sky_ways/features/u_a_s_activity/data/data_sources/u_a_s_activity_remote_data_source.dart'
    show UASActivityRemoteDataSource;
import 'package:sky_ways/features/u_a_s_activity/domain/repositories/u_a_s_activity_repository.dart';

final class UASActivityRepositoryImplementation
    with DataHandler
    implements UASActivityRepository {
  const UASActivityRepositoryImplementation(
    UASActivityRemoteDataSource uASActivityRemoteDataSource,
  ) : _uASActivityRemoteDataSource = uASActivityRemoteDataSource;

  final UASActivityRemoteDataSource _uASActivityRemoteDataSource;
}
