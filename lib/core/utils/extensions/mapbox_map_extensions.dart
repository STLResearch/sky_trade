import 'dart:convert' show json;
import 'dart:ui' show instantiateImageCodec;

import 'package:dartz/dartz.dart' show Function4;
import 'package:flutter/material.dart' show Color;
import 'package:flutter/services.dart' show rootBundle;
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart'
    show
        CameraOptions,
        CoordinateBounds,
        Feature,
        FeatureCollection,
        FillLayer,
        GeoJsonSource,
        GeometryObject,
        LineCap,
        LineLayer,
        LocationComponentSettings,
        LocationPuck,
        LocationPuck2D,
        MapAnimationOptions,
        MapboxMap,
        MbxEdgeInsets,
        MbxImage,
        Point,
        Position,
        QueriedFeature,
        RenderedQueryGeometry,
        RenderedQueryOptions,
        ScreenCoordinate,
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
        nilDotThree,
        one,
        oneDotFive,
        oneDotNil,
        oneDotThree,
        oneThousand,
        oneThousandThreeHundred,
        sixDotNil,
        tenDotNil,
        twoDotNil,
        zero;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show closingParenthesis, comma, openingParenthesis;
import 'package:sky_trade/core/resources/strings/ui.dart'
    show
        booleanExpression,
        boundaryId,
        bridDronesLayerId,
        bridDronesSourceId,
        caseExpression,
        colorKey,
        coordinatesKey,
        delayKey,
        directionKey,
        droneRushZonesBoundaryLayerId,
        droneRushZonesBoundarySourceId,
        droneRushZonesLayerId,
        droneRushZonesSourceId,
        durationKey,
        endTimeKey,
        featureStateExpression,
        featureTypeKey,
        fillOpacityTransitionProperty,
        getExpression,
        iconDroneValue,
        idKey,
        isSelectedKey,
        layerId,
        lineStringGeometry,
        locationNameKey,
        northEastKey,
        nridDronesLayerId,
        nridDronesSourceId,
        pointGeometry,
        polygonGeometry,
        propertiesKey,
        rgba,
        sourceId,
        southWestKey,
        startTimeKey,
        typeKey;
import 'package:sky_trade/core/utils/enums/ui.dart';
import 'package:sky_trade/core/utils/extensions/drone_rush_zone_entity_extensions.dart';
import 'package:sky_trade/core/utils/extensions/restriction_entity_extensions.dart';
import 'package:sky_trade/core/utils/typedefs/ui.dart' show Bounds;
import 'package:sky_trade/features/remote_i_d_receiver/domain/entities/remote_i_d_entity.dart'
    show RemoteIDEntity;
import 'package:sky_trade/features/rewards/domain/entities/rewards_entity.dart'
    show DroneRushZoneEntity;
import 'package:sky_trade/features/u_a_s_restrictions/domain/entities/restriction_entity.dart'
    show RestrictionEntity;

extension MapboxMapExtensions on MapboxMap {
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
    final geoJsonDataForRestrictions = _getGeoJsonData<RestrictionEntity>(
      entities: restrictionEntities,
      featureGeometryType: polygonGeometry,
    );

    final geoJsonDataForRestrictionBoundaries =
        _getGeoJsonData<RestrictionEntity>(
      entities: restrictionEntities,
      featureGeometryType: lineStringGeometry,
    );

    if (geoJsonDataForRestrictions == null ||
        geoJsonDataForRestrictionBoundaries == null) {
      return;
    }

    await style.addSource(
      GeoJsonSource(
        id: geoHash + sourceId,
        data: geoJsonDataForRestrictions,
      ),
    );

    await style.addSource(
      GeoJsonSource(
        id: geoHash + boundaryId + sourceId,
        data: geoJsonDataForRestrictionBoundaries,
      ),
    );

    await style.addLayer(
      FillLayer(
        id: geoHash + layerId,
        sourceId: geoHash + sourceId,
        fillColorExpression: [
          getExpression,
          colorKey,
        ],
      ),
    );

