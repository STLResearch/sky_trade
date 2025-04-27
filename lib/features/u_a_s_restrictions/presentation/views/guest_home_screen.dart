// ignore_for_file: lines_longer_than_80_chars

import 'dart:io' show Platform;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'
    show
        AlignmentDirectional,
        BuildContext,
        Center,
        CircularProgressIndicator,
        Column,
        ElevatedButton,
        MainAxisSize,
        Navigator,
        Scaffold,
        SizedBox,
        Stack,
        State,
        StatefulWidget,
        StatelessWidget,
        Text,
        Theme,
        ValueListenableBuilder,
        ValueNotifier,
        Widget,
        showModalBottomSheet;
import 'package:flutter_bloc/flutter_bloc.dart'
    show
        BlocBuilder,
        BlocListener,
        BlocProvider,
        MultiBlocListener,
        MultiBlocProvider,
        ReadContext;
import 'package:flutter_dotenv/flutter_dotenv.dart' show dotenv;
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart'
    show CompassSettings, MapboxMap, MapboxOptions, ScaleBarSettings;
import 'package:sky_trade/core/errors/failures/auth_failure.dart';
import 'package:sky_trade/core/resources/colors.dart';
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        fifteenDotNil,
        six,
        sixteenDotNil,
        twentyDotNil,
        twentyTwoDotFive,
        twoDotNil;
import 'package:sky_trade/core/resources/strings/routes.dart';
import 'package:sky_trade/core/resources/strings/secret_keys.dart'
    show
        mapboxMapsDarkStyleUri,
        mapboxMapsPublicKey,
        mapboxMapsSatelliteStyleUri;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show emptyString, fullStop, whiteSpace;
import 'package:sky_trade/core/resources/strings/ui.dart'
    show bridDronesSourceId;
import 'package:sky_trade/core/utils/enums/ui.dart' show MapStyle;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/core/utils/extensions/mapbox_map_extensions.dart';
import 'package:sky_trade/features/auth/presentation/blocs/auth_0_credentials_bloc/auth_0_credentials_bloc.dart';
import 'package:sky_trade/features/auth/presentation/blocs/auth_0_logout_bloc/auth_0_logout_bloc.dart';
import 'package:sky_trade/features/auth/presentation/blocs/auth_0_user_session_bloc/auth_0_user_session_bloc.dart';
import 'package:sky_trade/features/auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:sky_trade/features/auth/presentation/widgets/action_dialog.dart';
import 'package:sky_trade/features/auth/presentation/widgets/alert_snack_bar.dart';
import 'package:sky_trade/features/bluetooth/presentation/blocs/bluetooth_permissions_bloc/bluetooth_permissions_bloc.dart'
    show
        BluetoothPermissionsBloc,
        BluetoothPermissionsEvent,
        BluetoothPermissionsState;
import 'package:sky_trade/features/link_handler/presentation/blocs/app_link_bloc/app_link_bloc.dart';
import 'package:sky_trade/features/location/presentation/blocs/location_permission_bloc/location_permission_bloc.dart'
    show
        LocationPermissionBloc,
        LocationPermissionEvent,
        LocationPermissionState;
import 'package:sky_trade/features/location/presentation/blocs/location_position_bloc/location_position_bloc.dart'
    show LocationPositionBloc, LocationPositionEvent, LocationPositionState;
import 'package:sky_trade/features/location/presentation/blocs/location_service_status_bloc/location_service_status_bloc.dart'
    show
        LocationServiceStatusBloc,
        LocationServiceStatusEvent,
        LocationServiceStatusState;
import 'package:sky_trade/features/remote_i_d_receiver/presentation/blocs/broadcast_remote_i_d_receiver_bloc/broadcast_remote_i_d_receiver_bloc.dart'
    show
        BroadcastRemoteIDReceiverBloc,
        BroadcastRemoteIDReceiverEvent,
        BroadcastRemoteIDReceiverState;
import 'package:sky_trade/features/search_autocomplete/presentation/blocs/retrieve_geometric_coordinates_bloc/retrieve_geometric_coordinates_bloc.dart'
    show RetrieveGeometricCoordinatesBloc, RetrieveGeometricCoordinatesState;
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/map_overlay.dart'
    show MapOverlay;
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/map_view.dart';
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/restricted_feature_sheet.dart';
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/u_a_s_list.dart';
import 'package:sky_trade/features/wifi/presentation/blocs/wifi_permission_bloc/wifi_permission_bloc.dart'
    show WifiPermissionBloc, WifiPermissionEvent, WifiPermissionState;
