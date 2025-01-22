import 'dart:convert' show json;

import 'package:dartz/dartz.dart' show Function1, Function2;
import 'package:flutter/services.dart' show rootBundle;
import 'package:geodart/geometries.dart' as geo_dart
    show Coordinate, LinearRing, Polygon;
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart'
    show
        CameraOptions,
        GeoJsonSource,
        ImageContent,
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
        Source,
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
        nilDotNil,
        one,
        oneDotNil,
        oneThousand,
        threeDotNil,
        zero;
import 'package:sky_trade/core/resources/strings/ui.dart'
    show
        coordinatesKey,
        featureCollectionValue,
        featureValue,
        featuresKey,
        geometryKey,
        macAddressKey,
        nridDronesLayer,
        nridDronesSource,
        pointValue,
        propertiesKey,
        typeKey;
import 'package:sky_trade/core/resources/strings/ui.dart'
    show bridDronesLayer, bridDronesSource, iconDroneValue;
import 'package:sky_trade/core/utils/extensions/restriction_entity_extensions.dart';
import 'package:sky_trade/core/utils/typedefs/ui.dart'
    show
        PointAnnotationManagerPointAnnotationTuple,
        PolygonAnnotationManagerPolygonAnnotationTuple,
        SourceLayer;
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

  Future<void> showUASOnMapUsing({
    required List<RemoteIDEntity> remoteIDEntities,
    required SourceLayer sourceLayerId,
  }) async {
    if (remoteIDEntities.isEmpty) return;

    final remoteIDs = List<RemoteIDEntity>.from(
      remoteIDEntities,
    );

    final features = <Map<String, Object>>[];

    for (final remoteID in remoteIDs) {
      if (remoteID.location?.location?.longitude == null &&
          remoteID.location?.longitude == null) {
        continue;
      }

      final feature = {
        typeKey: featureValue,
        geometryKey: {
          typeKey: pointValue,
          coordinatesKey: [
            remoteID.location?.location?.longitude ??
                remoteID.location?.longitude,
            remoteID.location?.location?.latitude ??
                remoteID.location?.latitude,
          ],
        },
        propertiesKey: {
          macAddressKey: remoteID.connection.macAddress,
        },
      };

      features.add(
        feature,
      );
    }

    if (features.isEmpty) return;

    final featureCollection = {
      typeKey: featureCollectionValue,
      featuresKey: features,
    };

    final oldSource = await _getSourceUsing(
      sourceId: sourceLayerId.sourceId,
    );

    if (oldSource != null && oldSource is! GeoJsonSource) return;

    if (oldSource != null && oldSource is GeoJsonSource) {
      await oldSource.updateGeoJSON(
        json.encode(
          featureCollection,
        ),
      );

      return;
    }

    final newSource = GeoJsonSource(
      id: sourceLayerId.sourceId,
      data: json.encode(
        featureCollection,
      ),
    );

    // try {
    //   await style.removeStyleSource(
    //     bridDronesSource,
    //   );
    //
    //   await style.addSource(
    //     newSource,
    //   );
    // } catch (_) {
    //   await style.addSource(
    //     newSource,
    //   );
    // }

    await style.addSource(
      newSource,
    );

    final iconDroneImage = await _addStyleImageUsing(
      imageAsset: Assets.pngs.iconDrone,
    );

    final layer = SymbolLayer(
      id: sourceLayerId.layerId,
      sourceId: sourceLayerId.sourceId,
      iconImage: iconDroneImage,
    );

    await style.addLayer(
      layer,
    );
  }

  Future<void> reapplyClearedSymbolLayers() async {
    final sourceLayerIds = <SourceLayer>[
      (
        sourceId: bridDronesSource,
        layerId: bridDronesLayer,
      ),
      (
        sourceId: nridDronesSource,
        layerId: nridDronesLayer,
      ),
    ];

    for (final sourceLayerId in sourceLayerIds) {
      final source = await _getSourceUsing(
        sourceId: sourceLayerId.sourceId,
      );

      if (source == null) continue;

      await style.addSource(
        source,
      );

      final iconDroneImage = await _addStyleImageUsing(
        imageAsset: Assets.pngs.iconDrone,
      );

      final layer = SymbolLayer(
        id: sourceLayerId.layerId,
        sourceId: sourceLayerId.sourceId,
        iconImage: iconDroneImage,
      );

      await style.addLayer(
        layer,
      );
    }
  }

  Future<Source?> _getSourceUsing({
    required String sourceId,
  }) async {
    Source? source;

    try {
      source = await style.getSource(
        sourceId,
      );
    } catch (_) {}

    return source;
  }

  Future<String> _addStyleImageUsing({
    required AssetGenImage imageAsset,
  }) async {
    final imageByteData = await rootBundle.load(
      imageAsset.path,
    );

    final imageBytes = imageByteData.buffer.asUint8List();

    await style.addStyleImage(
      iconDroneValue,
      nilDotNil,
      MbxImage(
        width: imageAsset.size?.width.toInt() ?? zero,
        height: imageAsset.size?.height.toInt() ?? zero,
        data: imageBytes,
      ),
      false,
      [null],
      [null],
      ImageContent(
        left: nilDotNil,
        top: nilDotNil,
        right: oneDotNil,
        bottom: oneDotNil,
      ),
    );

    return iconDroneValue;
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
