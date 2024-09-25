// ignore_for_file: strict_raw_type

import 'package:flutter/material.dart'
    show Container, MaterialPageRoute, Route, RouteSettings;
import 'package:flutter_bloc/flutter_bloc.dart'
    show BlocBuilder, BlocConsumer, ReadContext;
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:sky_ways/core/resources/strings/routes.dart'
    show
        baseRoutePath,
        homeRoutePath,
        loadingRoutePath,
        loginRoutePath,
        noInternetConnectionRoutePath,
        registerRoutePath;
import 'package:sky_ways/features/internet_connection_checker/presentation/blocs/internet_connection_checker_bloc/internet_connection_checker_bloc.dart'
    show
        InternetConnectionCheckerBloc,
        InternetConnectionCheckerEvent,
        InternetConnectionCheckerState;
import 'package:sky_ways/features/internet_connection_checker/presentation/screens/no_internet_connection_screen.dart';
import 'package:sky_ways/features/remote_id_receiver/presentation/views/receiver_test_screen.dart';
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
import 'package:sky_ways/features/web_3_auth/presentation/views/loading_screen.dart';
import 'package:sky_ways/features/web_3_auth/presentation/views/login_screen.dart';
import 'package:sky_ways/features/web_3_auth/presentation/views/register_screen.dart';

Route routes(RouteSettings settings) => MaterialPageRoute(
      builder: (context) {
        FlutterNativeSplash.remove();
        return ReceiverTestScreen();
        // switch (settings.name) {
        //   case baseRoutePath:
        //     context.read<InternetConnectionCheckerBloc>().add(
        //           const InternetConnectionCheckerEvent
        //               .checkActiveInternetConnection(),
        //         );
        //
        //     return BlocConsumer<InternetConnectionCheckerBloc,
        //         InternetConnectionCheckerState>(
        //       listener: (_, internetConnectionCheckerState) {
        //         internetConnectionCheckerState.whenOrNull(
        //           hasActiveInternetConnection: () {
        //             context.read<Web3AuthInitializationBloc>().add(
        //                   const Web3AuthInitializationEvent.initialize(),
        //                 );
        //           },
        //         );
        //       },
        //       builder: (__, internetConnectionCheckerState) =>
        //           internetConnectionCheckerState.maybeWhen(
        //         hasActiveInternetConnection: () => BlocConsumer<
        //             Web3AuthInitializationBloc, Web3AuthInitializationState>(
        //           listener: (___, web3AuthInitializationState) {
        //             web3AuthInitializationState.whenOrNull(
        //               initialized: () => context
        //                   .read<Web3AuthUserSessionBloc>()
        //                   .add(
        //                     const Web3AuthUserSessionEvent.checkUserSession(),
        //                   ),
        //             );
        //           },
        //           builder: (____, web3AuthInitializationState) =>
        //               web3AuthInitializationState.maybeWhen(
        //             initialized: () => BlocBuilder<Web3AuthUserSessionBloc,
        //                 Web3AuthUserSessionState>(
        //               builder: (_____, web3AuthUserSessionState) {
        //                 FlutterNativeSplash.remove();
        //
        //                 return web3AuthUserSessionState.maybeWhen(
        //                   existingUserSession: () => const HomeScreen(),
        //                   nonExistentUserSession: () => const LoginScreen(),
        //                   orElse: () => const LoadingScreen(),
        //                 );
        //               },
        //             ),
        //             failedToInitialize: (_) =>
        //                 Container(), // Replace with error
        //             orElse: () => const LoadingScreen(),
        //           ),
        //         ),
        //         noActiveInternetConnection: () {
        //           FlutterNativeSplash.remove();
        //
        //           return const NoInternetConnectionScreen();
        //         },
        //         orElse: () => const LoadingScreen(),
        //       ),
        //     );
        //   case loadingRoutePath:
        //     return const LoadingScreen();
        //   case noInternetConnectionRoutePath:
        //     return const NoInternetConnectionScreen();
        //   case loginRoutePath:
        //     return const LoginScreen();
        //   case registerRoutePath:
        //     return const RegisterScreen();
        //   case homeRoutePath:
        //     return const HomeScreen();
        //   default:
        //     return Container(); // Replace with error screen
        // }
      },
    );