import 'package:sky_trade/injection_container.dart' show serviceLocator;

class GuestHomeScreen extends StatelessWidget {
  const GuestHomeScreen({super.key});

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<Auth0LogoutBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<AuthBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<Auth0UserSessionBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<Auth0CredentialsBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<BluetoothPermissionsBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<LocationPermissionBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<LocationPositionBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<LocationServiceStatusBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<BroadcastRemoteIDReceiverBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<WifiPermissionBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<RetrieveGeometricCoordinatesBloc>(
            create: (_) => serviceLocator(),
          ),
        ],
        child: const GuestHomeView(),
      );
}

class GuestHomeView extends StatefulWidget {
  const GuestHomeView({super.key});

  @override
  State<GuestHomeView> createState() => _GuestHomeViewState();
}

class _GuestHomeViewState extends State<GuestHomeView> {
  MapboxMap? _mapboxMap;

  late final ValueNotifier<bool> _centerLocationNotifier;
  late final ValueNotifier<MapStyle> _mapStyleNotifier;

  late String _previousBridGeoJsonData;
  int _currentDroneLimit = 5;

  @override
  void initState() {
    MapboxOptions.setAccessToken(
      dotenv.env[mapboxMapsPublicKey]!,
    );

    _centerLocationNotifier = ValueNotifier<bool>(
      false,
    );

    _mapStyleNotifier = ValueNotifier<MapStyle>(
      MapStyle.dark,
    );

    _previousBridGeoJsonData = emptyString;

    _requestLocationPermission();

    super.initState();
  }

  void _requestLocationPermission() =>
      context.read<LocationPermissionBloc>().add(
            const LocationPermissionEvent.requestPermission(),
          );

  void _requestBluetoothPermissions() =>
      context.read<BluetoothPermissionsBloc>().add(
            const BluetoothPermissionsEvent.requestPermissions(),
          );

  void _stopListeningLocationPosition() =>
      context.read<LocationPositionBloc>().add(
            const LocationPositionEvent.stopListeningLocationPosition(),
          );

  void _stopListeningLocationServiceStatus() => context
      .read<LocationServiceStatusBloc>()
      .add(
        const LocationServiceStatusEvent.stopListeningLocationServiceStatus(),
      );

