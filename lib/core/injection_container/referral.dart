import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_trade/features/referral/data/data_sources/referral_remote_data_source.dart';
import 'package:sky_trade/features/referral/data/repository/referral_repository_implementation.dart';
import 'package:sky_trade/features/referral/domain/repositories/referral_repository.dart';

final _sl = GetIt.I;

Future<void> registerReferralServices() async {
  _sl
  // Repositories
    ..registerLazySingleton<ReferralRepository>(
          () => ReferralRepositoryImplementation(
        _sl(),
      ),
    )

  // Data sources
    ..registerLazySingleton<ReferralRemoteDataSource>(
          () => ReferralRemoteDataSourceImplementation(
        _sl(),
      ),
    );
}
