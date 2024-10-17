import 'package:dartz/dartz.dart' show Function1;
import 'package:sky_ways/core/utils/enums/networking.dart' show ConnectionState;
import 'package:sky_ways/features/u_a_s_activity/domain/entities/u_a_s_entity.dart'
    show UASEntity;

abstract interface class UASActivityRepository {
  Future<void> listenUASActivities({
    required Function1<List<UASEntity>, void> onUASActivitiesGotten,
    required Function1<ConnectionState, void> onConnectionChanged,
  });

  Future<void> requestNewUASActivitiesAround({
    required String geoHash,
  });

  void stopListeningUASActivities();
}
