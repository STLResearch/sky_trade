import 'package:dartz/dartz.dart' show Function1, Function2;
import 'package:flutter/services.dart' show Uint8List, rootBundle;
import 'package:geodart/geometries.dart' as geo_dart
    show Coordinate, LinearRing, Polygon;
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart'
    show
        CameraOptions,
        LocationComponentSettings,
        LocationPuck,
        LocationPuck2D,
        MapAnimationOptions,
        MapboxMap,
        OnPolygonAnnotationClickListener,
        Point,
        PointAnnotationOptions,
        Polygon,
        PolygonAnnotation,
        PolygonAnnotationManager,
        PolygonAnnotationOptions,
        Position;
import 'package:sky_ways/core/resources/colors.dart' show rawHex2A60C4;
import 'package:sky_ways/core/resources/numbers/ui.dart'
    show fiftyDotNil, fourteenDotNil, one, oneThousand, threeDotNil, zero;
import 'package:sky_ways/core/resources/strings/asset_paths.dart'
    show locationPuckAssetPath, locationPuckShadowAssetPath;
import 'package:sky_ways/core/utils/extensions/restriction_entity_extensions.dart';
import 'package:sky_ways/core/utils/typedefs/ui.dart'
    show
        PointAnnotationManagerPointAnnotationTuple,
        PolygonAnnotationManagerPolygonAnnotationTuple;
import 'package:sky_ways/features/u_a_s_restrictions/domain/entities/restriction_entity.dart'
    show RestrictionEntity;

extension MapboxMapExtensions on MapboxMap {
  Future<void> removeAllPolygons(
    List<PolygonAnnotationManagerPolygonAnnotationTuple>? polygons,
  ) async {
    if (polygons == null) return;

    for (final polygonAnnotationManagerPolygonAnnotationTuple in polygons) {
      await polygonAnnotationManagerPolygonAnnotationTuple
          .polygonAnnotationManager
          .deleteAll();
    }
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

    for (final restrictionEntity in restrictionEntities) {
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
    }

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
      locationPuckAssetPath,
    );

    final locationPuckShadowByteData = await rootBundle.load(
      locationPuckShadowAssetPath,
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

  Future<PointAnnotationManagerPointAnnotationTuple> addMarkerWithDroneIcon({
    required double latitude,
    required double longitude,
    required String imagePath,
    double rotationAngle = 0,
  }) async {
    final pointAnnotationManager =
        await annotations.createPointAnnotationManager();

    final pointAnnotation = await pointAnnotationManager.create(
      PointAnnotationOptions(
        geometry: Point(
          coordinates: Position(longitude, latitude),
        ),
        image: await _loadImageFromAssets(imagePath),
        iconRotate: rotationAngle, // Use iconRotate instead of rotation
      ),
    );

    return (
      pointAnnotationManager: pointAnnotationManager,
      pointAnnotation: pointAnnotation,
    );
  }

  Future<Uint8List> _loadImageFromAssets(String imagePath) async {
    final byteData = await rootBundle.load(imagePath);
    return byteData.buffer.asUint8List();
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
