import 'dart:math' show pi;

import 'package:dartz/dartz.dart' show Function1, Function2;
import 'package:flutter/services.dart' show rootBundle;
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
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart' show rawHex2A60C4;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        fiftyDotNil,
        fourteenDotNil,
        nilDotNil,
        one,
        oneEighty,
        oneThousand,
        threeDotNil,
        zero;
import 'package:sky_trade/core/utils/extensions/restriction_entity_extensions.dart';
import 'package:sky_trade/core/utils/typedefs/ui.dart'
    show
        PointAnnotationManagerPointAnnotationTuple,
        PolygonAnnotationManagerPolygonAnnotationTuple;
import 'package:sky_trade/features/remote_i_d_receiver/domain/entities/remote_i_d_entity.dart'
    show RemoteIDEntity;
import 'package:sky_trade/features/u_a_s_activity/domain/entities/u_a_s_entity.dart'
    show UASEntity;
import 'package:sky_trade/features/u_a_s_restrictions/domain/entities/restriction_entity.dart'
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

  Future<void> removePreviousMarkers(
    List<PointAnnotationManagerPointAnnotationTuple>? markers,
  ) async {
    if (markers == null || markers.isEmpty) return;

    for (final marker in markers) {
      await marker.pointAnnotationManager.deleteAll();
    }
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

  Future<List<PointAnnotationManagerPointAnnotationTuple>>
      showUASActivitiesOnMapUsing({
    List<UASEntity>? uASEntities,
    Set<RemoteIDEntity>? remoteIDEntities,
  }) async {
    final pointAnnotationManagerPointAnnotationTuples =
        List<PointAnnotationManagerPointAnnotationTuple>.empty(
      growable: true,
    );

    if (uASEntities == null && remoteIDEntities == null) {
      return pointAnnotationManagerPointAnnotationTuples;
    }

    for (var index = zero;
        index < (uASEntities?.length ?? remoteIDEntities?.length ?? zero);
        index++) {
      final pointAnnotationManager =
          await annotations.createPointAnnotationManager();

      final pointAnnotation = await pointAnnotationManager.create(
        PointAnnotationOptions(
          geometry: Point(
            coordinates: Position(
              uASEntities?[index].remoteData.location?.location?.longitude ??
                  uASEntities?[index].remoteData.location?.longitude ??
                  remoteIDEntities
                      ?.elementAt(
                        index,
                      )
                      .location
                      ?.location
                      ?.longitude ??
                  remoteIDEntities
                      ?.elementAt(
                        index,
                      )
                      .location
                      ?.longitude ??
                  nilDotNil,
              uASEntities?[index].remoteData.location?.location?.latitude ??
                  uASEntities?[index].remoteData.location?.latitude ??
                  remoteIDEntities
                      ?.elementAt(
                        index,
                      )
                      .location
                      ?.location
                      ?.latitude ??
                  remoteIDEntities
                      ?.elementAt(
                        index,
                      )
                      .location
                      ?.latitude ??
                  nilDotNil,
            ),
          ),
          image: await rootBundle
              .load(
                Assets.pngs.iconDrone.path,
              )
              .then(
                (
                  byteData,
                ) =>
                    byteData.buffer.asUint8List(),
              ),
          iconRotate: (uASEntities?[index].remoteData.location?.direction ??
                  remoteIDEntities
                      ?.elementAt(
                        index,
                      )
                      .location
                      ?.direction ??
                  nilDotNil) *
              (pi / oneEighty),
        ),
      );

      pointAnnotationManagerPointAnnotationTuples.add(
        (
          pointAnnotationManager: pointAnnotationManager,
          pointAnnotation: pointAnnotation,
        ),
      );
    }

    return pointAnnotationManagerPointAnnotationTuples;
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
