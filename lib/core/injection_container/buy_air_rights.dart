// SPDX-License-Identifier: UNLICENSED
                            
import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_trade/features/buy_air_rights/data/data_sources/buy_air_rights_remote_data_source.dart';
import 'package:sky_trade/features/buy_air_rights/data/repositories/buy_air_rights_repository_implementation.dart';
import 'package:sky_trade/features/buy_air_rights/domain/repositories/buy_air_rights_repository.dart';

final _sl = GetIt.I;

Future<void> registerBuyAirRightsServices() async {
  _sl
    // Repositories
    ..registerLazySingleton<BuyAirRightsRepository>(
      () => BuyAirRightsRepositoryImplementation(
        _sl(),
      ),
    )

    // Data sources
    ..registerLazySingleton<BuyAirRightsRemoteDataSource>(
      () => BuyAirRightsRemoteDataSourceImplementation(
        _sl(),
      ),
    );
}
