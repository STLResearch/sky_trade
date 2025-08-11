// SPDX-License-Identifier: UNLICENSED
                            
import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_trade/features/rent_air_rights/data/data_sources/rent_air_rights_remote_data_source.dart';
import 'package:sky_trade/features/rent_air_rights/data/repositories/rent_air_rights_repository_implementation.dart';
import 'package:sky_trade/features/rent_air_rights/domain/repositories/rent_air_rights_repository.dart';
import 'package:sky_trade/features/rent_air_rights/presentation/blocs/create_mint_rental_token_bloc/create_mint_rental_token_bloc.dart';
import 'package:sky_trade/features/rent_air_rights/presentation/blocs/execute_mint_rental_token_bloc/execute_mint_rental_token_bloc.dart';
import 'package:sky_trade/features/rent_air_rights/presentation/blocs/get_properties_bloc/get_properties_bloc.dart';

final _sl = GetIt.I;

Future<void> registerRentAirRightsServices() async {
  _sl
    // BLoCs
    ..registerFactory<CreateMintRentalTokenBloc>(
      () => CreateMintRentalTokenBloc(
        _sl(),
      ),
    )
    ..registerFactory<ExecuteMintRentalTokenBloc>(
      () => ExecuteMintRentalTokenBloc(
        _sl(),
      ),
    )
    ..registerFactory<GetPropertiesBloc>(
      () => GetPropertiesBloc(
        _sl(),
      ),
    )

    // Repositories
    ..registerLazySingleton<RentAirRightsRepository>(
      () => RentAirRightsRepositoryImplementation(
        _sl(),
      ),
    )

    // Data sources
    ..registerLazySingleton<RentAirRightsRemoteDataSource>(
      () => RentAirRightsRemoteDataSourceImplementation(
        _sl(),
      ),
    );
}
