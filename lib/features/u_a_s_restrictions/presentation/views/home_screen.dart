import 'package:flutter/material.dart'
    show
        AlignmentDirectional,
        BuildContext,
        Scaffold,
        Stack,
        State,
        StatefulWidget,
        ValueNotifier,
        Widget;
import 'package:flutter_bloc/flutter_bloc.dart'
    show BlocListener, MultiBlocListener, ReadContext;
import 'package:flutter_dotenv/flutter_dotenv.dart' show dotenv;
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart'
    show MapboxMap, MapboxOptions;
import 'package:sky_ways/core/resources/numbers/ui.dart' show zero;
import 'package:sky_ways/core/resources/strings/secret_keys.dart'
    show mapboxMapsPublicKey, mapboxMapsStyleUri;
import 'package:sky_ways/core/utils/enums/local.dart' show FileType;
import 'package:sky_ways/core/utils/extensions/file_entity_extensions.dart';
import 'package:sky_ways/core/utils/extensions/mapbox_map_extensions.dart';
import 'package:sky_ways/core/utils/typedefs/ui.dart'
    show
        PointAnnotationManagerPointAnnotationTuple,
        PolygonAnnotationManagerPolygonAnnotationTuple;
import 'package:sky_ways/features/file_manager/presentation/blocs/save_file_bloc/save_file_bloc.dart'
    show SaveFileBloc, SaveFileEvent, SaveFileState;
import 'package:sky_ways/features/file_manager/presentation/blocs/saved_file_bloc/saved_file_bloc.dart'
    show SavedFileBloc, SavedFileEvent, SavedFileState;
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
import 'package:sky_ways/features/u_a_s_restrictions/domain/entities/restriction_entity.dart'
    show RestrictionEntity;
import 'package:sky_ways/features/u_a_s_restrictions/presentation/blocs/geo_hash_bloc/geo_hash_bloc.dart'
    show GeoHashBloc, GeoHashEvent, GeoHashState;
import 'package:sky_ways/features/u_a_s_restrictions/presentation/blocs/u_a_s_restrictions_bloc/u_a_s_restrictions_bloc.dart'
    show UASRestrictionsBloc, UASRestrictionsEvent, UASRestrictionsState;
import 'package:sky_ways/features/u_a_s_restrictions/presentation/widgets/bottom_bar.dart';
import 'package:sky_ways/features/u_a_s_restrictions/presentation/widgets/map_view.dart';
import 'package:sky_ways/features/u_a_s_restrictions/presentation/widgets/restriction_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final MapboxMap? _mapboxMap;
  late final ValueNotifier<int> _selectedBottomNavigationBarItemIndex;
  List<PolygonAnnotationManagerPolygonAnnotationTuple>? _polygons;
  PointAnnotationManagerPointAnnotationTuple? _marker;
  late final ValueNotifier<RestrictionEntity?> _clickedRestriction;

  @override
  void initState() {
    MapboxOptions.setAccessToken(
      dotenv.env[mapboxMapsPublicKey]!,
    );
    _selectedBottomNavigationBarItemIndex = ValueNotifier<int>(
      zero,
    );
    _clickedRestriction = ValueNotifier<RestrictionEntity?>(
      null,
    );
    _requestLocationPermission();

    super.initState();
  }

  void _requestLocationPermission() =>
      context.read<LocationPermissionBloc>().add(
            const LocationPermissionEvent.requestPermission(),
          );

  @override
  void deactivate() {
    _stopListeningLocationPosition();
    _stopListeningLocationServiceStatus();

    super.deactivate();
  }

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
    _selectedBottomNavigationBarItemIndex.dispose();
    _clickedRestriction.dispose();

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
                  context.read<LocationPositionBloc>().add(
                        switch (locationServiceStatusEntity.enabled) {
                          true => const LocationPositionEvent
                              .listenLocationPosition(),
                          false => const LocationPositionEvent
                              .stopListeningLocationPosition(),
                        },
                      );
                },
              );
            },
          ),
          BlocListener<LocationPositionBloc, LocationPositionState>(
            listener: (_, locationPositionState) {
              locationPositionState.whenOrNull(
                gotLocationPosition: (locationPositionEntity) =>
                    _mapboxMap?.followUser(
                  latitude: locationPositionEntity.latitude,
                  longitude: locationPositionEntity.longitude,
                ),
              );
            },
          ),
          BlocListener<UASRestrictionsBloc, UASRestrictionsState>(
            listener: (_, uASRestrictionsState) {
              uASRestrictionsState.whenOrNull(
                gotRestrictions: (restrictionEntities) async {
                  context.read<GeoHashBloc>().state.whenOrNull(
                    computedGeoHash: (geoHash) {
                      context.read<SaveFileBloc>().add(
                            SaveFileEvent.saveToFile(
                              name: geoHash,
                              content: restrictionEntities,
                              type: FileType.jsonList,
                            ),
                          );
                    },
                  );
                },
              );
            },
          ),
          BlocListener<SaveFileBloc, SaveFileState>(
            listener: (_, saveFileState) {
              saveFileState.whenOrNull(
                saved: (name, type) {
                  context.read<SavedFileBloc>().add(
                        SavedFileEvent.getSavedFile(
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
                  context.read<SavedFileBloc>().add(
                        SavedFileEvent.getSavedFile(
                          name: geoHash,
                          type: FileType.jsonList,
                        ),
                      );
                },
              );
            },
          ),
          BlocListener<SavedFileBloc, SavedFileState>(
            listener: (_, savedFileState) {
              savedFileState.maybeWhen(
                fileExists: (fileEntity) async {
                  await _mapboxMap?.removeAllPolygons(
                    _polygons,
                  );

                  RestrictionEntity? iosMultiplePolygonClickIssueWorkAround;

                  await _mapboxMap
                      ?.drawRestrictionsPolygonsConsidering(
                        restrictionEntities: fileEntity.restrictionEntities,
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

                          print('on polygon click called');

                          // iosMultiplePolygonClickIssueWorkAround =
                          //     clickedRestrictionEntity;
                          // await _mapboxMap.removePreviousMarker(
                          //   _marker,
                          // );
                          //
                          // await _mapboxMap
                          //     .addMarkerWithTextOnTopRestrictionPolygonUsing(
                          //       polygonAnnotation: polygonAnnotation,
                          //       clickedRestrictionEntity:
                          //           clickedRestrictionEntity,
                          //     )
                          //     .then(
                          //       (marker) => _marker = marker,
                          //     );
                        },
                      )
                      .then(
                        (polygons) => _polygons = polygons,
                      );
                },
                fileNotExist: () {
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
                orElse: () {},
              );
            },
          ),
        ],
        child: Scaffold(
          body: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              MapView(
                mapStyleUri: dotenv.env[mapboxMapsStyleUri]!,
                onTap: (_) => _clickedRestriction.value = null,
                onCreated: (mapboxMap) => _mapboxMap = mapboxMap,
                onCameraChanged: (_) {
                  context.read<LocationPositionBloc>().state.whenOrNull(
                    gotLocationPosition: (
                      locationPositionEntity,
                    ) {
                      context.read<GeoHashBloc>().add(
                            GeoHashEvent.computeGeoHash(
                              latitude: locationPositionEntity.latitude,
                              longitude: locationPositionEntity.longitude,
                            ),
                          );
                    },
                  );
                },
              ),
              RestrictionIndicator(
                clickedRestriction: _clickedRestriction,
              ),
            ],
          ),
          bottomNavigationBar: BottomBar(
            selectedBottomNavigationBarItemIndex:
                _selectedBottomNavigationBarItemIndex,
          ),
        ),
      );
}
