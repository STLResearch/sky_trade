import 'dart:math' as math;

import 'package:flutter/material.dart'
    show
        AlignmentDirectional,
        BuildContext,
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
import 'package:sky_ways/core/resources/strings/secret_keys.dart'
    show
        mapboxMapsDarkStyleUri,
        mapboxMapsPublicKey,
        mapboxMapsSatelliteStyleUri;
import 'package:sky_ways/core/utils/enums/local.dart' show CacheType;
import 'package:sky_ways/core/utils/enums/ui.dart' show MapStyle;
import 'package:sky_ways/core/utils/extensions/cache_entity_extensions.dart';
import 'package:sky_ways/core/utils/extensions/mapbox_map_extensions.dart';
import 'package:sky_ways/core/utils/typedefs/ui.dart'
    show PointAnnotationManagerPointAnnotationTuple;
import 'package:sky_ways/features/cache_manager/presentation/blocs/cache_data_bloc/cache_data_bloc.dart'
    show CacheDataBloc, CacheDataEvent, CacheDataState;
import 'package:sky_ways/features/cache_manager/presentation/blocs/cached_data_bloc/cached_data_bloc.dart'
    show CachedDataBloc, CachedDataEvent, CachedDataState;
import 'package:sky_ways/features/geo_hash/presentation/blocs/geo_hash_bloc/geo_hash_bloc.dart'
    show GeoHashBloc, GeoHashEvent, GeoHashState;
import 'package:sky_ways/features/location/presentation/blocs/location_permission_bloc/location_permission_bloc.dart'
    show
        LocationPermissionBloc,
        LocationPermissionEvent,
        LocationPermissionState;
import 'package:sky_ways/features/location/presentation/blocs/location_position_bloc/location_position_bloc.dart'
    show LocationPositionBloc, LocationPositionEvent, LocationPositionState;
import 'package:sky_ways/features/location/presentation/blocs/location_service_status_bloc/location_service_status_bloc.dart'
    show
        LocationServiceStatusBloc,
        LocationServiceStatusEvent,
        LocationServiceStatusState;
import 'package:sky_ways/features/u_a_s_activity/presentation/blocs/u_a_s_activity_bloc/u_a_s_activity_bloc.dart'
    show UASActivityBloc, UASActivityEvent, UASActivityState;
import 'package:sky_ways/features/u_a_s_restrictions/domain/entities/restriction_entity.dart'
    show RestrictionEntity;
import 'package:sky_ways/features/u_a_s_restrictions/presentation/blocs/u_a_s_restrictions_bloc/u_a_s_restrictions_bloc.dart'
    show UASRestrictionsBloc, UASRestrictionsEvent, UASRestrictionsState;
import 'package:sky_ways/features/u_a_s_restrictions/presentation/widgets/map_overlay.dart';
import 'package:sky_ways/features/u_a_s_restrictions/presentation/widgets/map_view.dart';
import 'package:sky_ways/features/u_a_s_restrictions/presentation/widgets/restriction_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  MapboxMap? _mapboxMap;
  PointAnnotationManagerPointAnnotationTuple? _marker;
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

    _listenUASActivities();

    _requestLocationPermission();

    super.initState();
  }

  void _listenUASActivities() => context.read<UASActivityBloc>().add(
        const UASActivityEvent.listenUASActivities(),
      );

  void _requestLocationPermission() =>
      context.read<LocationPermissionBloc>().add(
            const LocationPermissionEvent.requestPermission(),
          );

  @override
  void deactivate() {
    _stopListeningUASActivities();
    _stopListeningLocationPosition();
    _stopListeningLocationServiceStatus();

    super.deactivate();
  }

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
          BlocListener<LocationPermissionBloc, LocationPermissionState>(
            listener: (_, locationPermissionState) {
              locationPermissionState.whenOrNull(
                maybeGrantedPermission: (locationPermissionEntity) {
                  if (locationPermissionEntity.granted) {
                    context.read<LocationServiceStatusBloc>().add(
                          const LocationServiceStatusEvent
                              .listenLocationServiceStatus(),
                        );
                  }
                },
              );
            },
          ),
          BlocListener<LocationServiceStatusBloc, LocationServiceStatusState>(
            listener: (_, locationServiceStatusState) {
              locationServiceStatusState.whenOrNull(
                gotLocationServiceStatus: (locationServiceStatusEntity) {
                  late final LocationPositionEvent locationPositionEvent;

                  if (locationServiceStatusEntity.enabled) {
                    locationPositionEvent =
                        const LocationPositionEvent.listenLocationPosition();

                    _centerLocationNotifier.value = true;
                  } else {
                    locationPositionEvent = const LocationPositionEvent
                        .stopListeningLocationPosition();

                    _centerLocationNotifier.value = false;
                  }

                  context.read<LocationPositionBloc>().add(
                        locationPositionEvent,
                      );
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
                  if (uASEntities.isEmpty) {
                    // Handle the case when uASEntities is empty
                    print('No UAS entities available');
                    return;
                  }
                  // Remove all previous markers if any
                  await _mapboxMap?.removePreviousMarker(_marker);

                  // Extract the direction from the first UASEntity
                  final direction =
                      uASEntities.first.remoteData.location.direction;

                  // Convert direction to radians for rotation
                  final rotationAngle = direction * (math.pi / 180);

                  // Add a new marker with drone icon
                  final marker = await _mapboxMap?.addMarkerWithDroneIcon(
                    latitude: uASEntities.first.remoteData.location.latitude,
                    longitude: uASEntities.first.remoteData.location.longitude,
                    rotationAngle: rotationAngle,
                    imagePath: 'assets/images/icon_drone.png',
                  );
                  _marker = marker;
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
              RestrictionIndicator(
                clickedRestriction: _clickedRestriction,
              ),
              ValueListenableBuilder<bool>(
                valueListenable: _centerLocationNotifier,
                builder: (_, centerLocationNotifierValue, __) =>
                    ValueListenableBuilder<MapStyle>(
                  valueListenable: _mapStyleNotifier,
                  builder: (_, mapStyleNotifierValue, __) => MapOverlay(
                    myLocationFollowed: centerLocationNotifierValue,
                    mapStyle: mapStyleNotifierValue,
                    onMyLocationIconTap: () {
                      context.read<LocationPermissionBloc>().state.whenOrNull(
                        maybeGrantedPermission: (locationPermissionEntity) {
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
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
