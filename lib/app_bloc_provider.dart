import 'package:flutter_bloc/flutter_bloc.dart' show BlocProvider;
import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_ways/features/file_manager/presentation/blocs/save_file_bloc/save_file_bloc.dart'
    show SaveFileBloc;
import 'package:sky_ways/features/file_manager/presentation/blocs/saved_file_bloc/saved_file_bloc.dart'
    show SavedFileBloc;
import 'package:sky_ways/features/link_handler/presentation/blocs/check_link_bloc/check_link_bloc.dart'
    show CheckLinkBloc;
import 'package:sky_ways/features/link_handler/presentation/blocs/handle_link_bloc/handle_link_bloc.dart'
    show HandleLinkBloc;
import 'package:sky_ways/features/location/presentation/blocs/location_permission_bloc/location_permission_bloc.dart'
    show LocationPermissionBloc;
import 'package:sky_ways/features/location/presentation/blocs/location_position_bloc/location_position_bloc.dart'
    show LocationPositionBloc;
import 'package:sky_ways/features/location/presentation/blocs/location_service_status_bloc/location_service_status_bloc.dart'
    show LocationServiceStatusBloc;
import 'package:sky_ways/features/geo_hash/presentation/blocs/geo_hash_bloc/geo_hash_bloc.dart'
    show GeoHashBloc;
import 'package:sky_ways/features/u_a_s_restrictions/presentation/blocs/u_a_s_restrictions_bloc/u_a_s_restrictions_bloc.dart'
    show UASRestrictionsBloc;
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

final _sl = GetIt.I;

List<BlocProvider> get appBlocProvider => [
      BlocProvider<SaveFileBloc>(
        create: (_) => _sl(),
      ),
      BlocProvider<SavedFileBloc>(
        create: (_) => _sl(),
      ),
      BlocProvider<GeoHashBloc>(
        create: (_) => _sl(),
      ),
      BlocProvider<CheckLinkBloc>(
        create: (_) => _sl(),
      ),
      BlocProvider<HandleLinkBloc>(
        create: (_) => _sl(),
      ),
      BlocProvider<LocationPermissionBloc>(
        create: (_) => _sl(),
      ),
      BlocProvider<LocationPositionBloc>(
        create: (_) => _sl(),
      ),
      BlocProvider<LocationServiceStatusBloc>(
        create: (_) => _sl(),
      ),
      BlocProvider<GeoHashBloc>(
        create: (_) => _sl(),
      ),
      BlocProvider<UASRestrictionsBloc>(
        create: (_) => _sl(),
      ),
      BlocProvider<Web3AuthCaptureCustomTabsClosedBloc>(
        create: (_) => _sl(),
      ),
      BlocProvider<Web3AuthInitializationBloc>(
        create: (_) => _sl(),
      ),
      BlocProvider<Web3AuthLoginBloc>(
        create: (_) => _sl(),
      ),
      BlocProvider<Web3AuthRegisterBloc>(
        create: (_) => _sl(),
      ),
      BlocProvider<Web3AuthUserSessionBloc>(
        create: (_) => _sl(),
      ),
    ];
