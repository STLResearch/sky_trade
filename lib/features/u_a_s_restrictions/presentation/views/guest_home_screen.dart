// ignore_for_file: lines_longer_than_80_chars

import 'dart:io' show Platform;

import 'package:dartz/dartz.dart' show Function0;
import 'package:flutter/material.dart'
    show
        AlignmentDirectional,
        BorderRadius,
        BuildContext,
        Column,
        CrossAxisAlignment,
        EdgeInsetsDirectional,
        ElevatedButton,
        Expanded,
        FontWeight,
        MainAxisAlignment,
        MainAxisSize,
        MediaQuery,
        Navigator,
        Orientation,
        OutlinedBorder,
        Padding,
        RoundedRectangleBorder,
        Row,
        Scaffold,
        Size,
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
        WidgetStatePropertyAll,
        showModalBottomSheet;
import 'package:flutter_bloc/flutter_bloc.dart'
    show
        BlocListener,
        BlocProvider,
        MultiBlocListener,
        MultiBlocProvider,
        ReadContext;
import 'package:flutter_dotenv/flutter_dotenv.dart' show dotenv;
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart'
    show
        AttributionSettings,
        CompassSettings,
        LogoSettings,
        MapboxMap,
        MapboxOptions,
        ScaleBarSettings;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart' show hexFFFFFF;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        fiftyDotNil,
        fiveDotFive,
        fiveDotNil,
        fourteenDotNil,
        nilDotNil,
        oneDotNil,
        six,
        tenDotNil,
        twelveDotNil,
        zero;
import 'package:sky_trade/core/resources/strings/routes.dart'
    show getStartedRoutePath;
import 'package:sky_trade/core/resources/strings/secret_keys.dart'
    show
        mapboxMapsDarkStyleUri,
        mapboxMapsPublicKey,
        mapboxMapsSatelliteStyleUri;
import 'package:sky_trade/core/resources/strings/ui.dart'
    show bridDronesSourceId, layerId;
import 'package:sky_trade/core/utils/enums/environment.dart' show Settings;
import 'package:sky_trade/core/utils/enums/ui.dart' show FeatureType, MapStyle;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/core/utils/extensions/mapbox_map_extensions.dart';
import 'package:sky_trade/features/auth/presentation/blocs/guest_user_bloc/guest_user_bloc.dart'
    show GuestUserBloc, GuestUserEvent;
import 'package:sky_trade/features/bluetooth/presentation/blocs/bluetooth_permissions_bloc/bluetooth_permissions_bloc.dart'
    show
        BluetoothPermissionsBloc,
        BluetoothPermissionsEvent,
        BluetoothPermissionsState;
import 'package:sky_trade/features/geo_hash/presentation/blocs/geo_hash_bloc/geo_hash_bloc.dart'
    show GeoHashBloc, GeoHashEvent, GeoHashState;
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
import 'package:sky_trade/features/location/presentation/blocs/location_settings_bloc/location_settings_bloc.dart'
    show LocationSettingsBloc, LocationSettingsEvent;
import 'package:sky_trade/features/remote_i_d_receiver/presentation/blocs/broadcast_remote_i_d_receiver_bloc/broadcast_remote_i_d_receiver_bloc.dart'
    show
        BroadcastRemoteIDReceiverBloc,
        BroadcastRemoteIDReceiverEvent,
        BroadcastRemoteIDReceiverState;
import 'package:sky_trade/features/remote_i_d_receiver/presentation/blocs/cached_remote_i_d_bloc/cached_remote_i_d_bloc.dart'
    show CachedRemoteIDBloc, CachedRemoteIDEvent;
import 'package:sky_trade/features/rewards/presentation/blocs/drone_rush_zones_bloc/drone_rush_zones_bloc.dart'
    show DroneRushZonesBloc;
import 'package:sky_trade/features/search_autocomplete/presentation/blocs/retrieve_geometric_coordinates_bloc/retrieve_geometric_coordinates_bloc.dart'
    show RetrieveGeometricCoordinatesBloc, RetrieveGeometricCoordinatesState;
import 'package:sky_trade/features/u_a_s_restrictions/domain/entities/restriction_entity.dart'
    show RestrictionEntity;
