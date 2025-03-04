import 'dart:convert' show json;
import 'dart:ui' show instantiateImageCodec;
import 'package:dartz/dartz.dart' show Function1, Function2;
import 'package:flutter/services.dart' show rootBundle;
import 'package:geodart/geometries.dart' as geo_dart
    show Coordinate, LinearRing, Polygon;
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart'
    show
        CameraOptions,
        Feature,
        FeatureCollection,
        GeoJsonSource,
        GeometryObject,
        LocationComponentSettings,
        LocationPuck,
        LocationPuck2D,
        MapAnimationOptions,
        MapboxMap,
        MbxImage,
        OnPolygonAnnotationClickListener,
        Point,
        PointAnnotationOptions,
        Polygon,
        PolygonAnnotation,
        PolygonAnnotationManager,
        PolygonAnnotationOptions,
        Position,
        StyleLayer,
        StyleSource,
        SymbolLayer;
import 'package:sky_trade/core/assets/generated/assets.gen.dart'
    show AssetGenImage, Assets;
import 'package:sky_trade/core/resources/colors.dart' show rawHex2A60C4;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        fiftyDotNil,
        fourteenDotNil,
        one,
        oneDotFive,
        oneThousand,
        threeDotNil,
        zero;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show emptyString;
import 'package:sky_trade/core/resources/strings/ui.dart'
    show
        bridDronesLayerId,
        bridDronesSourceId,
        coordinatesKey,
        directionKey,
        getKey,
        iconDroneValue,
        nridDronesLayerId,
        nridDronesSourceId,
        pointValue,
        typeKey;
import 'package:sky_trade/core/utils/extensions/restriction_entity_extensions.dart';
import 'package:sky_trade/core/utils/typedefs/ui.dart'
    show
        PointAnnotationManagerPointAnnotationTuple,
        PolygonAnnotationManagerPolygonAnnotationTuple;
import 'package:sky_trade/features/remote_i_d_receiver/domain/entities/remote_i_d_entity.dart'
    show RemoteIDEntity;
import 'package:sky_trade/features/u_a_s_restrictions/domain/entities/restriction_entity.dart'
    show RestrictionEntity;

extension MapboxMapExtensions on MapboxMap {
  Future<void> removeAllPolygons(
    List<PolygonAnnotationManagerPolygonAnnotationTuple>? polygons,
  ) async {
    if (polygons == null || polygons.isEmpty) return;

    await Future.forEach(
      polygons,
      (polygon) => polygon.polygonAnnotationManager.deleteAll(),
    );
  }

  Future<List<PolygonAnnotationManagerPolygonAnnotationTuple>>
      drawRestrictionsPolygonsConsidering({
    required List<RestrictionEntity> restrictionEntities,
    required Function2<PolygonAnnotation, RestrictionEntity, void>
        onPolygonClick,
  }) async {
    final polygons = List<PolygonAnnotationManagerPolygonAnnotationTuple>.empty(
      growable: true,
    );

    await Future.forEach(
      restrictionEntities,
      (restrictionEntity) async {
        final polygonAnnotationManager =
            await annotations.createPolygonAnnotationManager();

        final polygonAnnotation = await polygonAnnotationManager.create(
          PolygonAnnotationOptions(
            geometry: Polygon(
              coordinates: restrictionEntity.region.coordinates
                  .map(
                    (vertex) => vertex
                        .map(
                          (positions) => Position(
                            positions[zero],
                            positions[one],
                          ),
                        )
                        .toList(),
                  )
                  .toList(),
            ),
            fillColor: restrictionEntity.polygonFillColor,
            fillOutlineColor: restrictionEntity.polygonFillOutlineColor,
          ),
        );

        _setPolygonClickListener(
          polygonAnnotationManager: polygonAnnotationManager,
          onClick: (polygonAnnotation) => onPolygonClick(
            polygonAnnotation,
            restrictionEntity,
          ),
        );

        polygons.add(
          (
            polygonAnnotationManager: polygonAnnotationManager,
            polygonAnnotation: polygonAnnotation,
          ),
        );
      },
    );

    return polygons;
  }

  void _setPolygonClickListener({
    required PolygonAnnotationManager polygonAnnotationManager,
    required Function1<PolygonAnnotation, void> onClick,
  }) {
    polygonAnnotationManager.addOnPolygonAnnotationClickListener(
      _AnnotationClickListener(
        onClick,
      ),
    );
  }

  Future<PointAnnotationManagerPointAnnotationTuple>
      addMarkerWithTextOnTopRestrictionPolygonUsing({
    required PolygonAnnotation polygonAnnotation,
    required RestrictionEntity clickedRestrictionEntity,
  }) async {
    final pointAnnotationManager =
        await annotations.createPointAnnotationManager();

    final geoDartPolygon = geo_dart.Polygon(
      polygonAnnotation.geometry.coordinates
          .map(
            (vertex) => geo_dart.LinearRing(
              vertex
                  .map(
                    (position) => geo_dart.Coordinate(
                      position.lat.toDouble(),
                      position.lng.toDouble(),
                    ),
                  )
                  .toList(),
            ),
          )
          .toList(),
    );

    final pointAnnotation = await pointAnnotationManager.create(
      PointAnnotationOptions(
        geometry: Point(
          coordinates: Position(
            geoDartPolygon.center.lng,
            geoDartPolygon.center.lat,
          ),
        ),
        image: await clickedRestrictionEntity.polygonMarkerImage,
        iconSize: threeDotNil,
      ),
    );

    return (
      pointAnnotationManager: pointAnnotationManager,
      pointAnnotation: pointAnnotation,
    );
  }

