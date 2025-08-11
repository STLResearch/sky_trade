// SPDX-License-Identifier: UNLICENSED
                            
import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_trade/features/internet_connection_checker/data/repositories/internet_connection_checker_repository_implementation.dart';
import 'package:sky_trade/features/internet_connection_checker/domain/repositories/internet_connection_checker_repository.dart';
import 'package:sky_trade/features/internet_connection_checker/presentation/blocs/internet_connection_checker_bloc/internet_connection_checker_bloc.dart'
    show InternetConnectionCheckerBloc;

final _sl = GetIt.I;

Future<void> registerInternetConnectionCheckerServices() async {
  _sl
    // BLoCs
    ..registerFactory<InternetConnectionCheckerBloc>(
      () => InternetConnectionCheckerBloc(
        _sl(),
      ),
    )

    // Repositories
    ..registerLazySingleton<InternetConnectionCheckerRepository>(
      () => InternetConnectionCheckerRepositoryImplementation(
        _sl(),
      ),
    );
}
