// ignore_for_file: lines_longer_than_80_chars

import 'dart:io' show Platform;

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
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show emptyString;
import 'package:sky_trade/core/resources/strings/ui.dart'
    show bridDronesSourceId, layerId;
import 'package:sky_trade/core/utils/enums/ui.dart' show MapStyle;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/core/utils/extensions/mapbox_map_extensions.dart';
import 'package:sky_trade/features/auth/presentation/blocs/auth_0_logout_bloc/auth_0_logout_bloc.dart'
    show Auth0LogoutBloc, Auth0LogoutState;
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
import 'package:sky_trade/features/remote_i_d_receiver/presentation/blocs/broadcast_remote_i_d_receiver_bloc/broadcast_remote_i_d_receiver_bloc.dart'
    show
        BroadcastRemoteIDReceiverBloc,
        BroadcastRemoteIDReceiverEvent,
        BroadcastRemoteIDReceiverState;
import 'package:sky_trade/features/remote_i_d_receiver/presentation/blocs/network_remote_i_d_receiver_bloc/network_remote_i_d_receiver_bloc.dart'
    show
        NetworkRemoteIDReceiverBloc,
        NetworkRemoteIDReceiverEvent,
        NetworkRemoteIDReceiverState;
import 'package:sky_trade/features/remote_i_d_transmitter/presentation/blocs/remote_i_d_transmitter_bloc/remote_i_d_transmitter_bloc.dart'
    show RemoteIDTransmitterBloc, RemoteIDTransmitterEvent;
import 'package:sky_trade/features/rewards/presentation/blocs/drone_rush_zones_bloc/drone_rush_zones_bloc.dart'
    show DroneRushZonesBloc, DroneRushZonesEvent, DroneRushZonesState;
import 'package:sky_trade/features/rewards/presentation/widgets/event_details.dart';
import 'package:sky_trade/features/search_autocomplete/presentation/blocs/retrieve_geometric_coordinates_bloc/retrieve_geometric_coordinates_bloc.dart'
    show RetrieveGeometricCoordinatesBloc, RetrieveGeometricCoordinatesState;
import 'package:sky_trade/features/u_a_s_restrictions/domain/entities/restriction_entity.dart'
    show RestrictionEntity;
import 'package:sky_trade/features/u_a_s_restrictions/presentation/blocs/u_a_s_restrictions_bloc/u_a_s_restrictions_bloc.dart'
    show UASRestrictionsBloc, UASRestrictionsEvent, UASRestrictionsState;
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/alert_snack_bar.dart';
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
  late final List<String> _restrictionLayerIds;
  late final ValueNotifier<int> _newBridDronesCountNotifier;

  late int _previousBridDronesCount;
  late String _previousBridGeoJsonData;
  late String _previousNridGeoJsonData;

  String? _currentlySelectedRestrictionFeatureId;
  String? _currentlySelectedRestrictionSourceId;

  late final ValueNotifier<
      ({
        List<String> list,
        int index,
      })> _droneRushZonesIdsAndIndexNotifier;

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

    _restrictionLayerIds = List<String>.empty(
      growable: true,
    );

    _previousBridGeoJsonData = emptyString;

    _previousNridGeoJsonData = emptyString;

    _previousBridDronesCount = zero;

    _droneRushZonesIdsAndIndexNotifier = ValueNotifier<
        ({
          List<String> list,
          int index,
        })>(
      (
        list: List.empty(
          growable: true,
        ),
        index: zero,
      ),
    );

    _startTransmitter();

    _listenDroneRushZones();

    _listenNetworkRemoteIDs();

    _requestLocationPermission();

    super.initState();
  }

  void _startTransmitter() => context.read<RemoteIDTransmitterBloc>().add(
        const RemoteIDTransmitterEvent.startTransmitter(),
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
    _clickedRestriction.dispose();
    _centerLocationNotifier.dispose();
    _newBridDronesCountNotifier.dispose();
    _mapStyleNotifier.dispose();
    _droneRushZonesIdsAndIndexNotifier.dispose();

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
                  _restrictionLayerIds.add(
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
                gotOngoingDroneRushZones: (droneRushZoneEntities) {
                  _mapboxMap?.addOrUpdateDroneRushZonesOnMap(
                    droneRushZoneEntities: droneRushZoneEntities,
                  );
                },
                noLatestDroneRushZone: () {
                  _mapboxMap?.maybeRemoveDroneRushZonesFromMap();
                },
                noOngoingDroneRushZone: () {
                  _mapboxMap?.maybeRemoveDroneRushZonesFromMap();
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

                  _centerLocationNotifier.value = false;

                  await _mapboxMap!.handleDroneRushZoneTapUsing(
                    touchPosition: mapContentGestureContext.touchPosition,
                    previousDroneRushZonesIdsAndIndexNotifier:
                        _droneRushZonesIdsAndIndexNotifier,
                    onTap: (_) => showModalBottomSheet<void>(
                      context: context,
                      builder: (_) => const EventDetails(),
                    ),
                  );

                  if (_restrictionLayerIds.isEmpty) {
                    return;
                  }

                  final featureAndSourceId =
                      await _mapboxMap!.handleRestrictionSelection(
                    touchPosition: mapContentGestureContext.touchPosition,
                    restrictionLayerIds: _restrictionLayerIds,
                    previousRestrictionFeatureId:
                        _currentlySelectedRestrictionFeatureId,
                    previousRestrictionSourceId:
                        _currentlySelectedRestrictionSourceId,
                  );

                  if (context.mounted) {
                    context.read<UASRestrictionsBloc>().add(
                          UASRestrictionsEvent.selectRestriction(
                            restrictionId: featureAndSourceId.featureId,
                          ),
                        );
                  }

                  _currentlySelectedRestrictionFeatureId =
                      featureAndSourceId.featureId;
                  _currentlySelectedRestrictionSourceId =
                      featureAndSourceId.sourceId;
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
                  await _mapboxMap?.setUpLayersForDrones(
                    bridGeoJsonData: _previousBridGeoJsonData,
                    nridGeoJsonData: _previousNridGeoJsonData,
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
