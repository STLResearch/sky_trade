import 'package:flutter/material.dart'
    show
        AlignmentDirectional,
        BuildContext,
        Column,
        MainAxisSize,
        Navigator,
        Scaffold,
        Stack,
        State,
        StatefulWidget,
        ValueListenableBuilder,
        ValueNotifier,
        Widget;
import 'package:flutter_bloc/flutter_bloc.dart'
    show BlocListener, MultiBlocListener, ReadContext;
import 'package:flutter_dotenv/flutter_dotenv.dart' show dotenv;
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart'
    show CompassSettings, MapboxMap, MapboxOptions, ScaleBarSettings;
import 'package:sky_trade/core/resources/colors.dart' show hexB3FFFFFF;
import 'package:sky_trade/core/resources/strings/routes.dart'
    show loginRoutePath;
import 'package:sky_trade/core/resources/strings/secret_keys.dart'
    show
        mapboxMapsDarkStyleUri,
        mapboxMapsPublicKey,
        mapboxMapsSatelliteStyleUri;
import 'package:sky_trade/core/utils/enums/local.dart' show CacheType;
import 'package:sky_trade/core/utils/enums/ui.dart' show MapStyle;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/core/utils/extensions/cache_entity_extensions.dart';
import 'package:sky_trade/core/utils/extensions/mapbox_map_extensions.dart';
import 'package:sky_trade/core/utils/typedefs/ui.dart'
    show PointAnnotationManagerPointAnnotationTuple;
import 'package:sky_trade/features/auth/presentation/blocs/web_3_auth_logout_bloc/web_3_auth_logout_bloc.dart'
    show Web3AuthLogoutBloc, Web3AuthLogoutEvent, Web3AuthLogoutState;
import 'package:sky_trade/features/bluetooth/presentation/blocs/bluetooth_adapter_state_bloc/bluetooth_adapter_state_bloc.dart'
    show BluetoothAdapterStateBloc, BluetoothAdapterStateEvent;
import 'package:sky_trade/features/bluetooth/presentation/blocs/bluetooth_permissions_bloc/bluetooth_permissions_bloc.dart'
    show
        BluetoothPermissionsBloc,
        BluetoothPermissionsEvent,
        BluetoothPermissionsState;
import 'package:sky_trade/features/cache_manager/presentation/blocs/cache_data_bloc/cache_data_bloc.dart'
    show CacheDataBloc, CacheDataEvent, CacheDataState;
import 'package:sky_trade/features/cache_manager/presentation/blocs/cached_data_bloc/cached_data_bloc.dart'
    show CachedDataBloc, CachedDataEvent, CachedDataState;
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
import 'package:sky_trade/features/remote_i_d_receiver/presentation/blocs/remote_i_d_receiver_bloc/remote_i_d_receiver_bloc.dart'
    show RemoteIDReceiverBloc, RemoteIDReceiverEvent, RemoteIDReceiverState;
import 'package:sky_trade/features/remote_i_d_transmitter/presentation/blocs/remote_i_d_transmitter_bloc/remote_i_d_transmitter_bloc.dart'
    show
        RemoteIDTransmitterBloc,
        RemoteIDTransmitterEvent,
        RemoteIDTransmitterState;
import 'package:sky_trade/features/u_a_s_activity/presentation/blocs/u_a_s_activity_bloc/u_a_s_activity_bloc.dart'
    show UASActivityBloc, UASActivityEvent, UASActivityState;
import 'package:sky_trade/features/u_a_s_restrictions/domain/entities/restriction_entity.dart'
    show RestrictionEntity;
