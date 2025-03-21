import 'dart:convert' show json;
import 'dart:ui' show instantiateImageCodec;
import 'package:flutter/services.dart' show Color, rootBundle;
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart'
    show
        CameraOptions,
        Feature,
        FeatureCollection,
        FillLayer,
        GeoJsonSource,
        GeometryObject,
        LocationComponentSettings,
        LocationPuck,
        LocationPuck2D,
        MapAnimationOptions,
        MapboxMap,
        MbxImage,
        Point,
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
        fourDotNil,
        fourteenDotNil,
        nilDotThree,
        oneDotFive,
        oneDotNil,
        oneThousand,
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
        layerId,
        multiPolygonValue,
        nridDronesLayerId,
        nridDronesSourceId,
        pointValue,
        restrictionColorKey,
        restrictionOutlineColorKey,
        sourceId,
        typeKey;
import 'package:sky_trade/core/utils/extensions/restriction_entity_extensions.dart';
import 'package:sky_trade/features/remote_i_d_receiver/domain/entities/remote_i_d_entity.dart'
    show RemoteIDEntity;
import 'package:sky_trade/features/u_a_s_restrictions/domain/entities/restriction_entity.dart'
    show RestrictionEntity;

extension MapboxMapExtensions on MapboxMap {
  // Future<PointAnnotationManagerPointAnnotationTuple>
  //     addMarkerWithTextOnTopRestrictionPolygonUsing({
  //   required PolygonAnnotation polygonAnnotation,
  //   required RestrictionEntity clickedRestrictionEntity,
  // }) async {
  //   final pointAnnotationManager =
  //       await annotations.createPointAnnotationManager();
  //
  //   final geoDartPolygon = geo_dart.Polygon(
  //     polygonAnnotation.geometry.coordinates
  //         .map(
  //           (vertex) => geo_dart.LinearRing(
  //             vertex
  //                 .map(
  //                   (position) => geo_dart.Coordinate(
  //                     position.lat.toDouble(),
  //                     position.lng.toDouble(),
  //                   ),
  //                 )
  //                 .toList(),
  //           ),
  //         )
  //         .toList(),
  //   );
  //
  //   final pointAnnotation = await pointAnnotationManager.create(
  //     PointAnnotationOptions(
  //       geometry: Point(
  //         coordinates: Position(
  //           geoDartPolygon.center.lng,
  //           geoDartPolygon.center.lat,
  //         ),
  //       ),
  //       image: await clickedRestrictionEntity.polygonMarkerImage,
  //       iconSize: threeDotNil,
  //     ),
  //   );
  //
  //   return (
  //     pointAnnotationManager: pointAnnotationManager,
  //     pointAnnotation: pointAnnotation,
  //   );
  // }

  Future<void> followUser({
    required double latitude,
    required double longitude,
  }) async {
    await flyTo(
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

  Future<void> animateTo({
    required double latitude,
    required double longitude,
  }) =>
      flyTo(
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

  Future<void> addRestrictionsOnMap({
    required String geoHash,
    required List<RestrictionEntity> restrictionEntities,
  }) async {
    final geoJsonData = _getGeoJsonData<RestrictionEntity>(
      entities: restrictionEntities,
    );

    if (geoJsonData == null) {
      return;
    }

    final geoJsonDataString = json.encode(
      geoJsonData.toJson(),
    );

    await style.addSource(
      GeoJsonSource(
        id: geoHash + sourceId,
        data: geoJsonDataString,
      ),
    );
    await style.addLayer(
      FillLayer(
        id: geoHash + layerId,
        sourceId: geoHash + sourceId,
        fillColorExpression: [
          getKey,
          restrictionColorKey,
        ],
        fillOutlineColorExpression: [
          getKey,
          restrictionOutlineColorKey,
        ],
        minZoom: fourDotNil,
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
    final geoJsonData = _getGeoJsonData<RemoteIDEntity>(
      entities: remoteIDEntities,
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

  FeatureCollection? _getGeoJsonData<T>({
    required List<T> entities,
  }) {
    final geoJsonFeatures = entities
        .map(
          (entity) {
            switch (T) {
              case RemoteIDEntity:
                final remoteIDEntity = entity as RemoteIDEntity;
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

              case RestrictionEntity:
                final restrictionEntity = entity as RestrictionEntity;
                final restrictionColor = _getRGBAColorString(
                  color: restrictionEntity.polygonColor,
                  alpha: nilDotThree,
                );
                final restrictionOutlineColor = _getRGBAColorString(
                  color: restrictionEntity.polygonColor,
                  alpha: oneDotNil,
                );
                return Feature(
                  id: restrictionEntity.id,
                  properties: {
                    restrictionColorKey: restrictionColor,
                    restrictionOutlineColorKey: restrictionOutlineColor,
                  },
                  geometry: GeometryObject.deserialize(
                    {
                      typeKey: multiPolygonValue,
                      coordinatesKey: [
                        [
                          restrictionEntity.region.coordinates[0]
                              .map(
                                (ele) => List.generate(2, (i) => ele[i]),
                              )
                              .toList(),
                        ],
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

  String _getRGBAColorString({
    required Color color,
    required double alpha,
  }) =>
      'rgba(${color.red},${color.green},${color.blue},$alpha)';

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
