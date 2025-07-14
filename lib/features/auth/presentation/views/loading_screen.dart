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
import 'package:sky_trade/core/errors/failures/auth_failure.dart'
    show UserNotFoundFailure;
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
        guestRoutePath,
        homeRoutePath,
        noInternetConnectionRoutePath,
        onboardingRoutePath;
import 'package:sky_trade/core/utils/enums/ui.dart' show ErrorReason;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/auth/presentation/blocs/auth_0_credentials_bloc/auth_0_credentials_bloc.dart'
    show Auth0CredentialsBloc, Auth0CredentialsEvent, Auth0CredentialsState;
import 'package:sky_trade/features/auth/presentation/blocs/auth_0_user_session_after_account_deletion_bloc/auth_0_user_session_after_account_deletion_bloc.dart'
    show
        Auth0UserSessionAfterAccountDeletionBloc,
        Auth0UserSessionAfterAccountDeletionEvent,
        Auth0UserSessionAfterAccountDeletionState;
import 'package:sky_trade/features/auth/presentation/blocs/auth_0_user_session_bloc/auth_0_user_session_bloc.dart'
    show Auth0UserSessionBloc, Auth0UserSessionEvent, Auth0UserSessionState;
import 'package:sky_trade/features/auth/presentation/blocs/check_sky_trade_user_exists_bloc/check_sky_trade_user_exists_bloc.dart'
    show
        CheckSkyTradeUserExistsBloc,
        CheckSkyTradeUserExistsEvent,
        CheckSkyTradeUserExistsState;
import 'package:sky_trade/features/auth/presentation/blocs/guest_user_bloc/guest_user_bloc.dart'
    show GuestUserBloc, GuestUserEvent, GuestUserState;
import 'package:sky_trade/features/auth/presentation/blocs/s_f_a_configuration_bloc/s_f_a_configuration_bloc.dart'
    show SFAConfigurationBloc, SFAConfigurationEvent, SFAConfigurationState;
import 'package:sky_trade/features/auth/presentation/blocs/s_f_a_user_session_bloc/s_f_a_user_session_bloc.dart'
    show SFAUserSessionBloc, SFAUserSessionEvent, SFAUserSessionState;
import 'package:sky_trade/features/device_profile/presentation/blocs/device_uuid_bloc/device_uuid_bloc.dart'
    show DeviceUUIDBloc, DeviceUUIDEvent;
import 'package:sky_trade/features/internet_connection_checker/presentation/blocs/internet_connection_checker_bloc/internet_connection_checker_bloc.dart'
    show
        InternetConnectionCheckerBloc,
        InternetConnectionCheckerEvent,
        InternetConnectionCheckerState;
import 'package:sky_trade/features/link_handler/presentation/blocs/app_link_bloc/app_link_bloc.dart'
    show AppLinkBloc;
import 'package:sky_trade/features/update_manager/presentation/blocs/compatible_backend_api_version_bloc/compatible_backend_api_version_bloc.dart'
    show
        CompatibleBackendApiVersionBloc,
        CompatibleBackendApiVersionEvent,
        CompatibleBackendApiVersionState;