  @override
  void dispose() {
    _centerLocationNotifier.dispose();
    _mapStyleNotifier.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, authState) {
              authState.whenOrNull(
                emailVerificationSent: (email) {
                  ActionDialog.show(
                    context,
                    content: context.localize.aVerificationLinkWasSentTo +
                        whiteSpace +
                        email! +
                        fullStop +
                        whiteSpace +
                        context.localize
                            .clickOnTheLinkToProceedWithTheAuthenticationProcess,
                    dismissible: false,
                    actionConfirmedText: context.localize.okay,
                    onActionConfirmed: () => Navigator.of(
                      context,
                    ).pop(),
                  );
                },
                sFAUserShouldLogout: (email) {
                  ActionDialog.show(
                    context,
                    content: context.localize
                            .anActionRequiresYourInputWeNeedToFinishLoggingYouOutOf +
                        whiteSpace +
                        email! +
                        fullStop +
                        whiteSpace +
                        context.localize
                            .thereIsNoOtherWayToProceedUnlessYouCompleteTheLogoutProcessYouWillBeAbleToLogBackInAfterwards,
                    dismissible: false,
                    actionConfirmedText: context.localize.logout,
                    onActionConfirmed: () {
                      Navigator.of(
                        context,
                      ).pop();

                      context.read<Auth0LogoutBloc>().add(
                            const Auth0LogoutEvent.logout(),
                          );
                    },
                  );
                },
                unverifiedAuth0UserExists: (email) {
                  ActionDialog.show(
                    context,
                    content: context
                            .localize.youHaveAnExistingSessionWithTheEmail +
                        whiteSpace +
                        email! +
                        whiteSpace +
                        context.localize
                            .howeverThisEmailHasNotBeenVerifiedClickOnTheLinkSentToTheEmailToProceedOrLogoutInstead,
                    dismissible: false,
                    actionDismissedText: context.localize.cancel,
                    onActionDismissed: () {
                      Navigator.of(
                        context,
                      ).pop();
                    },
                    actionConfirmedText: context.localize.logout,
                    onActionConfirmed: () {
                      Navigator.of(
                        context,
                      ).pop();

                      context.read<Auth0LogoutBloc>().add(
                            const Auth0LogoutEvent.logout(),
                          );
                    },
                  );
                },
                authenticated: () {
                  Navigator.of(
                    context,
                  ).pushReplacementNamed(
                    homeRoutePath,
                  );
                },
                failedToCheckSkyTradeUser: (checkSkyTradeUserFailure) {
                  if (checkSkyTradeUserFailure is UserDeletedFailure) {
                    ActionDialog.show(
                      context,
                      content: context.localize
                          .accountDoesNotExistIfItPreviouslyDidItMayHaveBeenDeletedHoweverWeNeedYourInputToFinishOff,
                      dismissible: false,
                      actionConfirmedText: context.localize.proceed,
                      onActionConfirmed: () {
                        Navigator.of(
                          context,
                        ).pop();

                        context.read<Auth0LogoutBloc>().add(
                              const Auth0LogoutEvent.logout(),
                            );
                      },
                    );
                  } else {
                    AlertSnackBar.show(
                      context,
                      message: switch (checkSkyTradeUserFailure) {
                        UserNotFoundFailure() => context
                            .localize.accountDoesNotExistPleaseRegisterInstead,
                        UnauthorizedFailure() =>
                          context.localize.oopsSomethingWentWrongPleaseTryAgain,
                        InvalidSignatureFailure() =>
                          context.localize.oopsSomethingWentWrongPleaseTryAgain,
                        UserMismatchFailure() => context.localize
                            .loginMethodMismatchKindlySignInWithTheSameMethodYouUsedToRegister,
                        UserDeletedFailure() => context.localize
                            .accountDoesNotExistIfItPreviouslyDidItMayHaveBeenDeleted,
                        CheckSkyTradeUserUnknownFailure() =>
                          context.localize.anUnknownErrorOccurredPleaseTryAgain,
                      },
                    );
                  }
                },
                failedToCreateSkyTradeUser: (createSkyTradeUserFailure) {
                  AlertSnackBar.show(
                    context,
                    message: switch (createSkyTradeUserFailure) {
                      InvalidEmailFailure() =>
                        context.localize.pleaseEnterAValidEmail,
                      WalletAlreadyExistsFailure() => context
                          .localize.thisEmailIsAlreadyLinkedToAnExistingAccount,
                      EmailReuseNotAllowedFailure() => context.localize
                          .thisEmailCannotBeUsedToCreateANewAccountPleaseUseADifferentEmail,
                      CreateSkyTradeUserUnknownFailure() =>
                        context.localize.anUnknownErrorOccurredPleaseTryAgain,
                    },
                  );
                },
                failedToAuthenticateUserWithAuth0: () {
                  AlertSnackBar.show(
                    context,
                    message: context
                        .localize.oopsWeCouldNotAuthenticateYouPleaseTryAgain,
                  );
                },
              );
            },
          ),
          BlocListener<AppLinkBloc, AppLinkState>(
            listener: (context, appLinkState) {
              appLinkState.whenOrNull(
                emailVerificationLink: () {
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
                  context.read<Auth0CredentialsBloc>().add(
                        Auth0CredentialsEvent.renewCredentials(
                          refreshToken: auth0UserEntity.refreshToken,
                        ),
                      );
                },
              );
            },
          ),
          BlocListener<Auth0CredentialsBloc, Auth0CredentialsState>(
            listener: (_, auth0CredentialsState) {
              auth0CredentialsState.whenOrNull(
                renewedCredentials: () {
                  context.read<AuthBloc>().add(
                        const AuthEvent.authenticate(),
                      );
                },
                failedToRenewCredentials: () {
                  AlertSnackBar.show(
                    context,
                    message: context.localize
                        .weCouldNotVerifyYourEmailPleaseEnsureThatYouHaveClickedTheCorrectLink,
                  );
                },
              );
            },
          ),
          BlocListener<Auth0LogoutBloc, Auth0LogoutState>(
            listener: (context, auth0LogoutState) {
              auth0LogoutState.whenOrNull(
                failedToLogOut: (_) {
                  AlertSnackBar.show(
                    context,
                    message: context.localize.weCouldNotLogYouOut,
                  );
                },
              );
            },
          ),
          BlocListener<LocationPermissionBloc, LocationPermissionState>(
            listener: (_, locationPermissionState) {
              locationPermissionState.maybeWhen(
                maybeGrantedPermission: (locationPermissionEntity) {
                  if (locationPermissionEntity.granted) {
                    context.read<LocationServiceStatusBloc>().add(
                          const LocationServiceStatusEvent
                              .listenLocationServiceStatus(),
                        );
                  } else {
                    _stopListeningLocationServiceStatus();
                  }
                },
                orElse: _stopListeningLocationServiceStatus,
              );
            },
          ),
          BlocListener<LocationServiceStatusBloc, LocationServiceStatusState>(
            listener: (_, locationServiceStatusState) {
              locationServiceStatusState.maybeWhen(
                gotLocationServiceStatus: (locationServiceStatusEntity) {
                  if (locationServiceStatusEntity.enabled) {
                    context.read<WifiPermissionBloc>().add(
                          const WifiPermissionEvent.requestPermission(),
                        );

                    context.read<LocationPositionBloc>().add(
                          const LocationPositionEvent.listenLocationPosition(),
                        );

                    _centerLocationNotifier.value = true;
                  } else {
                    _stopListeningLocationPosition();

                    _centerLocationNotifier.value = false;
                  }
                },
                orElse: () {
                  _stopListeningLocationPosition();

                  _centerLocationNotifier.value = false;
                },
              );
            },
          ),
          BlocListener<LocationPositionBloc, LocationPositionState>(
            listener: (_, locationPositionState) {
              locationPositionState.whenOrNull(
                gotLocationPosition: (locationPositionEntity) {
                  if (_centerLocationNotifier.value) {
                    _mapboxMap?.followUser(
                      latitude: locationPositionEntity.latitude,
                      longitude: locationPositionEntity.longitude,
                    );
                  }
                },
              );
            },
          ),
          BlocListener<WifiPermissionBloc, WifiPermissionState>(
            listener: (_, wifiPermissionState) {
              wifiPermissionState.whenOrNull(
                maybeGrantedPermission: (wifiPermissionEntity) {
                  if (wifiPermissionEntity.granted) {
                    _requestBluetoothPermissions();
                  }
                },
                cannotRequestPermission: (_) {
                  if (Platform.isIOS) {
                    _requestBluetoothPermissions();
                  }
                },
              );
            },
          ),
          BlocListener<BluetoothPermissionsBloc, BluetoothPermissionsState>(
            listener: (_, bluetoothPermissionsState) {
              bluetoothPermissionsState.whenOrNull(
                maybeGrantedPermissions: (bluetoothPermissionsEntity) {
                  if (bluetoothPermissionsEntity.granted) {
                    context.read<BroadcastRemoteIDReceiverBloc>().add(
                          const BroadcastRemoteIDReceiverEvent
                              .listenRemoteIDs(),
                        );
                  }
                },
              );
            },
          ),
          BlocListener<BroadcastRemoteIDReceiverBloc,
              BroadcastRemoteIDReceiverState>(
            listener: (_, broadcastRemoteIDReceiverState) {
              broadcastRemoteIDReceiverState.whenOrNull(
                gotRemoteIDs: (bridEntities) async {
                  if (bridEntities.length > _currentDroneLimit) {
                    await showModalBottomSheet<RestrictedFeatureSheet>(
                      context: context,
                      builder: (bottomSheetContext) => RestrictedFeatureSheet(
                        isDroneInsightsFeature: false,
                        onGetStartedPressed: () {
                          Navigator.pop(bottomSheetContext);
                          context.read<AuthBloc>().add(
                                const AuthEvent.authenticate(),
                              );
                        },
                      ),
                    );
                    _currentDroneLimit += 1;
                    return;
                  }
                  if (_mapboxMap != null) {
                    _previousBridGeoJsonData =
                        await _mapboxMap!.addOrUpdateDronesOnMap(
                      remoteIDEntities: bridEntities,
                      geoJsonSourceId: bridDronesSourceId,
                    );
                  }
                },
              );
            },
          ),
          BlocListener<RetrieveGeometricCoordinatesBloc,
              RetrieveGeometricCoordinatesState>(
            listener: (_, retrieveGeometricCoordinatesState) {
              retrieveGeometricCoordinatesState.whenOrNull(
                retrievedCoordinates: (latitude, longitude) {
                  _centerLocationNotifier.value = false;

                  _mapboxMap?.animateTo(
                    latitude: latitude,
                    longitude: longitude,
                  );
                },
              );
            },
          ),
        ],
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              MapView(
                mapStyleUri: dotenv.env[mapboxMapsDarkStyleUri]!,
                onTap: (_) {},
                onScroll: (_) => _centerLocationNotifier.value = false,
                onCreated: (mapboxMap) {
                  mapboxMap
                    ..compass.updateSettings(
                      CompassSettings(
                        enabled: false,
                      ),
                    )
                    ..scaleBar.updateSettings(
                      ScaleBarSettings(
                        enabled: false,
                      ),
                    );

                  _mapboxMap = mapboxMap;
                },
                onCameraChanged: (cameraEventData) {
                  context.read<LocationPermissionBloc>().state.whenOrNull(
                    maybeGrantedPermission: (locationPermissionEntity) {
                      if (locationPermissionEntity.granted) {
                        final cameraState = cameraEventData.cameraState;
                        if (cameraState.zoom < six) {
                          return;
                        }
                      }
                    },
                  );
                },
                onStyleLoaded: (_) async {
                  await _mapboxMap?.setUpLayersForDrones(
                    bridGeoJsonData: _previousBridGeoJsonData,
                    nridGeoJsonData: null,
                  );
                },
              ),
              ValueListenableBuilder<bool>(
                valueListenable: _centerLocationNotifier,
                builder: (_, centerLocationNotifierValue, __) =>
                    ValueListenableBuilder<MapStyle>(
                  valueListenable: _mapStyleNotifier,
                  builder: (_, mapStyleNotifierValue, __) => MapOverlay(
                    myLocationFollowed: centerLocationNotifierValue,
                    isGuestUser: true,
                    mapStyle: mapStyleNotifierValue,
                    onGiftTap: () {},
                    onMyLocationIconTap: () {
                      context.read<LocationPermissionBloc>().state.whenOrNull(
                        maybeGrantedPermission: (
                          locationPermissionEntity,
                        ) {
                          if (locationPermissionEntity.granted) {
                            context
                                .read<LocationServiceStatusBloc>()
                                .state
                                .whenOrNull(
                              gotLocationServiceStatus:
                                  (locationServiceStatusEntity) {
                                if (locationServiceStatusEntity.enabled) {
                                  _centerLocationNotifier.value =
                                      !_centerLocationNotifier.value;

                                  if (_centerLocationNotifier.value) {
                                    context.read<LocationPositionBloc>().add(
                                          const LocationPositionEvent
                                              .getLocationPosition(),
                                        );
                                  }
                                }
                              },
                            );
                          }
                        },
                      );
                    },
                    onMapLayerIconTap: () async {
                      final String newMapStyleUri;

                      switch (mapStyleNotifierValue) {
                        case MapStyle.dark:
                          newMapStyleUri = mapboxMapsSatelliteStyleUri;
                          _mapStyleNotifier.value = MapStyle.satellite;

                        case MapStyle.satellite:
                          newMapStyleUri = mapboxMapsDarkStyleUri;
                          _mapStyleNotifier.value = MapStyle.dark;
                      }

                      await _mapboxMap?.style.setStyleURI(
                        dotenv.env[newMapStyleUri]!,
                      );
                    },
                    onDroneTap: () {},
                  ),
                ),
              ),
            ],
          ),
          bottomSheet: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BlocBuilder<AuthBloc, AuthState>(
                builder: (_, authState) =>
                    BlocBuilder<Auth0LogoutBloc, Auth0LogoutState>(
                  builder: (_, auth0LogoutState) => Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: twentyDotNil,
                    ),
                    child: ElevatedButton(
                      onPressed: authState.maybeWhen(
                        authenticating: () => null,
                        orElse: () => auth0LogoutState.maybeWhen(
                          loggingOut: () => null,
                          orElse: () => () => context.read<AuthBloc>().add(
                                const AuthEvent.authenticate(),
                              ),
                        ),
                      ),
                      child: Center(
                        child: authState.maybeWhen(
                          authenticating: () => const SizedBox(
                            width: sixteenDotNil,
                            height: sixteenDotNil,
                            child: CircularProgressIndicator(
                              color: hexFFFFFF,
                              strokeWidth: twoDotNil,
                            ),
                          ),
                          orElse: () => auth0LogoutState.maybeWhen(
                            loggingOut: () => const SizedBox(
                              width: sixteenDotNil,
                              height: sixteenDotNil,
                              child: CircularProgressIndicator(
                                color: hexFFFFFF,
                                strokeWidth: twoDotNil,
                              ),
                            ),
                            orElse: () => Text(
                              context.localize.getStarted,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    fontSize: fifteenDotNil,
                                    height: twentyTwoDotFive / fifteenDotNil,
                                    color: hexFFFFFF,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: twentyDotNil,
              ),
              const UASList(
                isGuestUser: true,
              ),
            ],
          ),
        ),
      );
}