import 'package:sky_trade/features/u_a_s_restrictions/presentation/blocs/u_a_s_restrictions_bloc/u_a_s_restrictions_bloc.dart'
    show UASRestrictionsBloc, UASRestrictionsEvent, UASRestrictionsState;
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/action_dialog.dart';
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/drones_indicator.dart';
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/map_overlay.dart'
    show MapOverlay;
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/map_view.dart';
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/restricted_feature.dart'
    show RestrictedFeature;
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/restriction_indicator.dart';
import 'package:sky_trade/features/weather/presentation/weather_bloc/weather_bloc.dart'
    show WeatherBloc, WeatherEvent;
import 'package:sky_trade/features/wifi/presentation/blocs/wifi_permission_bloc/wifi_permission_bloc.dart'
    show WifiPermissionBloc, WifiPermissionEvent, WifiPermissionState;
import 'package:sky_trade/injection_container.dart' show serviceLocator;

class GuestHomeScreen extends StatelessWidget {
  const GuestHomeScreen({super.key});

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<BluetoothPermissionsBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<GeoHashBloc>(
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
          BlocProvider<LocationSettingsBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<BroadcastRemoteIDReceiverBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<UASRestrictionsBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<WeatherBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<WifiPermissionBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<RetrieveGeometricCoordinatesBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<DroneRushZonesBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<GuestUserBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<CachedRemoteIDBloc>(
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

  late final ValueNotifier<RestrictionEntity?> _clickedRestriction;
  late final ValueNotifier<bool> _centerLocationNotifier;
  late final ValueNotifier<MapStyle> _mapStyleNotifier;
  late final List<String> _layerIds;
  late final ValueNotifier<int> _newBridDronesCountNotifier;

  late int _previousBridDronesCount;

  late bool _hasShownAccumulatedDronesBottomSheetBefore;

  String? _currentlySelectedFeatureId;
  String? _currentlySelectedSourceId;

  @override
  void initState() {
    MapboxOptions.setAccessToken(
      dotenv.env[mapboxMapsPublicKey]!,
    );

    _clickedRestriction = ValueNotifier<RestrictionEntity?>(
      null,
    );

    _centerLocationNotifier = ValueNotifier<bool>(
      false,
    );

    _newBridDronesCountNotifier = ValueNotifier<int>(
      zero,
    );

    _mapStyleNotifier = ValueNotifier<MapStyle>(
      MapStyle.dark,
    );

    _layerIds = [];

    _previousBridDronesCount = zero;

    _hasShownAccumulatedDronesBottomSheetBefore = false;

    _requestLocationPermission();

    super.initState();
  }

  void _requestLocationPermission() =>
      context.read<LocationPermissionBloc>().add(
            const LocationPermissionEvent.requestPermission(),
          );

  void _requestWifiPermission() => context.read<WifiPermissionBloc>().add(
        const WifiPermissionEvent.requestPermission(),
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

  void _showLocationRelatedAlertDialogUsing({
    required String title,
    required String content,
    required String actionText,
    required Function0<void> action,
  }) =>
      ActionDialog.show(
        context,
        title: title,
        content: content,
        onActionConfirmed: () {
          Navigator.of(
            context,
          ).pop();

          action();
        },
        actionConfirmText: actionText,
      );

  void _showLocationPermissionDeniedDialog() =>
      _showLocationRelatedAlertDialogUsing(
        title: context.localize.locationAccessNeeded,
        content: context
            .localize.skyTradeNeedsYourLocationToShowRelevantFeaturesNearYou,
        actionText: context.localize.allow,
        action: _requestLocationPermission,
      );

  void _showLocationPermissionPermanentlyDeniedDialog() =>
      _showLocationRelatedAlertDialogUsing(
        title: context.localize.enableLocationPermissionInSettings,
        content: context.localize
            .youveDeniedLocationAccessPleaseEnableItInYourAppSettingsSoSkyTradeCanShowRelevantFeaturesNearYou,
        actionText: context.localize.openSettings,
        action: () => context.read<LocationSettingsBloc>().add(
              const LocationSettingsEvent.openSettings(
                settings: Settings.app,
              ),
            ),
      );

  void _showLocationServiceStatusDisabledDialog() =>
      _showLocationRelatedAlertDialogUsing(
        title: context.localize.turnOnLocationServices,
        content: context.localize
            .skyTradeNeedsGpsToFindYourLocationAndShowRelevantFeaturesAroundYouPleaseEnableItInYourDeviceSettings,
        actionText: context.localize.openSettings,
        action: () => context.read<LocationSettingsBloc>().add(
              const LocationSettingsEvent.openSettings(
                settings: Settings.locationServices,
              ),
            ),
      );

  @override
  void dispose() {
    _clickedRestriction.dispose();
    _centerLocationNotifier.dispose();
    _newBridDronesCountNotifier.dispose();
    _mapStyleNotifier.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => MultiBlocListener(
        listeners: [
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

                    _showLocationPermissionDeniedDialog();
                  }
                },
                cannotRequestPermission: (_) {
                  _stopListeningLocationServiceStatus();

                  _showLocationPermissionPermanentlyDeniedDialog();
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
                    _requestWifiPermission();

                    context.read<LocationPositionBloc>().add(
                          const LocationPositionEvent.listenLocationPosition(),
                        );

                    _centerLocationNotifier.value = true;
                  } else {
                    _stopListeningLocationPosition();

                    _centerLocationNotifier.value = false;

                    _showLocationServiceStatusDisabledDialog();
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
                  final latLng =
                      context.read<LocationPositionBloc>().state.whenOrNull(
                            gotLocationPosition: (locationPositionEntity) => (
                              latitude: locationPositionEntity.latitude,
                              longitude: locationPositionEntity.longitude,
                            ),
                          );

                  context.read<CachedRemoteIDBloc>().add(
                        CachedRemoteIDEvent.cacheRemoteIDs(
                          remoteIDEntities: bridEntities,
                          latitude: latLng?.latitude,
                          longitude: latLng?.longitude,
                        ),
                      );

                  if (bridEntities.length > _previousBridDronesCount) {
                    _newBridDronesCountNotifier.value =
                        bridEntities.length - _previousBridDronesCount;
                  }

                  _previousBridDronesCount = bridEntities.length;

                  if (bridEntities.length == six &&
                      !_hasShownAccumulatedDronesBottomSheetBefore) {
                    _hasShownAccumulatedDronesBottomSheetBefore = true;

                    await showModalBottomSheet<void>(
                      context: context,
                      builder: (bottomSheetContext) => RestrictedFeature(
                        guestUserBloc: context.read<GuestUserBloc>(),
                        highlightImage: Assets.pngs.droneInsightsEye.image(),
                        highlight: context.localize
                            .youveTrackedFivePlusDronesReadyToUnlockMore,
                        description: context.localize
                            .createYourProfileToSaveProgressGetAlertsAndExploreDeeperInsights,
                        onGetStartedPressed: () => Navigator.of(
                          context,
                        ).pushReplacementNamed(
                          getStartedRoutePath,
                          arguments: true,
                        ),
                      ),
                    );
                  }

                  if (_mapboxMap != null) {
                    await _mapboxMap!.updateDronesOnMap(
                      remoteIDEntities: bridEntities,
                      geoJsonSourceId: bridDronesSourceId,
                    );
                  }
                },
              );
            },
          ),
          BlocListener<UASRestrictionsBloc, UASRestrictionsState>(
            listener: (_, uASRestrictionsState) {
              uASRestrictionsState.whenOrNull(
                gotRestrictions: (geoHash, restrictionEntities) async {
                  if (restrictionEntities.isEmpty) {
                    return;
                  }

                  await _mapboxMap?.addRestrictionsOnMap(
                    geoHash: geoHash,
                    restrictionEntities: restrictionEntities,
                  );

                  _layerIds.add(
                    geoHash + layerId,
                  );
                },
                selectedRestriction: (restrictionEntity) =>
                    _clickedRestriction.value = restrictionEntity,
              );
            },
          ),
          BlocListener<GeoHashBloc, GeoHashState>(
            listener: (_, geoHashState) {
              geoHashState.whenOrNull(
                computedGeoHashOfPrecision3: (geoHash) {
                  context.read<WeatherBloc>().add(
                        WeatherEvent.getWeather(
                          geoHash: geoHash,
                        ),
                      );

                  context.read<UASRestrictionsBloc>().add(
                        UASRestrictionsEvent.getRestrictions(
                          geoHash: geoHash,
                        ),
                      );
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
                onTap: (mapContentGestureContext) async {
                  if (_mapboxMap == null) {
                    return;
                  }

                  var skipFlag = false;

                  String? selectedFeatureId;
                  String? selectedFeatureSourceId;

                  _centerLocationNotifier.value = false;

                  await _mapboxMap!.maybeHandleFeatureTap(
                    touchPosition: mapContentGestureContext.touchPosition,
                    layerIds: _layerIds,
                    onFeatureTap: (featureType, featureId, sourceId, data) {
                      if (featureType == null) return;

                      selectedFeatureId = featureId;
                      selectedFeatureSourceId = sourceId;

                      if (featureType == FeatureType.uasRestriction) {
                        skipFlag = true;

                        context.read<UASRestrictionsBloc>().add(
                              UASRestrictionsEvent.selectRestriction(
                                restrictionId: featureId,
                              ),
                            );
                      }
                    },
                  );

                  await _mapboxMap!.selectAndUnselectFeature(
                    selectFeatureId: selectedFeatureId,
                    selectFeatureSourceId: selectedFeatureSourceId,
                    unselectFeatureId: _currentlySelectedFeatureId,
                    unselectFeatureSourceId: _currentlySelectedSourceId,
                  );

                  _currentlySelectedFeatureId = selectedFeatureId;
                  _currentlySelectedSourceId = selectedFeatureSourceId;

                  if (!skipFlag) _clickedRestriction.value = null;
                },
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
                    )
                    ..logo.updateSettings(
                      LogoSettings(
                        enabled: false,
                      ),
                    )
                    ..attribution.updateSettings(
                      AttributionSettings(
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

                        context.read<GeoHashBloc>().add(
                              GeoHashEvent.computeGeoHash(
                                coordinates: (
                                  latitude: cameraState.center.coordinates.lat
                                      .toDouble(),
                                  longitude: cameraState.center.coordinates.lng
                                      .toDouble(),
                                ),
                              ),
                            );
                      }
                    },
                  );
                },
                onStyleLoaded: (_) async {
                  await _mapboxMap?.setUpLayersForDrones();
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
                    onMyLocationIconTap: () {
                      context.read<LocationPermissionBloc>().state.whenOrNull(
                        maybeGrantedPermission: (
                          locationPermissionEntity,
                        ) {
                          if (!locationPermissionEntity.granted) {
                            _showLocationPermissionDeniedDialog();

                            return;
                          }

                          context
                              .read<LocationServiceStatusBloc>()
                              .state
                              .whenOrNull(
                            gotLocationServiceStatus:
                                (locationServiceStatusEntity) {
                              if (!locationServiceStatusEntity.enabled) {
                                _showLocationServiceStatusDisabledDialog();

                                return;
                              }

                              _requestWifiPermission();

                              _centerLocationNotifier.value =
                                  !_centerLocationNotifier.value;

                              if (_centerLocationNotifier.value) {
                                context.read<LocationPositionBloc>().add(
                                      const LocationPositionEvent
                                          .getLocationPosition(),
                                    );
                              }
                            },
                          );
                        },
                        cannotRequestPermission: (_) {
                          _showLocationPermissionPermanentlyDeniedDialog();
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
                  ),
                ),
              ),
            ],
          ),
          floatingActionButton: Padding(
            padding: const EdgeInsetsDirectional.symmetric(
              horizontal: fiveDotNil,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                RestrictionIndicator(
                  clickedRestriction: _clickedRestriction,
                ),
                const SizedBox(
                  height: fourteenDotNil,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.sizeOf(
                            context,
                          ).width /
                          switch (MediaQuery.orientationOf(
                            context,
                          )) {
                            Orientation.portrait => twelveDotNil,
                            Orientation.landscape => fiveDotFive,
                          },
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          context.read<GuestUserBloc>().add(
                                const GuestUserEvent.setUserIsGuest(
                                  isGuest: false,
                                ),
                              );

                          Navigator.of(
                            context,
                          ).pushReplacementNamed(
                            getStartedRoutePath,
                            arguments: true,
                          );
                        },
                        style: Theme.of(
                          context,
                        ).elevatedButtonTheme.style?.copyWith(
                              shape: WidgetStatePropertyAll<OutlinedBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    tenDotNil,
                                  ),
                                ),
                              ),
                              fixedSize: const WidgetStatePropertyAll<Size>(
                                Size.fromHeight(
                                  fiftyDotNil,
                                ),
                              ),
                            ),
                        child: Text(
                          context.localize.getStartedAlt,
                          style: Theme.of(
                            context,
                          ).textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w500,
                                height: oneDotNil,
                                letterSpacing: nilDotNil,
                                color: hexFFFFFF,
                              ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: fourteenDotNil,
                    ),
                    DronesIndicator(
                      newDronesCount: _newBridDronesCountNotifier,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
}