import 'package:sky_trade/features/u_a_s_restrictions/presentation/blocs/u_a_s_restrictions_bloc/u_a_s_restrictions_bloc.dart'
    show UASRestrictionsBloc, UASRestrictionsEvent, UASRestrictionsState;
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/alert_snack_bar.dart';
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/map_overlay.dart';
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/map_view.dart';
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/progress_dialog.dart';
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/restriction_indicator.dart';
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/u_a_s_list.dart';
import 'package:sky_trade/features/wifi/presentation/blocs/wifi_permission_bloc/wifi_permission_bloc.dart'
    show WifiPermissionBloc, WifiPermissionEvent, WifiPermissionState;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  MapboxMap? _mapboxMap;
  PointAnnotationManagerPointAnnotationTuple? _marker;
  List<PointAnnotationManagerPointAnnotationTuple>? _markers;
  late final ValueNotifier<RestrictionEntity?> _clickedRestriction;
  late final ValueNotifier<bool> _centerLocationNotifier;
  late final ValueNotifier<MapStyle> _mapStyleNotifier;

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

    _mapStyleNotifier = ValueNotifier<MapStyle>(
      MapStyle.satellite,
    );

    _startTransmitter();

    _listenUASActivities();

    _requestLocationPermission();

    super.initState();
  }

  void _startTransmitter() => context.read<RemoteIDTransmitterBloc>().add(
        const RemoteIDTransmitterEvent.startTransmitter(),
      );

  void _listenUASActivities() => context.read<UASActivityBloc>().add(
        const UASActivityEvent.listenUASActivities(),
      );

  void _requestLocationPermission() =>
      context.read<LocationPermissionBloc>().add(
            const LocationPermissionEvent.requestPermission(),
          );

  @override
  void deactivate() {
    _stopTransmitter();
    _stopListeningUASActivities();
    _stopListeningLocationPosition();
    _stopListeningLocationServiceStatus();
    _stopListeningBluetoothAdapterState();
    _stopListeningRemoteIDs();

    super.deactivate();
  }

  void _stopTransmitter() => context.read<RemoteIDTransmitterBloc>().add(
        const RemoteIDTransmitterEvent.stopTransmitter(),
      );

  void _stopListeningUASActivities() => context.read<UASActivityBloc>().add(
        const UASActivityEvent.stopListeningUASActivities(),
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

  void _stopListeningBluetoothAdapterState() => context
      .read<BluetoothAdapterStateBloc>()
      .add(
        const BluetoothAdapterStateEvent.stopListeningBluetoothAdapterState(),
      );

  void _stopListeningRemoteIDs() => context.read<RemoteIDReceiverBloc>().add(
        const RemoteIDReceiverEvent.listenRemoteIDs(),
      );

  @override
  void dispose() {
    _mapboxMap?.dispose();
    _clickedRestriction.dispose();
    _centerLocationNotifier.dispose();
    _mapStyleNotifier.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => MultiBlocListener(
        listeners: [
          BlocListener<Web3AuthLogoutBloc, Web3AuthLogoutState>(
            listener: (_, web3AuthLogoutState) {
              web3AuthLogoutState.whenOrNull(
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
                    loginRoutePath,
                  );
                },
                failedToLogOut: (failure) {
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
                orElse: () {
                  _stopListeningLocationServiceStatus();
                },
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
                    context.read<BluetoothPermissionsBloc>().add(
                          const BluetoothPermissionsEvent.requestPermissions(),
                        );
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
                    context.read<RemoteIDReceiverBloc>().add(
                          const RemoteIDReceiverEvent.listenRemoteIDs(),
                        );
                  }
                },
              );
            },
          ),
          BlocListener<RemoteIDReceiverBloc, RemoteIDReceiverState>(
            listener: (_, remoteIDReceiverState) {
              remoteIDReceiverState.whenOrNull(
                gotRemoteIDs: (remoteIDEntities) async {
                  // await _mapboxMap?.removePreviousMarkers(
                  //   _markers,
                  // );

                  _markers = await _mapboxMap?.showUASActivitiesOnMapUsing(
                    remoteIDEntities: remoteIDEntities,
                  );

                  if (context.mounted) {
                    context.read<RemoteIDTransmitterBloc>().add(
                          RemoteIDTransmitterEvent.transmitRemoteID(
                            remoteIDEntities: remoteIDEntities,
                            deviceLatitude: null,
                            deviceLongitude: null,
                          ),
                        );
                  }
                },
              );
            },
          ),
          BlocListener<RemoteIDTransmitterBloc, RemoteIDTransmitterState>(
            listener: (_, remoteIDTransmitterState) {
              remoteIDTransmitterState.whenOrNull(
                stoppedTransmitter: () {
                  _startTransmitter();
                },
              );
            },
          ),
          BlocListener<UASRestrictionsBloc, UASRestrictionsState>(
            listener: (_, uASRestrictionsState) {
              uASRestrictionsState.whenOrNull(
                gotRestrictions: (restrictionEntities) async {
                  context.read<GeoHashBloc>().state.whenOrNull(
                    computedGeoHash: (geoHash) {
                      context.read<CacheDataBloc>().add(
                            CacheDataEvent.cacheData(
                              name: geoHash,
                              content: restrictionEntities,
                              type: CacheType.jsonListFile,
                            ),
                          );
                    },
                  );
                },
              );
            },
          ),
          BlocListener<CacheDataBloc, CacheDataState>(
            listener: (_, cacheDataState) {
              cacheDataState.whenOrNull(
                cached: (name, type) {
                  context.read<CachedDataBloc>().add(
                        CachedDataEvent.getCachedData(
                          name: name,
                          type: type,
                        ),
                      );
                },
              );
            },
          ),
          BlocListener<GeoHashBloc, GeoHashState>(
            listener: (_, geoHashState) {
              geoHashState.whenOrNull(
                computedGeoHash: (geoHash) {
                  context.read<UASActivityBloc>().add(
                        UASActivityEvent.requestNewUASActivitiesAround(
                          geoHash: geoHash,
                        ),
                      );

                  context.read<CachedDataBloc>().add(
                        CachedDataEvent.getCachedData(
                          name: geoHash,
                          type: CacheType.jsonListFile,
                        ),
                      );
                },
              );
            },
          ),
          BlocListener<UASActivityBloc, UASActivityState>(
            listener: (_, uASActivityState) {
              uASActivityState.whenOrNull(
                stoppedListeningUASActivities: () {
                  _listenUASActivities();
                },
              );
            },
          ),
          BlocListener<CachedDataBloc, CachedDataState>(
            listener: (_, cachedDataState) {
              cachedDataState.whenOrNull(
                cacheExists: (cacheEntity) async {
                  await _mapboxMap?.drawRestrictionsPolygonsConsidering(
                    restrictionEntities: cacheEntity.asRestrictionEntities,
                    onPolygonClick: (
                      polygonAnnotation,
                      clickedRestrictionEntity,
                    ) async {
                      _clickedRestriction.value = clickedRestrictionEntity;

                      // final a = clickedRestrictionEntity;
                      // final b = iosMultiplePolygonClickIssueWorkAround;
                      //
                      // final c = a == b;
                      //
                      // if (clickedRestrictionEntity ==
                      //     iosMultiplePolygonClickIssueWorkAround) {
                      //   return;
                      // }

                      // iosMultiplePolygonClickIssueWorkAround =
                      //     clickedRestrictionEntity;
                      await _mapboxMap?.removePreviousMarker(
                        _marker,
                      );

                      await _mapboxMap
                          ?.addMarkerWithTextOnTopRestrictionPolygonUsing(
                            polygonAnnotation: polygonAnnotation,
                            clickedRestrictionEntity: clickedRestrictionEntity,
                          )
                          .then(
                            (marker) => _marker = marker,
                          );
                    },
                  );
                },
                cacheNotExist: () {
                  context.read<GeoHashBloc>().state.whenOrNull(
                    computedGeoHash: (geoHash) {
                      context.read<UASRestrictionsBloc>().add(
                            UASRestrictionsEvent.getRestrictions(
                              geoHash: geoHash,
                            ),
                          );
                    },
                  );
                },
              );
            },
          ),
          BlocListener<UASActivityBloc, UASActivityState>(
            listener: (context, uASActivityState) {
              uASActivityState.whenOrNull(
                gotUASActivities: (uASEntities) async {
                  // await _mapboxMap?.removePreviousMarkers(
                  //   _markers,
                  // );

                  _markers = await _mapboxMap?.showUASActivitiesOnMapUsing(
                    uASEntities: uASEntities,
                  );
                },
              );
            },
          ),
        ],
        child: Scaffold(
          body: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              MapView(
                mapStyleUri: dotenv.env[mapboxMapsSatelliteStyleUri]!,
                onTap: (_) => _clickedRestriction.value = null,
                onScroll: (_) => _centerLocationNotifier.value = false,
                onCreated: (mapboxMap) {
                  mapboxMap.compass.updateSettings(
                    CompassSettings(
                      enabled: false,
                    ),
                  );

                  mapboxMap.scaleBar.updateSettings(
                    ScaleBarSettings(
                      enabled: false,
                    ),
                  );

                  _mapboxMap = mapboxMap;
                },
                onCameraChanged: (_) {
                  context.read<LocationPermissionBloc>().state.whenOrNull(
                    maybeGrantedPermission: (locationPermissionEntity) {
                      if (locationPermissionEntity.granted) {
                        _mapboxMap?.getCameraState().then(
                          (cameraState) {
                            context.read<GeoHashBloc>().add(
                                  GeoHashEvent.computeGeoHash(
                                    coordinates: (
                                      latitude: cameraState
                                          .center.coordinates.lat
                                          .toDouble(),
                                      longitude: cameraState
                                          .center.coordinates.lng
                                          .toDouble(),
                                    ),
                                  ),
                                );
                          },
                        );
                      }
                    },
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
                    onMapLayerIconTap: () {
                      switch (mapStyleNotifierValue) {
                        case MapStyle.dark:
                          _mapboxMap?.style.setStyleURI(
                            dotenv.env[mapboxMapsSatelliteStyleUri]!,
                          );

                          _mapStyleNotifier.value = MapStyle.satellite;

                        case MapStyle.satellite:
                          _mapboxMap?.style.setStyleURI(
                            dotenv.env[mapboxMapsDarkStyleUri]!,
                          );

                          _mapStyleNotifier.value = MapStyle.dark;
                      }
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
              RestrictionIndicator(
                clickedRestriction: _clickedRestriction,
              ),
              const UASList(),
            ],
          ),
        ),
      );
}
