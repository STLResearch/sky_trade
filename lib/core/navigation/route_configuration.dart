// ignore_for_file: strict_raw_type

import 'package:flutter/material.dart'
    show Container, MaterialPageRoute, Route, RouteSettings;
import 'package:flutter_bloc/flutter_bloc.dart'
    show BlocBuilder, BlocConsumer, ReadContext;
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:sky_ways/core/resources/strings/routes.dart'
    show
        baseRoutePath,
        environmentConfigRoutePath,
        homeRoutePath,
        loginRoutePath,
        registerRoutePath;
import 'package:sky_ways/features/u_a_s_restrictions/presentation/views/home_screen.dart';
import 'package:sky_ways/features/web_3_auth/presentation/blocs/web_3_auth_initialization_bloc/web_3_auth_initialization_bloc.dart'
    show
        Web3AuthInitializationBloc,
        Web3AuthInitializationEvent,
        Web3AuthInitializationState;
import 'package:sky_ways/features/web_3_auth/presentation/blocs/web_3_auth_user_session_bloc/web_3_auth_user_session_bloc.dart'
    show
        Web3AuthUserSessionBloc,
        Web3AuthUserSessionEvent,
        Web3AuthUserSessionState;
import 'package:sky_ways/features/web_3_auth/presentation/views/login_screen.dart';
import 'package:sky_ways/features/web_3_auth/presentation/views/register_screen.dart';
import 'package:sky_ways/test_environments.dart';

Route routes(RouteSettings settings) => MaterialPageRoute(
      builder: (context) {
              FlutterNativeSplash.remove();
              return const EnvironmentConfig();
        // switch (settings.name) {
        //   case baseRoutePath:
        //     context.read<Web3AuthInitializationBloc>().add(
        //           const Web3AuthInitializationEvent.initialize(),
        //         );
        //
        //     return BlocConsumer<Web3AuthInitializationBloc,
        //         Web3AuthInitializationState>(
        //       listener: (__, web3AuthInitializationState) {
        //         web3AuthInitializationState.maybeWhen(
        //           initialized: () =>
        //               context.read<Web3AuthUserSessionBloc>().add(
        //                     const Web3AuthUserSessionEvent.checkUserSession(),
        //                   ),
        //           orElse: () {},
        //         );
        //       },
        //       builder: (_, web3AuthInitializationState) =>
        //           web3AuthInitializationState.maybeWhen(
        //         initialized: () => BlocBuilder<Web3AuthUserSessionBloc,
        //             Web3AuthUserSessionState>(
        //           builder: (__, web3AuthUserSessionState) {
        //             FlutterNativeSplash.remove();
        //
        //             return web3AuthUserSessionState.maybeWhen(
        //               existingUserSession: () => const HomeScreen(),
        //               nonExistentUserSession: () => const LoginScreen(),
        //               orElse: Container.new, // Replace with loading screen
        //             );
        //           },
        //         ),
        //         orElse: Container.new, // Replace with error screen for
        //         // initialization failure and loading screen for
        //         // other cases
        //       ),
        //     );
        //   case loginRoutePath:
        //     return const LoginScreen();
        //   case registerRoutePath:
        //     return const RegisterScreen();
        //   case homeRoutePath:
        //     return const HomeScreen();
        //   default:
        //     return Container(); // Replace with error screen
        //   // EnvironmentConfig(),
        // }
       },
    );
