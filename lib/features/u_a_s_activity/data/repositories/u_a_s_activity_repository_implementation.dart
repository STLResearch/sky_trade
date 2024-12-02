import 'package:dartz/dartz.dart' show Function1;
import 'package:sky_trade/core/utils/enums/networking.dart'
    show ConnectionState;
import 'package:sky_trade/features/u_a_s_activity/data/data_sources/u_a_s_activity_remote_data_source.dart'
    show UASActivityRemoteDataSource;
import 'package:sky_trade/features/u_a_s_activity/domain/entities/u_a_s_entity.dart'
    show UASEntity;
import 'package:sky_trade/features/u_a_s_activity/domain/repositories/u_a_s_activity_repository.dart';

final class UASActivityRepositoryImplementation
    implements UASActivityRepository {
  const UASActivityRepositoryImplementation(
    UASActivityRemoteDataSource uASActivityRemoteDataSource,
  ) : _uASActivityRemoteDataSource = uASActivityRemoteDataSource;

  final UASActivityRemoteDataSource _uASActivityRemoteDataSource;

  @override
  Future<void> listenUASActivities({
    required Function1<List<UASEntity>, void> onUASActivitiesGotten,
    required Function1<ConnectionState, void> onConnectionChanged,
  }) =>
      _uASActivityRemoteDataSource.listenUASActivities(
        onUASActivitiesGotten: onUASActivitiesGotten,
        onConnectionChanged: onConnectionChanged,
      );

  @override
  Future<void> requestNewUASActivitiesAround({
    required String geoHash,
  }) =>
      _uASActivityRemoteDataSource.requestNewUASActivitiesAround(
        geoHash: geoHash,
      );

  @override
  void stopListeningUASActivities() =>
      _uASActivityRemoteDataSource.stopListeningUASActivities();
}
