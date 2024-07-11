import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_ways/features/web_3_auth/data/repositories/web_3_auth_repository_implementation.dart';
import 'package:sky_ways/features/web_3_auth/domain/repositories/web_3_auth_repository.dart';
import 'package:sky_ways/features/web_3_auth/presentation/blocs/web_3_auth_initialization_bloc/web_3_auth_initialization_bloc.dart'
    show Web3AuthInitializationBloc;
import 'package:sky_ways/features/web_3_auth/presentation/blocs/web_3_auth_login_bloc/web_3_auth_login_bloc.dart'
    show Web3AuthLoginBloc;
import 'package:sky_ways/features/web_3_auth/presentation/blocs/web_3_auth_register_bloc/web_3_auth_register_bloc.dart'
    show Web3AuthRegisterBloc;
import 'package:sky_ways/features/web_3_auth/presentation/blocs/web_3_auth_user_session_bloc/web_3_auth_user_session_bloc.dart'
    show Web3AuthUserSessionBloc;

final sl = GetIt.I;

Future<void> registerServices() async {
  sl
    // BLoCs
    ..registerFactory<Web3AuthInitializationBloc>(
      () => Web3AuthInitializationBloc(
        sl(),
      ),
    )
    ..registerFactory<Web3AuthLoginBloc>(
      () => Web3AuthLoginBloc(
        sl(),
      ),
    )
    ..registerFactory<Web3AuthRegisterBloc>(
      () => Web3AuthRegisterBloc(
        sl(),
      ),
    )
    ..registerFactory<Web3AuthUserSessionBloc>(
      () => Web3AuthUserSessionBloc(
        sl(),
      ),
    )

    // Repositories
    ..registerLazySingleton<Web3AuthRepository>(
      Web3AuthRepositoryImplementation.new,
    );
}
