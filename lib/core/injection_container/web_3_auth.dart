import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_ways/features/web_3_auth/data/repositories/web_3_auth_repository_implementation.dart';
import 'package:sky_ways/features/web_3_auth/domain/repositories/web_3_auth_repository.dart';
import 'package:sky_ways/features/web_3_auth/presentation/blocs/web_3_auth_capture_custom_tabs_closed_bloc/web_3_auth_capture_custom_tabs_closed_bloc.dart'
    show Web3AuthCaptureCustomTabsClosedBloc;
import 'package:sky_ways/features/web_3_auth/presentation/blocs/web_3_auth_initialization_bloc/web_3_auth_initialization_bloc.dart'
    show Web3AuthInitializationBloc;
import 'package:sky_ways/features/web_3_auth/presentation/blocs/web_3_auth_login_bloc/web_3_auth_login_bloc.dart'
    show Web3AuthLoginBloc;
import 'package:sky_ways/features/web_3_auth/presentation/blocs/web_3_auth_logout_bloc/web_3_auth_logout_bloc.dart' show Web3AuthLogoutBloc;
import 'package:sky_ways/features/web_3_auth/presentation/blocs/web_3_auth_register_bloc/web_3_auth_register_bloc.dart'
    show Web3AuthRegisterBloc;
import 'package:sky_ways/features/web_3_auth/presentation/blocs/web_3_auth_user_session_bloc/web_3_auth_user_session_bloc.dart'
    show Web3AuthUserSessionBloc;

final _sl = GetIt.I;

Future<void> registerWeb3AuthServices() async {
  _sl
    // BLoCs
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
    ..registerFactory<Web3AuthLogoutBloc>(
          () => Web3AuthLogoutBloc(
        _sl(),
      ),
    )

    // Repositories
    ..registerLazySingleton<Web3AuthRepository>(
      Web3AuthRepositoryImplementation.new,
    );
}
