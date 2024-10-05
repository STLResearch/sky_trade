import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_ways/features/auth/data/data_sources/auth_remote_data_source.dart';
import 'package:sky_ways/features/auth/data/repositories/auth_repository_implementation.dart';
import 'package:sky_ways/features/auth/domain/repositories/auth_repository.dart';
import 'package:sky_ways/features/auth/presentation/blocs/check_sky_trade_user_exists_bloc/check_sky_trade_user_exists_bloc.dart';
import 'package:sky_ways/features/auth/presentation/blocs/create_sky_trade_user_bloc/create_sky_trade_user_bloc.dart';
import 'package:sky_ways/features/auth/presentation/blocs/web_3_auth_capture_custom_tabs_closed_bloc/web_3_auth_capture_custom_tabs_closed_bloc.dart'
    show Web3AuthCaptureCustomTabsClosedBloc;
import 'package:sky_ways/features/auth/presentation/blocs/web_3_auth_initialization_bloc/web_3_auth_initialization_bloc.dart'
    show Web3AuthInitializationBloc;
import 'package:sky_ways/features/auth/presentation/blocs/web_3_auth_login_bloc/web_3_auth_login_bloc.dart'
    show Web3AuthLoginBloc;
import 'package:sky_ways/features/auth/presentation/blocs/web_3_auth_logout_bloc/web_3_auth_logout_bloc.dart'
    show Web3AuthLogoutBloc;
import 'package:sky_ways/features/auth/presentation/blocs/web_3_auth_register_bloc/web_3_auth_register_bloc.dart'
    show Web3AuthRegisterBloc;
import 'package:sky_ways/features/auth/presentation/blocs/web_3_auth_user_session_bloc/web_3_auth_user_session_bloc.dart'
    show Web3AuthUserSessionBloc;

final _sl = GetIt.I;

Future<void> registerAuthServices() async {
  _sl
    // BLoCs
    ..registerFactory<CheckSkyTradeUserExistsBloc>(
      () => CheckSkyTradeUserExistsBloc(
        _sl(),
      ),
    )
    ..registerFactory<CreateSkyTradeUserBloc>(
      () => CreateSkyTradeUserBloc(
        _sl(),
      ),
    )
    ..registerFactory<Web3AuthCaptureCustomTabsClosedBloc>(
      () => Web3AuthCaptureCustomTabsClosedBloc(
        _sl(),
      ),
    )
    ..registerFactory<Web3AuthInitializationBloc>(
      () => Web3AuthInitializationBloc(
        _sl(),
      ),
    )
    ..registerFactory<Web3AuthLoginBloc>(
      () => Web3AuthLoginBloc(
        _sl(),
      ),
    )
    ..registerFactory<Web3AuthLogoutBloc>(
      () => Web3AuthLogoutBloc(
        _sl(),
      ),
    )
    ..registerFactory<Web3AuthRegisterBloc>(
      () => Web3AuthRegisterBloc(
        _sl(),
      ),
    )
    ..registerFactory<Web3AuthUserSessionBloc>(
      () => Web3AuthUserSessionBloc(
        _sl(),
      ),
    )

    // Repositories
    ..registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImplementation(
        _sl(),
      ),
    )

    // Data sources
    ..registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImplementation(
        _sl(),
      ),
    );
}
