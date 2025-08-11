// SPDX-License-Identifier: UNLICENSED
                            
// ignore_for_file: lines_longer_than_80_chars

import 'dart:io' show Platform;

import 'package:dartz/dartz.dart' show Function0;
import 'package:flutter/material.dart'
    show
        AlignmentDirectional,
        BuildContext,
        Column,
        CrossAxisAlignment,
        EdgeInsetsDirectional,
        MainAxisAlignment,
        MainAxisSize,
        Navigator,
        Padding,
        Scaffold,
        SizedBox,
        Stack,
        State,
        StatefulWidget,
        StatelessWidget,
        ValueListenableBuilder,
        ValueNotifier,
        Widget,
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
import 'package:sky_trade/core/resources/colors.dart' show hexB3FFFFFF;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show fiveDotNil, fourteenDotNil, six, zero;
import 'package:sky_trade/core/resources/strings/routes.dart'
    show getStartedRoutePath;
import 'package:sky_trade/core/resources/strings/secret_keys.dart'
    show
        mapboxMapsDarkStyleUri,
        mapboxMapsPublicKey,
        mapboxMapsSatelliteStyleUri;
import 'package:sky_trade/core/resources/strings/ui.dart'
    show
        bridDronesSourceId,
        droneRushZonesLayerId,
        endTimeKey,
        layerId,
        locationNameKey,
        startTimeKey;
import 'package:sky_trade/core/utils/enums/environment.dart' show Settings;
import 'package:sky_trade/core/utils/enums/ui.dart' show FeatureType, MapStyle;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/core/utils/extensions/mapbox_map_extensions.dart';
import 'package:sky_trade/features/auth/presentation/blocs/auth_0_logout_bloc/auth_0_logout_bloc.dart'
    show Auth0LogoutBloc, Auth0LogoutState;
import 'package:sky_trade/features/bluetooth/presentation/blocs/bluetooth_permissions_bloc/bluetooth_permissions_bloc.dart'
    show
        BluetoothPermissionsBloc,
        BluetoothPermissionsEvent,
        BluetoothPermissionsState;
import 'package:sky_trade/features/device_profile/presentation/blocs/device_metadata_bloc/device_metadata_bloc.dart'
    show DeviceMetadataBloc, DeviceMetadataEvent;
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
    show CachedRemoteIDBloc, CachedRemoteIDEvent, CachedRemoteIDState;
import 'package:sky_trade/features/remote_i_d_receiver/presentation/blocs/network_remote_i_d_receiver_bloc/network_remote_i_d_receiver_bloc.dart'
    show
        NetworkRemoteIDReceiverBloc,
        NetworkRemoteIDReceiverEvent,
        NetworkRemoteIDReceiverState;
import 'package:sky_trade/features/remote_i_d_transmitter/presentation/blocs/cached_remote_i_d_transmitter_bloc/cached_remote_i_d_transmitter_bloc.dart'
    show CachedRemoteIDTransmitterBloc, CachedRemoteIDTransmitterState;
import 'package:sky_trade/features/remote_i_d_transmitter/presentation/blocs/remote_i_d_transmitter_bloc/remote_i_d_transmitter_bloc.dart'
    show RemoteIDTransmitterBloc, RemoteIDTransmitterEvent;
import 'package:sky_trade/features/rewards/presentation/blocs/drone_rush_zones_bloc/drone_rush_zones_bloc.dart'
    show DroneRushZonesBloc, DroneRushZonesEvent, DroneRushZonesState;
import 'package:sky_trade/features/rewards/presentation/widgets/event_details.dart'
    show EventDetails;
import 'package:sky_trade/features/search_autocomplete/presentation/blocs/retrieve_geometric_coordinates_bloc/retrieve_geometric_coordinates_bloc.dart'
    show RetrieveGeometricCoordinatesBloc, RetrieveGeometricCoordinatesState;
import 'package:sky_trade/features/u_a_s_restrictions/domain/entities/restriction_entity.dart'
    show RestrictionEntity;
