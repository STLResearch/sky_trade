import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_ways/core/utils/clients/network_client.dart';
import 'package:sky_ways/features/link_handler/data/repositories/link_handler_repository_implementation.dart';
import 'package:sky_ways/features/link_handler/domain/repositories/link_handler_repository.dart';
import 'package:sky_ways/features/link_handler/presentation/blocs/check_link_bloc/check_link_bloc.dart'
    show CheckLinkBloc;
import 'package:sky_ways/features/link_handler/presentation/blocs/handle_link_bloc/handle_link_bloc.dart'
    show HandleLinkBloc;
import 'package:sky_ways/features/location/data/repositories/location_repository_implementation.dart';
import 'package:sky_ways/features/location/domain/repositories/location_repository.dart';
import 'package:sky_ways/features/location/presentation/blocs/location_permission_bloc/location_permission_bloc.dart'
    show LocationPermissionBloc;
import 'package:sky_ways/features/location/presentation/blocs/location_position_bloc/location_position_bloc.dart'
    show LocationPositionBloc;
import 'package:sky_ways/features/location/presentation/blocs/location_service_status_bloc/location_service_status_bloc.dart'
    show LocationServiceStatusBloc;
import 'package:sky_ways/features/u_a_s_restrictions/data/data_sources/u_a_s_restrictions_remote_data_source.dart';
import 'package:sky_ways/features/u_a_s_restrictions/data/repositories/u_a_s_restrictions_repository_implementation.dart';
import 'package:sky_ways/features/u_a_s_restrictions/domain/repositories/u_a_s_restrictions_repository.dart';
import 'package:sky_ways/features/u_a_s_restrictions/presentation/blocs/u_a_s_restrictions_bloc/u_a_s_restrictions_bloc.dart'
    show UASRestrictionsBloc;
import 'package:sky_ways/features/web_3_auth/data/repositories/web_3_auth_repository_implementation.dart';
import 'package:sky_ways/features/web_3_auth/domain/repositories/web_3_auth_repository.dart';
import 'package:sky_ways/features/web_3_auth/presentation/blocs/web_3_auth_capture_custom_tabs_closed_bloc/web_3_auth_capture_custom_tabs_closed_bloc.dart'
    show Web3AuthCaptureCustomTabsClosedBloc;
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
    ..registerFactory<CheckLinkBloc>(
      () => CheckLinkBloc(
        sl(),
      ),
    )
    ..registerFactory<HandleLinkBloc>(
      () => HandleLinkBloc(
        sl(),
      ),
    )
    ..registerFactory<LocationPermissionBloc>(
      () => LocationPermissionBloc(
        sl(),
      ),
    )
    ..registerFactory<LocationPositionBloc>(
      () => LocationPositionBloc(
        sl(),
      ),
    )
    ..registerFactory<LocationServiceStatusBloc>(
      () => LocationServiceStatusBloc(
        sl(),
      ),
    )
    ..registerFactory<UASRestrictionsBloc>(
      () => UASRestrictionsBloc(
        sl(),
      ),
    )
    ..registerFactory<Web3AuthCaptureCustomTabsClosedBloc>(
      () => Web3AuthCaptureCustomTabsClosedBloc(
        sl(),
      ),
    )
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
    ..registerLazySingleton<LinkHandlerRepository>(
      LinkHandlerRepositoryImplementation.new,
    )
    ..registerLazySingleton<LocationRepository>(
      LocationRepositoryImplementation.new,
    )
    ..registerLazySingleton<UASRestrictionsRepository>(
      () => UASRestrictionsRepositoryImplementation(
        sl(),
      ),
    )
    ..registerLazySingleton<Web3AuthRepository>(
      Web3AuthRepositoryImplementation.new,
    )

    // Data sources
    ..registerLazySingleton<UASRestrictionsRemoteDataSource>(
      () => UASRestrictionsRemoteDataSourceImplementation(
        sl(),
      ),
    )

    // Clients
    ..registerLazySingleton<NetworkClient<Response>>(
      HttpClient.new,
    );
}