  Future<void> removePreviousMarker(
    PointAnnotationManagerPointAnnotationTuple? marker,
  ) async {
    if (marker == null) return;

    await marker.pointAnnotationManager.deleteAll();
  }

  Future<void> followUser({
    required double latitude,
    required double longitude,
  }) async {
    await easeTo(
      CameraOptions(
        center: Point(
          coordinates: Position(
            longitude,
            latitude,
          ),
        ),
        zoom: fourteenDotNil,
      ),
      MapAnimationOptions(
        duration: oneThousand,
      ),
    );

    final locationPuckByteData = await rootBundle.load(
      Assets.pngs.locationPuck.path,
    );

    final locationPuckShadowByteData = await rootBundle.load(
      Assets.pngs.locationPuckShadow.path,
    );

    await location.updateSettings(
      LocationComponentSettings(
        enabled: true,
        pulsingEnabled: true,
        pulsingColor: rawHex2A60C4,
        pulsingMaxRadius: fiftyDotNil,
        puckBearingEnabled: true,
        locationPuck: LocationPuck(
          locationPuck2D: LocationPuck2D(
            topImage: locationPuckByteData.buffer.asUint8List(),
            shadowImage: locationPuckShadowByteData.buffer.asUint8List(),
          ),
        ),
      ),
    );
  }

  Future<void> setUpLayersForDrones({
    required String bridGeoJsonData,
    required String nridGeoJsonData,
  }) async {
    final droneStyleImage = await _addStyleImageUsing(
      styleImageName: iconDroneValue,
      imageAsset: Assets.pngs.iconDrone,
    );

    await style.addSource(
      GeoJsonSource(
        id: bridDronesSourceId,
        data: bridGeoJsonData,
      ),
    );
    await style.addSource(
      GeoJsonSource(
        id: nridDronesSourceId,
        data: nridGeoJsonData,
      ),
    );
    await style.addLayer(
      SymbolLayer(
        id: bridDronesLayerId,
        sourceId: bridDronesSourceId,
        iconImage: droneStyleImage,
        iconRotateExpression: [
          getKey,
          directionKey,
        ],
      ),
    );
    await style.addLayer(
      SymbolLayer(
        id: nridDronesLayerId,
        sourceId: nridDronesSourceId,
        iconImage: droneStyleImage,
        iconRotateExpression: [
          getKey,
          directionKey,
        ],
      ),
    );
  }

  Future<String> addOrUpdateDronesOnMap({
    required List<RemoteIDEntity> remoteIDEntities,
    required String geoJsonSourceId,
  }) async {
    final geoJsonData = _getGeoJsonData(
      remoteIDEntities,
    );

    if (geoJsonData == null) {
      return emptyString;
    }

    final geoJsonSource = await style.getSource(
      geoJsonSourceId,
    );
    final geoJsonDataString = json.encode(
      geoJsonData.toJson(),
    );

    if (geoJsonSource is GeoJsonSource) {
      await geoJsonSource.updateGeoJSON(
        geoJsonDataString,
      );
      return geoJsonDataString;
    }
    return emptyString;
  }

  FeatureCollection? _getGeoJsonData(
    List<RemoteIDEntity> remoteIDEntities,
  ) {
    final geoJsonFeatures = remoteIDEntities
        .map(
          (remoteIDEntity) {
            if (remoteIDEntity.location != null &&
                remoteIDEntity.location!.location != null) {
              return Feature(
                id: remoteIDEntity.connection.macAddress,
                properties: {
                  directionKey: remoteIDEntity.location?.direction ?? zero,
                },
                geometry: GeometryObject.deserialize(
                  {
                    typeKey: pointValue,
                    coordinatesKey: [
                      remoteIDEntity.location!.longitude,
                      remoteIDEntity.location!.latitude,
                    ],
                  },
                ),
              );
            }
          },
        )
        .whereType<Feature>()
        .toList();

    if (geoJsonFeatures.isEmpty) return null;

    return FeatureCollection(
      features: geoJsonFeatures,
    );
  }

  Future<String> _addStyleImageUsing({
    required String styleImageName,
    required AssetGenImage imageAsset,
  }) async {
    final imageByteData = await rootBundle.load(
      imageAsset.path,
    );
    final imageBytes = imageByteData.buffer.asUint8List();
    final codec = await instantiateImageCodec(
      imageBytes,
    );
    final frame = await codec.getNextFrame();
    final image = frame.image;

    await style.addStyleImage(
      styleImageName,
      oneDotFive,
      MbxImage(
        width: image.width,
        height: image.height,
        data: imageBytes,
      ),
      false,
      [],
      [],
      null,
    );

    return styleImageName;
  }
}

final class _AnnotationClickListener extends OnPolygonAnnotationClickListener {
  _AnnotationClickListener(
    Function1<PolygonAnnotation, void> onAnnotationClick,
  ) : _onAnnotationClick = onAnnotationClick;

  final Function1<PolygonAnnotation, void> _onAnnotationClick;

  @override
  void onPolygonAnnotationClick(PolygonAnnotation annotation) =>
      _onAnnotationClick(
        annotation,
      );
}
