import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_trade/features/auth/data/data_sources/auth_local_data_source.dart';
import 'package:sky_trade/features/auth/data/data_sources/auth_remote_data_source.dart';
import 'package:sky_trade/features/auth/data/repositories/auth_repository_implementation.dart';
import 'package:sky_trade/features/auth/domain/repositories/auth_repository.dart';
import 'package:sky_trade/features/auth/presentation/blocs/auth_0_authentication_bloc/auth_0_authentication_bloc.dart'
    show Auth0AuthenticationBloc;
import 'package:sky_trade/features/auth/presentation/blocs/auth_0_credentials_bloc/auth_0_credentials_bloc.dart'
    show Auth0CredentialsBloc;
import 'package:sky_trade/features/auth/presentation/blocs/auth_0_logout_bloc/auth_0_logout_bloc.dart'
    show Auth0LogoutBloc;
import 'package:sky_trade/features/auth/presentation/blocs/auth_0_user_session_after_account_deletion_bloc/auth_0_user_session_after_account_deletion_bloc.dart'
    show Auth0UserSessionAfterAccountDeletionBloc;
import 'package:sky_trade/features/auth/presentation/blocs/auth_0_user_session_bloc/auth_0_user_session_bloc.dart'
    show Auth0UserSessionBloc;
import 'package:sky_trade/features/auth/presentation/blocs/auth_bloc/auth_bloc.dart'
    show AuthBloc;
import 'package:sky_trade/features/auth/presentation/blocs/check_sky_trade_user_exists_bloc/check_sky_trade_user_exists_bloc.dart'
    show CheckSkyTradeUserExistsBloc;
import 'package:sky_trade/features/auth/presentation/blocs/s_f_a_initialization_bloc/s_f_a_initialization_bloc.dart'
    show SFAInitializationBloc;

final _sl = GetIt.I;

Future<void> registerAuthServices() async {
  _sl
    // BLoCs
    ..registerFactory<Auth0AuthenticationBloc>(
      () => Auth0AuthenticationBloc(
        _sl(),
      ),
    )
    ..registerFactory<Auth0CredentialsBloc>(
      () => Auth0CredentialsBloc(
        _sl(),
      ),
    )
    ..registerFactory<Auth0LogoutBloc>(
      () => Auth0LogoutBloc(
        _sl(),
      ),
    )
    ..registerFactory<Auth0UserSessionAfterAccountDeletionBloc>(
      () => Auth0UserSessionAfterAccountDeletionBloc(
        _sl(),
      ),
    )
    ..registerFactory<Auth0UserSessionBloc>(
      () => Auth0UserSessionBloc(
        _sl(),
      ),
    )
    ..registerFactory<AuthBloc>(
      () => AuthBloc(
        _sl(),
      ),
    )
    ..registerFactory<CheckSkyTradeUserExistsBloc>(
      () => CheckSkyTradeUserExistsBloc(
        _sl(),
      ),
    )
    ..registerFactory<SFAInitializationBloc>(
      () => SFAInitializationBloc(
        _sl(),
      ),
    )

    // Repositories
    ..registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImplementation(
        auth0: _sl(),
        singleFactorAuthentication: _sl(),
        authLocalDataSource: _sl(),
        authRemoteDataSource: _sl(),
      ),
    )

    // Data sources
    ..registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImplementation(
        _sl(),
      ),
    )
    ..registerLazySingleton<AuthLocalDataSource>(
      () => AuthLocalDataSourceImplementation(
        _sl(),
      ),
    );
}