import 'package:sky_trade/features/u_a_s_restrictions/presentation/blocs/u_a_s_restrictions_bloc/u_a_s_restrictions_bloc.dart'
    show UASRestrictionsBloc, UASRestrictionsEvent, UASRestrictionsState;
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/action_dialog.dart';
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/alert_snack_bar.dart';
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/cached_drone_data_info.dart'
    show CachedDroneDataInfo;
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/drones_indicator.dart';
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/map_overlay.dart'
    show MapOverlay;
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/map_view.dart';
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/progress_dialog.dart';
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/restriction_indicator.dart';
import 'package:sky_trade/features/weather/presentation/weather_bloc/weather_bloc.dart'
    show WeatherBloc, WeatherEvent;
import 'package:sky_trade/features/wifi/presentation/blocs/wifi_permission_bloc/wifi_permission_bloc.dart'
    show WifiPermissionBloc, WifiPermissionEvent, WifiPermissionState;
import 'package:sky_trade/injection_container.dart' show serviceLocator;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<DeviceMetadataBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<Auth0LogoutBloc>(
            create: (_) => serviceLocator(),
          ),
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
          BlocProvider<NetworkRemoteIDReceiverBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<RemoteIDTransmitterBloc>(
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
          BlocProvider<CachedRemoteIDBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<CachedRemoteIDTransmitterBloc>(
            create: (_) => serviceLocator(),
          ),
        ],
        child: const HomeView(),
      );
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  MapboxMap? _mapboxMap;

  late final ValueNotifier<RestrictionEntity?> _clickedRestriction;
  late final ValueNotifier<bool> _centerLocationNotifier;
  late final ValueNotifier<MapStyle> _mapStyleNotifier;
  late final List<String> _layerIds;
  late final ValueNotifier<int> _newBridDronesCountNotifier;

  late int _previousBridDronesCount;

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

    _layerIds = [
      droneRushZonesLayerId,
    ];

    _previousBridDronesCount = zero;

    _sendDeviceMetadata();

    _startTransmitter();

    _checkCachedRemoteIDs();

    _listenDroneRushZones();

    _listenNetworkRemoteIDs();

    _requestLocationPermission();

    super.initState();
  }

  void _sendDeviceMetadata() => context.read<DeviceMetadataBloc>().add(
        const DeviceMetadataEvent.sendDeviceMetadata(),
      );

  void _startTransmitter() => context.read<RemoteIDTransmitterBloc>().add(
        const RemoteIDTransmitterEvent.startTransmitter(),
      );

  void _checkCachedRemoteIDs() => context.read<CachedRemoteIDBloc>().add(
        const CachedRemoteIDEvent.getCachedRemoteIDs(),
      );

  void _listenDroneRushZones() => context.read<DroneRushZonesBloc>().add(
        const DroneRushZonesEvent.listenDroneRushZones(),
      );

  void _listenNetworkRemoteIDs() =>
      context.read<NetworkRemoteIDReceiverBloc>().add(
            const NetworkRemoteIDReceiverEvent.listenRemoteIDs(),
          );

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
          BlocListener<Auth0LogoutBloc, Auth0LogoutState>(
            listener: (context, auth0LogoutState) {
              auth0LogoutState.whenOrNull(
                loggingOut: () {
                  ProgressDialog.show(
                    context,
                    progressIndicatorColor: hexB3FFFFFF,
                  );
                },
                loggedOut: () {
                  Navigator.of(
                    context,
                  ).pop();

                  Navigator.of(
                    context,
                  ).pushReplacementNamed(
                    getStartedRoutePath,
                  );
                },
                failedToLogOut: (_) {
                  Navigator.of(
                    context,
                  ).pop();

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
                  if (bridEntities.length > _previousBridDronesCount) {
                    _newBridDronesCountNotifier.value =
                        bridEntities.length - _previousBridDronesCount;
                  }

                  _previousBridDronesCount = bridEntities.length;

                  final latLng =
                      context.read<LocationPositionBloc>().state.whenOrNull(
                            gotLocationPosition: (locationPositionEntity) => (
                              latitude: locationPositionEntity.latitude,
                              longitude: locationPositionEntity.longitude,
                            ),
                          );

                  context.read<RemoteIDTransmitterBloc>().add(
                        RemoteIDTransmitterEvent.transmitRemoteID(
                          remoteIDEntities: bridEntities,
                          deviceLatitude: latLng?.latitude,
                          deviceLongitude: latLng?.longitude,
                        ),
                      );

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
          BlocListener<NetworkRemoteIDReceiverBloc,
              NetworkRemoteIDReceiverState>(
            listener: (_, networkRemoteIDReceiverState) {
              networkRemoteIDReceiverState.whenOrNull(
                gotRemoteIDs: (nridEntities) async {
                  // if (_mapboxMap != null) {
                  //   previousNridGeoJsonData = await _mapboxMap!.addOrUpdateDronesOnMap(
                  //     remoteIDEntities: nridEntities,
                  //     geoJsonSourceId: nridDronesSourceId,
                  //   );
                  // }
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
                  context.read<NetworkRemoteIDReceiverBloc>().add(
                        NetworkRemoteIDReceiverEvent.requestRemoteIDsAround(
                          geoHash: geoHash,
                        ),
                      );

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
          BlocListener<DroneRushZonesBloc, DroneRushZonesState>(
            listener: (_, droneRushZonesState) {
              droneRushZonesState.whenOrNull(
                gotOngoingDroneRushZones: (droneRushZoneEntities) async {
                  if (_mapboxMap == null) {
                    return;
                  }
                  await _mapboxMap!.updateDroneRushZonesOnMap(
                    droneRushZoneEntities: droneRushZoneEntities,
                  );
                },
              );
            },
          ),
          BlocListener<CachedRemoteIDBloc, CachedRemoteIDState>(
            listener: (_, cachedRemoteIDState) {
              cachedRemoteIDState.whenOrNull(
                gotCachedRemoteIDs: (geolocatedRemoteIDCollectionEntities) {
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (_) => CachedDroneDataInfo(
                      cachedRemoteIDTransmitterBloc:
                          context.read<CachedRemoteIDTransmitterBloc>(),
                      dronesDataToSend: geolocatedRemoteIDCollectionEntities,
                    ),
                  );
                },
              );
            },
          ),
          BlocListener<CachedRemoteIDTransmitterBloc,
              CachedRemoteIDTransmitterState>(
            listener: (_, cachedRemoteIDTransmitterState) {
              cachedRemoteIDTransmitterState.whenOrNull(
                transmittedRemoteID: () {
                  context.read<CachedRemoteIDBloc>().add(
                        const CachedRemoteIDEvent.clearCachedRemoteIDs(),
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

                      switch (featureType) {
                        case FeatureType.uasRestriction:
                          skipFlag = true;

                          context.read<UASRestrictionsBloc>().add(
                                UASRestrictionsEvent.selectRestriction(
                                  restrictionId: featureId,
                                ),
                              );

                        case FeatureType.droneRush:
                          if (data == null) return;

                          final locationName = data[locationNameKey];
                          final startDateTime = data[startTimeKey];
                          final endDateTime = data[endTimeKey];

                          showModalBottomSheet<void>(
                            context: context,
                            builder: (_) => EventDetails(
                              droneRushZonesBloc:
                                  context.read<DroneRushZonesBloc>(),
                              locationName: locationName as String,
                              startDateTime: startDateTime as DateTime,
                              endDateTime: endDateTime as DateTime,
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
                  await _mapboxMap?.setUpLayersForDroneRushZones();
                },
              ),
              ValueListenableBuilder<bool>(
                valueListenable: _centerLocationNotifier,
                builder: (_, centerLocationNotifierValue, __) =>
                    ValueListenableBuilder<MapStyle>(
                  valueListenable: _mapStyleNotifier,
                  builder: (_, mapStyleNotifierValue, __) => MapOverlay(
                    myLocationFollowed: centerLocationNotifierValue,
                    isGuestUser: false,
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
                DronesIndicator(
                  newDronesCount: _newBridDronesCountNotifier,
                ),
              ],
            ),
          ),
        ),
      );
}