import 'package:sky_trade/injection_container.dart' show serviceLocator;

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<DeviceUUIDBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<SFAConfigurationBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<Auth0UserSessionAfterAccountDeletionBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<Auth0UserSessionBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<Auth0CredentialsBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<InternetConnectionCheckerBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<SFAUserSessionBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<CheckSkyTradeUserExistsBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<CompatibleBackendApiVersionBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<GuestUserBloc>(
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
    _checkDeviceUUIDExist();
    _checkCompatibleBackendApiVersion();
    super.initState();
  }

  void _checkDeviceUUIDExist() => context.read<DeviceUUIDBloc>().add(
        const DeviceUUIDEvent.checkDeviceUUIDExists(),
      );

  void _checkCompatibleBackendApiVersion() =>
      context.read<CompatibleBackendApiVersionBloc>().add(
            const CompatibleBackendApiVersionEvent.checkVersion(),
          );

  void _removeSplashScreenAndNavigateTo({
    required String route,
    Object? arguments,
  }) {
    FlutterNativeSplash.remove();

    Navigator.of(
      context,
    ).pushReplacementNamed(
      route,
      arguments: arguments,
    );
  }

  @override
  Widget build(BuildContext context) => MultiBlocListener(
        listeners: [
          BlocListener<CompatibleBackendApiVersionBloc,
              CompatibleBackendApiVersionState>(
            listener: (_, compatibleBackendApiVersionState) {
              compatibleBackendApiVersionState.whenOrNull(
                versionCompatible: () {
                  context.read<SFAConfigurationBloc>().add(
                        const SFAConfigurationEvent.configure(),
                      );
                },
                versionIncompatible: () {
                  _removeSplashScreenAndNavigateTo(
                    route: errorRoutePath,
                    arguments: ErrorReason.incompatibleBackendApiVersion,
                  );
                },
                failedToCheckVersion: (_) {
                  _removeSplashScreenAndNavigateTo(
                    route: errorRoutePath,
                    arguments: ErrorReason.unknownError,
                  );
                },
              );
            },
          ),
          BlocListener<SFAConfigurationBloc, SFAConfigurationState>(
            listener: (_, sFAConfigurationState) {
              sFAConfigurationState.whenOrNull(
                configured: () {
                  context.read<Auth0UserSessionAfterAccountDeletionBloc>().add(
                        const Auth0UserSessionAfterAccountDeletionEvent
                            .checkAuth0SessionExisting(),
                      );
                },
                failedToConfigure: (_) {
                  _removeSplashScreenAndNavigateTo(
                    route: errorRoutePath,
                    arguments: ErrorReason.sessionInitializationFailure,
                  );
                },
              );
            },
          ),
          BlocListener<Auth0UserSessionAfterAccountDeletionBloc,
              Auth0UserSessionAfterAccountDeletionState>(
            listener: (_, auth0UserSessionAfterAccountDeletionState) {
              auth0UserSessionAfterAccountDeletionState.whenOrNull(
                existingAuth0Session: () {
                  _removeSplashScreenAndNavigateTo(
                    route: errorRoutePath,
                    arguments:
                        ErrorReason.deletedSkyTradeUserWithExistingAuth0Session,
                  );
                },
                nonExistentAuth0Session: () {
                  context.read<GuestUserBloc>().add(
                        const GuestUserEvent.checkUserIsGuest(),
                      );
                },
              );
            },
          ),
          BlocListener<GuestUserBloc, GuestUserState>(
            listener: (_, guestUserState) {
              guestUserState.whenOrNull(
                isGuestUser: () {
                  _removeSplashScreenAndNavigateTo(
                    route: guestRoutePath,
                  );
                },
                notGuestUser: () {
                  context.read<Auth0UserSessionBloc>().add(
                        const Auth0UserSessionEvent.checkUserSession(),
                      );
                },
              );
            },
          ),
          BlocListener<Auth0UserSessionBloc, Auth0UserSessionState>(
            listener: (_, auth0UserSessionState) {
              auth0UserSessionState.whenOrNull(
                existingUserSession: (auth0UserEntity) {
                  context.read<AppLinkBloc>().state.whenOrNull(
                    emailVerificationLink: () {
                      context.read<Auth0CredentialsBloc>().add(
                            Auth0CredentialsEvent.renewCredentials(
                              refreshToken: auth0UserEntity.refreshToken,
                            ),
                          );
                    },
                    noLink: () {
                      context.read<InternetConnectionCheckerBloc>().add(
                            const InternetConnectionCheckerEvent
                                .checkActiveInternetConnection(),
                          );
                    },
                    unrecognizedLink: () {
                      context.read<InternetConnectionCheckerBloc>().add(
                            const InternetConnectionCheckerEvent
                                .checkActiveInternetConnection(),
                          );
                    },
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
          BlocListener<Auth0CredentialsBloc, Auth0CredentialsState>(
            listener: (_, auth0CredentialsState) {
              auth0CredentialsState.whenOrNull(
                renewedCredentials: () {
                  context.read<InternetConnectionCheckerBloc>().add(
                        const InternetConnectionCheckerEvent
                            .checkActiveInternetConnection(),
                      );
                },
                failedToRenewCredentials: () {
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
                  context.read<SFAUserSessionBloc>().add(
                        const SFAUserSessionEvent.checkSession(),
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
          BlocListener<SFAUserSessionBloc, SFAUserSessionState>(
            listener: (_, sFAUserSessionState) {
              sFAUserSessionState.whenOrNull(
                sessionExist: () {
                  context.read<CheckSkyTradeUserExistsBloc>().add(
                        const CheckSkyTradeUserExistsEvent.checkUserExists(),
                      );
                },
                sessionNotExist: () {
                  _removeSplashScreenAndNavigateTo(
                    route: getStartedRoutePath,
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
                failedToCheckUser: (checkSkyTradeUserFailure) {
                  _removeSplashScreenAndNavigateTo(
                    route: switch (checkSkyTradeUserFailure) {
                      UserNotFoundFailure() => onboardingRoutePath,
                      _ => getStartedRoutePath,
                    },
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
                  Assets.svgs.skyTradeRadarLogo.svg(),
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