    await style.addLayer(
      LineLayer(
        id: geoHash + boundaryId + layerId,
        sourceId: geoHash + boundaryId + sourceId,
        lineDasharray: [
          nilDotThree,
          twoDotNil,
        ],
        lineWidth: oneDotThree,
        lineCap: LineCap.ROUND,
        lineColorExpression: [
          getExpression,
          colorKey,
        ],
        lineOpacityExpression: [
          caseExpression,
          [
            booleanExpression,
            [
              featureStateExpression,
              isSelectedKey,
            ],
            false,
          ],
          one,
          zero,
        ],
      ),
    );

    await style.setStyleLayerProperty(
      geoHash + layerId,
      fillOpacityTransitionProperty,
      json.encode({
        durationKey: oneThousand,
        delayKey: zero,
      }),
    );
  }

  Future<void> setUpLayersForDrones() async {
    final droneStyleImage = await _addStyleImageUsing(
      styleImageName: iconDroneValue,
      imageAsset: Assets.pngs.iconDrone,
    );

    await style.addSource(
      GeoJsonSource(
        id: bridDronesSourceId,
      ),
    );

    await style.addSource(
      GeoJsonSource(
        id: nridDronesSourceId,
      ),
    );

    await style.addLayer(
      SymbolLayer(
        id: bridDronesLayerId,
        sourceId: bridDronesSourceId,
        iconImage: droneStyleImage,
        iconRotateExpression: [
          getExpression,
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
          getExpression,
          directionKey,
        ],
      ),
    );
  }

  Future<void> setUpLayersForDroneRushZones() async {
    await style.addSource(
      GeoJsonSource(
        id: droneRushZonesSourceId,
      ),
    );

    await style.addSource(
      GeoJsonSource(
        id: droneRushZonesBoundarySourceId,
      ),
    );

    await style.addLayer(
      FillLayer(
        id: droneRushZonesLayerId,
        sourceId: droneRushZonesSourceId,
        fillColorExpression: [
          getExpression,
          colorKey,
        ],
      ),
    );

    await style.addLayer(
      LineLayer(
        id: droneRushZonesBoundaryLayerId,
        sourceId: droneRushZonesBoundarySourceId,
        lineDasharray: [
          nilDotThree,
          twoDotNil,
        ],
        lineWidth: oneDotThree,
        lineCap: LineCap.ROUND,
        lineColorExpression: [
          getExpression,
          colorKey,
        ],
        lineOpacityExpression: [
          caseExpression,
          [
            booleanExpression,
            [
              featureStateExpression,
              isSelectedKey,
            ],
            false,
          ],
          one,
          zero,
        ],
      ),
    );
  }

  Future<void> updateDronesOnMap({
    required List<RemoteIDEntity> remoteIDEntities,
    required String geoJsonSourceId,
  }) async {
    final geoJsonData = _getGeoJsonData<RemoteIDEntity>(
      entities: remoteIDEntities,
      featureGeometryType: pointGeometry,
    );

    if (geoJsonData == null) {
      return;
    }

    final geoJsonSource = await style.getSource(
      geoJsonSourceId,
    );

    if (geoJsonSource is GeoJsonSource) {
      await geoJsonSource.updateGeoJSON(
        geoJsonData,
      );
    }
  }

  Future<void> updateDroneRushZonesOnMap({
    required List<DroneRushZoneEntity> droneRushZoneEntities,
  }) async {
    final geoJsonDataForRushZones = _getGeoJsonData<DroneRushZoneEntity>(
      entities: droneRushZoneEntities,
      featureGeometryType: polygonGeometry,
    );
    final geoJsonDataForRushZoneBorders = _getGeoJsonData<DroneRushZoneEntity>(
      entities: droneRushZoneEntities,
      featureGeometryType: lineStringGeometry,
    );

    if (geoJsonDataForRushZones == null ||
        geoJsonDataForRushZoneBorders == null) {
      return;
    }

    final geoJsonSourceForRushZones = await style.getSource(
      droneRushZonesSourceId,
    );
    final geoJsonSourceForRushZoneBorders = await style.getSource(
      droneRushZonesBoundarySourceId,
    );

    if (geoJsonSourceForRushZones is GeoJsonSource &&
        geoJsonSourceForRushZoneBorders is GeoJsonSource) {
      await geoJsonSourceForRushZones.updateGeoJSON(
        geoJsonDataForRushZones,
      );
      await geoJsonSourceForRushZoneBorders.updateGeoJSON(
        geoJsonDataForRushZoneBorders,
      );
    }
  }

  String? _getGeoJsonData<T>({
    required List<T> entities,
    required String featureGeometryType,
  }) {
    final geoJsonFeatures = entities
        .map(
          (entity) {
            switch (T) {
              case const (RemoteIDEntity):
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
                        typeKey: featureGeometryType,
                        coordinatesKey: [
                          remoteIDEntity.location?.longitude ??
                              remoteIDEntity.location?.location?.longitude,
                          remoteIDEntity.location?.latitude ??
                              remoteIDEntity.location?.location?.latitude,
                        ],
                      },
                    ),
                  );
                }

              case const (RestrictionEntity):
                final restrictionEntity = entity as RestrictionEntity;
                final alpha = switch (featureGeometryType == polygonGeometry) {
                  true => nilDotThree,
                  false => oneDotNil,
                };
                final geometryCoordinates =
                    restrictionEntity.geometry.coordinates;
                final bounds = _getBoundsFromCoordinates(
                  geometryCoordinates[zero],
                );
                final properties = <String, dynamic>{
                  featureTypeKey: FeatureType.uasRestriction.name,
                  colorKey: _getRGBAColorString(
                    color: restrictionEntity.polygonFillColor,
                    alpha: alpha,
                  ),
                };

                if (featureGeometryType == polygonGeometry) {
                  properties[northEastKey] = [
                    bounds.northEast.longitude,
                    bounds.northEast.latitude,
                  ];
                  properties[southWestKey] = [
                    bounds.southWest.longitude,
                    bounds.southWest.latitude,
                  ];
                }

                return Feature(
                  id: restrictionEntity.id,
                  properties: properties,
                  geometry: GeometryObject.deserialize(
                    {
                      typeKey: featureGeometryType,
                      coordinatesKey: switch (
                          featureGeometryType == polygonGeometry) {
                        true => geometryCoordinates,
                        false => geometryCoordinates[zero],
                      },
                    },
                  ),
                );

              case const (DroneRushZoneEntity):
                final droneRushZoneEntity = entity as DroneRushZoneEntity;
                final geometryCoordinates =
                    droneRushZoneEntity.generateCirclePolygon();
                final bounds = _getBoundsFromCoordinates(
                  geometryCoordinates[zero],
                );
                final alpha = switch (featureGeometryType == polygonGeometry) {
                  true => nilDotThree,
                  false => oneDotNil,
                };
                final properties = <String, dynamic>{
                  featureTypeKey: FeatureType.droneRush.name,
                  colorKey: _getRGBAColorString(
                    color: droneRushZoneEntity.circleFillColor,
                    alpha: alpha,
                  ),
                };

                if (featureGeometryType == polygonGeometry) {
                  properties[startTimeKey] =
                      droneRushZoneEntity.startTime.toIso8601String();
                  properties[endTimeKey] =
                      droneRushZoneEntity.endTime.toIso8601String();
                  properties[locationNameKey] =
                      droneRushZoneEntity.locationName;
                  properties[northEastKey] = [
                    bounds.northEast.longitude,
                    bounds.northEast.latitude,
                  ];
                  properties[southWestKey] = [
                    bounds.southWest.longitude,
                    bounds.southWest.latitude,
                  ];
                }

                return Feature(
                  id: droneRushZoneEntity.id,
                  properties: properties,
                  geometry: GeometryObject.deserialize(
                    {
                      typeKey: featureGeometryType,
                      coordinatesKey: switch (
                          featureGeometryType == polygonGeometry) {
                        true => geometryCoordinates,
                        false => geometryCoordinates[zero],
                      },
                    },
                  ),
                );
            }
          },
        )
        .whereType<Feature>()
        .toList();

    if (geoJsonFeatures.isEmpty) return null;

    final geoJsonData =  FeatureCollection(
      features: geoJsonFeatures,
    );

    return json.encode(
      geoJsonData.toJson(),
    );
  }

  String _getRGBAColorString({
    required Color color,
    required double alpha,
  }) =>
      rgba +
      openingParenthesis +
      ((color.r * 255.0).round() & 0xff).toString() +
      comma +
      ((color.g * 255.0).round() & 0xff).toString() +
      comma +
      ((color.b * 255.0).round() & 0xff).toString() +
      comma +
      alpha.toString() +
      closingParenthesis;

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

  Future<void> maybeHandleFeatureTap({
    required ScreenCoordinate touchPosition,
    required List<String> layerIds,
    required Function4<FeatureType, String?, String?, Map<String, dynamic>?,
            void>
        onFeatureTap,
  }) async {
    final queriedFeatures = await _getQueriedFeatures(
      screenCoordinate: touchPosition,
      layerIds: layerIds,
    );

    if (queriedFeatures.isEmpty) {
      return;
    }

    String? featureId;
    String? sourceId;
    Map<String, dynamic>? data;
    Map<dynamic, dynamic>? featurePropertiesMap;

    if (queriedFeatures.length == one) {
      featureId = queriedFeatures.first.feature[idKey]?.toString();
      sourceId = queriedFeatures.firstOrNull?.source;
      featurePropertiesMap =
          queriedFeatures.first.feature[propertiesKey] as Map?;
    } else if (queriedFeatures.length > one) {
      final feature = _getAppropriateFeatureFrom(
        queriedFeatures: queriedFeatures,
      );
      featureId = feature.feature[idKey]?.toString();
      sourceId = feature.source;
      featurePropertiesMap = feature.feature[propertiesKey] as Map?;
    }

    if (featurePropertiesMap != null) {
      final featureType = FeatureType.fromString(
        featurePropertiesMap[featureTypeKey] as String,
      );
      final northEast =
          (featurePropertiesMap[northEastKey]! as List).cast<num>();
      final southWest =
          (featurePropertiesMap[southWestKey]! as List).cast<num>();
      final coordinateBounds = CoordinateBounds(
        southwest: Point(
          coordinates: Position(
            southWest[zero],
            southWest[one],
          ),
        ),
        northeast: Point(
          coordinates: Position(
            northEast[zero],
            northEast[one],
          ),
        ),
        infiniteBounds: false,
      );
      final cameraOptions = await cameraForCoordinateBounds(
        coordinateBounds,
        MbxEdgeInsets(
          top: tenDotNil,
          left: tenDotNil,
          bottom: tenDotNil,
          right: tenDotNil,
        ),
        null,
        null,
        null,
        null,
      );
      data = switch (featureType) {
        FeatureType.uasRestriction => null,
        FeatureType.droneRush => <String, dynamic>{
            locationNameKey: featurePropertiesMap[locationNameKey] as String,
            startTimeKey: DateTime.parse(
              featurePropertiesMap[startTimeKey] as String,
            ),
            endTimeKey: DateTime.parse(
              featurePropertiesMap[endTimeKey] as String,
            ),
          },
      };

      if (cameraOptions.zoom! < sixDotNil) {
        cameraOptions.zoom = sixDotNil;
      } else {
        cameraOptions.zoom = cameraOptions.zoom! - oneDotNil;
      }

      await easeTo(
        cameraOptions,
        MapAnimationOptions(
          duration: oneThousandThreeHundred,
        ),
      );
      onFeatureTap(
        featureType,
        featureId,
        sourceId,
        data,
      );
    }
  }

  Future<List<QueriedFeature>> _getQueriedFeatures({
    required ScreenCoordinate screenCoordinate,
    required List<String> layerIds,
  }) async {
    final renderedFeatures = await queryRenderedFeatures(
      RenderedQueryGeometry.fromScreenCoordinate(
        screenCoordinate,
      ),
      RenderedQueryOptions(
        layerIds: layerIds,
      ),
    );

    return renderedFeatures
        .map(
          (queryRenderedFeature) => queryRenderedFeature?.queriedFeature,
        )
        .whereType<QueriedFeature>()
        .toList();
  }

  QueriedFeature _getAppropriateFeatureFrom({
    required List<QueriedFeature> queriedFeatures,
  }) {
    final selectedFeature = queriedFeatures
        .where(
          (queriedFeature) =>
              (json.decode(
                queriedFeature.state,
              ) as Map<String, dynamic>)[isSelectedKey] ==
              true,
        )
        .toList()
        .firstOrNull;

    if (selectedFeature == null) {
      return queriedFeatures.first;
    }

    final index = queriedFeatures.indexOf(
      selectedFeature,
    );

    final nextIndex = (index + one) % queriedFeatures.length;

    return queriedFeatures[nextIndex];
  }

  Future<void> selectAndUnselectFeature({
    required String? selectFeatureId,
    required String? selectFeatureSourceId,
    required String? unselectFeatureId,
    required String? unselectFeatureSourceId,
  }) async {
    if (selectFeatureId == unselectFeatureId) {
      return;
    }

    await _updateFeatureState(
      featureId: selectFeatureId,
      featureSourceId: selectFeatureSourceId,
      featureBoundarySourceId: _getFeatureBoundaryIdFrom(
        selectFeatureSourceId,
      ),
      isSelectedKeyValue: true,
    );

    await _updateFeatureState(
      featureId: unselectFeatureId,
      featureSourceId: unselectFeatureSourceId,
      featureBoundarySourceId: _getFeatureBoundaryIdFrom(
        unselectFeatureSourceId,
      ),
      isSelectedKeyValue: false,
    );
  }

  Future<void> _updateFeatureState({
    required String? featureId,
    required String? featureSourceId,
    required String? featureBoundarySourceId,
    required bool isSelectedKeyValue,
  }) async {
    if (featureId == null ||
        featureSourceId == null ||
        featureBoundarySourceId == null) {
      return;
    }

    await setFeatureState(
      featureBoundarySourceId,
      null,
      featureId,
      json.encode(
        {
          isSelectedKey: isSelectedKeyValue,
        },
      ),
    );

    await setFeatureState(
      featureSourceId,
      null,
      featureId,
      json.encode(
        {
          isSelectedKey: isSelectedKeyValue,
        },
      ),
    );
  }

  Bounds _getBoundsFromCoordinates(
    List<List<double>> coordinates,
  ) {
    var minLng = coordinates[zero][zero];
    var maxLng = coordinates[zero][zero];
    var minLat = coordinates[zero][one];
    var maxLat = coordinates[zero][one];

    for (final point in coordinates) {
      final lng = point[zero];
      final lat = point[one];

      if (lat < minLat) minLat = lat;
      if (lat > maxLat) maxLat = lat;
      if (lng < minLng) minLng = lng;
      if (lng > maxLng) maxLng = lng;
    }

    return (
      northEast: (
        longitude: maxLng,
        latitude: maxLat,
      ),
      southWest: (
        longitude: minLng,
        latitude: minLat,
      ),
    );
  }

  String? _getFeatureBoundaryIdFrom(String? featureSourceId) {
    if (featureSourceId == null || !featureSourceId.endsWith(sourceId)) {
      return null;
    }

    final subString = featureSourceId.substring(
      0,
      featureSourceId.length - sourceId.length,
    );

    if (subString.length == 3) {
      return subString + boundaryId + sourceId;
    }

    return droneRushZonesBoundarySourceId;
  }
}
