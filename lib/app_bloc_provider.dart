import 'package:flutter_bloc/flutter_bloc.dart' show BlocProvider;
import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_trade/features/auth/presentation/blocs/web_3_auth_initialization_bloc/web_3_auth_initialization_bloc.dart'
    show Web3AuthInitializationBloc;
import 'package:sky_trade/features/auth/presentation/blocs/web_3_auth_user_session_bloc/web_3_auth_user_session_bloc.dart'
    show Web3AuthUserSessionBloc;
import 'package:sky_trade/features/internet_connection_checker/presentation/blocs/internet_connection_checker_bloc/internet_connection_checker_bloc.dart'
    show InternetConnectionCheckerBloc;

final _sl = GetIt.I;

List<BlocProvider> get appBlocProvider => [
      BlocProvider<Web3AuthInitializationBloc>(
        create: (_) => _sl(),
      ),
      BlocProvider<Web3AuthUserSessionBloc>(
        create: (_) => _sl(),
      ),
      BlocProvider<InternetConnectionCheckerBloc>(
        create: (_) => _sl(),
      ),
    ];
