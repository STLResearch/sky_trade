import 'package:flutter_bloc/flutter_bloc.dart' show BlocProvider;
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
