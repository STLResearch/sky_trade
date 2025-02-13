import 'package:flutter/material.dart'
    show
        AlwaysStoppedAnimation,
        BuildContext,
        Center,
        CircularProgressIndicator,
        Color,
        Column,
        EdgeInsetsDirectional,
        MainAxisAlignment,
        Navigator,
        Scaffold,
        SingleChildScrollView,
        SizedBox,
        State,
        StatefulWidget,
        StatelessWidget,
        StrokeCap,
        Text,
        Theme,
        Widget;
import 'package:flutter_bloc/flutter_bloc.dart'
    show
        BlocListener,
        BlocProvider,
        MultiBlocListener,
        MultiBlocProvider,
        ReadContext;
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart' show hex4285F4;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        fortyEightDotNil,
        fortySevenDotNil,
        fourteenDotNil,
        oneFiftyTwoDotNil,
        seventeenDotSevenThree,
        tenDotNil,
        thirtyDotNil,
        twentyOneDotNil;
import 'package:sky_trade/core/resources/strings/routes.dart'
    show
        errorRoutePath,
        getStartedRoutePath,
        homeRoutePath,
        noInternetConnectionRoutePath;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/auth/presentation/blocs/auth_0_user_session_bloc/auth_0_user_session_bloc.dart'
    show Auth0UserSessionBloc, Auth0UserSessionEvent, Auth0UserSessionState;
import 'package:sky_trade/features/auth/presentation/blocs/check_sky_trade_user_exists_bloc/check_sky_trade_user_exists_bloc.dart'
    show
        CheckSkyTradeUserExistsBloc,
        CheckSkyTradeUserExistsEvent,
        CheckSkyTradeUserExistsState;
import 'package:sky_trade/features/auth/presentation/blocs/s_f_a_initialization_bloc/s_f_a_initialization_bloc.dart'
    show SFAInitializationBloc, SFAInitializationEvent, SFAInitializationState;
import 'package:sky_trade/features/internet_connection_checker/presentation/blocs/internet_connection_checker_bloc/internet_connection_checker_bloc.dart'
    show
        InternetConnectionCheckerBloc,
        InternetConnectionCheckerEvent,
        InternetConnectionCheckerState;
import 'package:sky_trade/injection_container.dart' show serviceLocator;

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<SFAInitializationBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<Auth0UserSessionBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<InternetConnectionCheckerBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<CheckSkyTradeUserExistsBloc>(
            create: (_) => serviceLocator(),
          ),
        ],
        child: const LoadingView(),
      );
}

class LoadingView extends StatefulWidget {
  const LoadingView({super.key});

  @override
  State<LoadingView> createState() => _LoadingViewState();
}

class _LoadingViewState extends State<LoadingView> {
  @override
  void initState() {
    _initializeSFA();

    super.initState();
  }

  void _initializeSFA() => context.read<SFAInitializationBloc>().add(
        const SFAInitializationEvent.initialize(),
      );

  void _removeSplashScreenAndNavigateTo({
    required String route,
  }) {
    FlutterNativeSplash.remove();

    Navigator.of(
      context,
    ).pushReplacementNamed(
      route,
    );
  }

  @override
  Widget build(BuildContext context) => MultiBlocListener(
        listeners: [
          BlocListener<SFAInitializationBloc, SFAInitializationState>(
            listener: (_, sFAInitializationState) {
              sFAInitializationState.whenOrNull(
                initialized: () {
                  context.read<Auth0UserSessionBloc>().add(
                        const Auth0UserSessionEvent.checkUserSession(),
                      );
                },
                failedToInitialize: (_) {
                  _removeSplashScreenAndNavigateTo(
                    route: errorRoutePath,
                  );
                },
              );
            },
          ),
          BlocListener<Auth0UserSessionBloc, Auth0UserSessionState>(
            listener: (_, auth0UserSessionState) {
              auth0UserSessionState.whenOrNull(
                existingUserSession: (auth0UserEntity) {
                  context.read<InternetConnectionCheckerBloc>().add(
                        const InternetConnectionCheckerEvent
                            .checkActiveInternetConnection(),
                      );
                },
                nonExistentUserSession: () {
                  _removeSplashScreenAndNavigateTo(
                    route: getStartedRoutePath,
                  );
                },
              );
            },
          ),
          BlocListener<InternetConnectionCheckerBloc,
              InternetConnectionCheckerState>(
            listener: (_, internetConnectionCheckerState) {
              internetConnectionCheckerState.whenOrNull(
                hasActiveInternetConnection: () {
                  context.read<CheckSkyTradeUserExistsBloc>().add(
                        const CheckSkyTradeUserExistsEvent.checkUserExists(),
                      );
                },
                noActiveInternetConnection: () {
                  _removeSplashScreenAndNavigateTo(
                    route: noInternetConnectionRoutePath,
                  );
                },
              );
            },
          ),
          BlocListener<CheckSkyTradeUserExistsBloc,
              CheckSkyTradeUserExistsState>(
            listener: (_, checkSkyTradeUserExistsState) {
              checkSkyTradeUserExistsState.whenOrNull(
                userExists: (_) {
                  _removeSplashScreenAndNavigateTo(
                    route: homeRoutePath,
                  );
                },
                failedToCheckUser: (_) {
                  _removeSplashScreenAndNavigateTo(
                    route: getStartedRoutePath,
                  );
                },
              );
            },
          ),
        ],
        child: Scaffold(
          body: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsetsDirectional.all(
                thirtyDotNil,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: tenDotNil,
                  ),
                  Assets.svgs.skyTradeLogo.svg(),
                  const SizedBox(
                    height: fortyEightDotNil,
                  ),
                  SizedBox(
                    width: oneFiftyTwoDotNil,
                    height: oneFiftyTwoDotNil,
                    child: CircularProgressIndicator(
                      color: Theme.of(
                        context,
                      ).scaffoldBackgroundColor,
                      strokeWidth: seventeenDotSevenThree,
                      strokeCap: StrokeCap.round,
                      valueColor: const AlwaysStoppedAnimation<Color>(
                        hex4285F4,
                      ),
                      backgroundColor: Theme.of(
                        context,
                      ).scaffoldBackgroundColor,
                    ),
                  ),
                  const SizedBox(
                    height: fortySevenDotNil,
                  ),
                  Text(
                    context.localize.loadingPleaseWait,
                    style: Theme.of(
                      context,
                    ).textTheme.bodyMedium?.copyWith(
                          fontSize: fourteenDotNil,
                          height: twentyOneDotNil / fourteenDotNil,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
