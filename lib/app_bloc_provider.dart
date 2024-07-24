import 'package:flutter_bloc/flutter_bloc.dart' show BlocProvider;
import 'package:sky_ways/features/location/presentation/blocs/location_permission_bloc/location_permission_bloc.dart'
    show LocationPermissionBloc;
import 'package:sky_ways/features/location/presentation/blocs/location_position_bloc/location_position_bloc.dart'
    show LocationPositionBloc;
import 'package:sky_ways/features/location/presentation/blocs/location_service_status_bloc/location_service_status_bloc.dart'
    show LocationServiceStatusBloc;
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
import 'package:sky_ways/injection_container.dart' show sl;

List<BlocProvider> get appBlocProvider => [
      BlocProvider<LocationPermissionBloc>(
        create: (_) => sl(),
      ),
      BlocProvider<LocationPositionBloc>(
        create: (_) => sl(),
      ),
      BlocProvider<LocationServiceStatusBloc>(
        create: (_) => sl(),
      ),
      BlocProvider<UASRestrictionsBloc>(
        create: (_) => sl(),
      ),
      BlocProvider<Web3AuthCaptureCustomTabsClosedBloc>(
        create: (_) => sl(),
      ),
      BlocProvider<Web3AuthInitializationBloc>(
        create: (_) => sl(),
      ),
      BlocProvider<Web3AuthLoginBloc>(
        create: (_) => sl(),
      ),
      BlocProvider<Web3AuthRegisterBloc>(
        create: (_) => sl(),
      ),
      BlocProvider<Web3AuthUserSessionBloc>(
        create: (_) => sl(),
      ),
    ];
