import 'dart:convert' show json;
import 'dart:ui' show instantiateImageCodec;

import 'package:dartz/dartz.dart' show Function1;
import 'package:flutter/material.dart' show Color, ValueNotifier;
import 'package:flutter/services.dart' show rootBundle;
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart'
    show
        CameraOptions,
        CircleLayer,
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
    show closingParenthesis, comma, emptyString, hyphen, openingParenthesis;
import 'package:sky_trade/core/resources/strings/ui.dart'
    show
        booleanExpression,
        boundaryId,
        boundingBoxKey,
        bridDronesLayerId,
        bridDronesSourceId,
        caseExpression,
        colorKey,
        coordinatesKey,
        createdAtKey,
        delayKey,
        directionKey,
        droneRushZonesLayerId,
        droneRushZonesSourceId,
        durationKey,
        endTimeKey,
        featureStateExpression,
        fillOpacityTransitionProperty,
        getExpression,
        iconDroneValue,
        idKey,
        isSelectedKey,
        latitudeKey,
        layerId,
        lineStringGeometry,
        locationNameKey,
        longitudeKey,
        maxLatitudeKey,
        maxLongitudeKey,
        minLatitudeKey,
        minLongitudeKey,
        northEastKey,
        nridDronesLayerId,
        nridDronesSourceId,
        pointGeometry,
        polygonGeometry,
        propertiesKey,
        radiusKey,
        rgba,
        sourceId,
        southWestKey,
        startTimeKey,
        strokeColorKey,
        typeKey,
        updateAtKey;
import 'package:sky_trade/core/utils/extensions/drone_rush_zone_entity_extensions.dart';
import 'package:sky_trade/core/utils/extensions/restriction_entity_extensions.dart';
import 'package:sky_trade/core/utils/typedefs/ui.dart'
    show Bounds, FeatureIdSourceIdTuple;
import 'package:sky_trade/features/remote_i_d_receiver/domain/entities/remote_i_d_entity.dart'
    show RemoteIDEntity;
import 'package:sky_trade/features/rewards/domain/entities/rewards_entity.dart'
    show BoundingBoxEntity, DroneRushZoneEntity;
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

  Future<void> addOrUpdateDroneRushZonesOnMap({
    required List<DroneRushZoneEntity> droneRushZoneEntities,
  }) async {
    final geoJsonData = _getGeoJsonData<DroneRushZoneEntity>(
      entities: droneRushZoneEntities,
      featureGeometryType: pointGeometry,
    );

    if (geoJsonData == null) {
      return;
    }

    final geoJsonDataString = json.encode(
      geoJsonData.toJson(),
    );

    late final Source? geoJsonSource;

    try {
      geoJsonSource = await style.getSource(
        droneRushZonesSourceId,
      );
    } catch (_) {
      geoJsonSource = null;
    }

    if (geoJsonSource == null) {
      await style.addSource(
        GeoJsonSource(
          id: droneRushZonesSourceId,
          data: geoJsonDataString,
        ),
      );

      await style.addLayer(
        CircleLayer(
          id: droneRushZonesLayerId,
          sourceId: droneRushZonesSourceId,
          circleColorExpression: [
            getExpression,
            colorKey,
          ],
          circleRadiusExpression: [
            getExpression,
            radiusKey,
          ],
          circleStrokeWidth: oneDotThree,
          circleStrokeColorExpression: [
            getExpression,
            strokeColorKey,
          ],
        ),
      );

      return;
    }

    if (geoJsonSource is GeoJsonSource) {
      await geoJsonSource.updateGeoJSON(
        geoJsonDataString,
      );

      await style.updateLayer(
        CircleLayer(
          id: droneRushZonesLayerId,
          sourceId: droneRushZonesSourceId,
          circleColorExpression: [
            getExpression,
            colorKey,
          ],
          circleRadiusExpression: [
            getExpression,
            radiusKey,
          ],
          circleStrokeWidth: oneDotThree,
          circleStrokeColorExpression: [
            getExpression,
            strokeColorKey,
          ],
        ),
      );
    }
  }

  Future<void> maybeRemoveDroneRushZonesFromMap() async {
    late final Source? geoJsonSource;

    try {
      geoJsonSource = await style.getSource(
        droneRushZonesSourceId,
      );
    } catch (_) {
      geoJsonSource = null;
    }

    if (geoJsonSource == null) {
      return;
    }

    if (geoJsonSource is GeoJsonSource) {
      await style.removeStyleLayer(
        droneRushZonesLayerId,
      );

      await style.removeStyleSource(
        droneRushZonesSourceId,
      );
    }
  }

  Future<void> addRestrictionsOnMap({
    required String geoHash,
    required List<RestrictionEntity> restrictionEntities,
  }) async {
    final geoJsonDataForRestrictions = _getGeoJsonData<RestrictionEntity>(
      entities: restrictionEntities,
      featureGeometryType: polygonGeometry,
    );

    if (geoJsonDataForRestrictions == null) {
      return;
    }

    final geoJsonDataForBoundaries = _getGeoJsonData<RestrictionEntity>(
      entities: restrictionEntities,
      featureGeometryType: lineStringGeometry,
    );

    if (geoJsonDataForBoundaries == null) {
      return;
    }

    final geoJsonDataStringForRestrictions = json.encode(
      geoJsonDataForRestrictions.toJson(),
    );

    final geoJsonDataStringForBoundaries = json.encode(
      geoJsonDataForBoundaries.toJson(),
    );

    await style.addSource(
      GeoJsonSource(
        id: geoHash + sourceId,
        data: geoJsonDataStringForRestrictions,
      ),
    );

    await style.addSource(
      GeoJsonSource(
        id: geoHash + boundaryId + sourceId,
        data: geoJsonDataStringForBoundaries,
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

  Future<void> setUpLayersForDrones({
    required String bridGeoJsonData,
    String? nridGeoJsonData,
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

    if(nridGeoJsonData != null) {
      await style.addSource(
        GeoJsonSource(
          id: nridDronesSourceId,
          data: nridGeoJsonData,
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
  }

  Future<String> addOrUpdateDronesOnMap({
    required List<RemoteIDEntity> remoteIDEntities,
    required String geoJsonSourceId,
  }) async {
    final geoJsonData = _getGeoJsonData<RemoteIDEntity>(
      entities: remoteIDEntities,
      featureGeometryType: pointGeometry,
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

                final properties = <String, dynamic>{
                  colorKey: _getRGBAColorString(
                    color: droneRushZoneEntity.circleFillColor,
                    alpha: nilDotThree,
                  ),
                  strokeColorKey: _getRGBAColorString(
                    color: droneRushZoneEntity.circleOutlineColor,
                    alpha: oneDotNil,
                  ),
                  idKey: droneRushZoneEntity.id,
                  createdAtKey: droneRushZoneEntity.createdAt.toIso8601String(),
                  updateAtKey: droneRushZoneEntity.updateAt.toIso8601String(),
                  startTimeKey: droneRushZoneEntity.startTime.toIso8601String(),
                  endTimeKey: droneRushZoneEntity.endTime.toIso8601String(),
                  latitudeKey: droneRushZoneEntity.latitude,
                  longitudeKey: droneRushZoneEntity.longitude,
                  radiusKey: droneRushZoneEntity.radius,
                  locationNameKey: droneRushZoneEntity.locationName,
                  boundingBoxKey: <String, double>{
                    minLatitudeKey: droneRushZoneEntity.boundingBox.minLatitude,
                    maxLatitudeKey: droneRushZoneEntity.boundingBox.maxLatitude,
                    minLongitudeKey:
                        droneRushZoneEntity.boundingBox.minLongitude,
                    maxLongitudeKey:
                        droneRushZoneEntity.boundingBox.maxLongitude,
                  },
                };

                return Feature(
                  id: droneRushZoneEntity.id,
                  properties: properties,
                  geometry: GeometryObject.deserialize(
                    {
                      typeKey: featureGeometryType,
                      coordinatesKey: [
                        droneRushZoneEntity.longitude,
                        droneRushZoneEntity.latitude,
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
      rgba +
      openingParenthesis +
      color.red.toString() +
      comma +
      color.green.toString() +
      comma +
      color.blue.toString() +
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

  Future<void> handleDroneRushZoneTapUsing({
    required ScreenCoordinate touchPosition,
    required ValueNotifier<
            ({
              List<String> list,
              int index,
            })>
        previousDroneRushZonesIdsAndIndexNotifier,
    required Function1<DroneRushZoneEntity, void> onTap,
  }) async {
    final queriedFeatures = await _getQueriedFeatures(
      screenCoordinate: touchPosition,
      layerIds: [
        droneRushZonesLayerId,
      ],
    );

    Map<dynamic, dynamic>? featurePropertiesMap;

    if (queriedFeatures.length == one) {
      featurePropertiesMap =
          queriedFeatures.first.feature[propertiesKey] as Map?;
    } else if (queriedFeatures.length > one) {
      final feature = _cycleThroughQueriedFeaturesUsing(
        queriedFeatures: queriedFeatures,
        previousDroneRushZonesIdsAndIndexNotifier:
            previousDroneRushZonesIdsAndIndexNotifier,
      );

      featurePropertiesMap = feature.feature[propertiesKey] as Map?;
    }

    if (featurePropertiesMap != null) {
      final id = featurePropertiesMap[idKey] as String;
      final createdAt = DateTime.parse(
        featurePropertiesMap[createdAtKey] as String,
      );
      final updateAt = DateTime.parse(
        featurePropertiesMap[updateAtKey] as String,
      );
      final startTime = DateTime.parse(
        featurePropertiesMap[startTimeKey] as String,
      );
      final endTime = DateTime.parse(
        featurePropertiesMap[endTimeKey] as String,
      );
      final latitude = featurePropertiesMap[latitudeKey] as double;
      final longitude = featurePropertiesMap[longitudeKey] as double;
      final radius = (featurePropertiesMap[radiusKey] as num).toDouble();
      final locationName = featurePropertiesMap[locationNameKey] as String;

      final boundingBox = featurePropertiesMap[boundingBoxKey] as Map;

      final minLatitude = boundingBox[minLatitudeKey] as double;
      final maxLatitude = boundingBox[maxLatitudeKey] as double;
      final minLongitude = boundingBox[minLongitudeKey] as double;
      final maxLongitude = boundingBox[maxLongitudeKey] as double;

      final coordinateBounds = CoordinateBounds(
        northeast: Point(
          coordinates: Position(
            maxLongitude,
            maxLatitude,
          ),
        ),
        southwest: Point(
          coordinates: Position(
            minLongitude,
            minLatitude,
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

      final droneRushZoneEntity = DroneRushZoneEntity(
        id: id,
        createdAt: createdAt,
        updateAt: updateAt,
        startTime: startTime,
        endTime: endTime,
        latitude: latitude,
        longitude: longitude,
        radius: radius,
        locationName: locationName,
        boundingBox: BoundingBoxEntity(
          minLatitude: minLatitude,
          maxLatitude: maxLatitude,
          minLongitude: minLongitude,
          maxLongitude: maxLongitude,
        ),
      );

      onTap(
        droneRushZoneEntity,
      );
    }
  }

  Future<FeatureIdSourceIdTuple> handleRestrictionSelection({
    required ScreenCoordinate touchPosition,
    required List<String> restrictionLayerIds,
    required String? previousRestrictionFeatureId,
    required String? previousRestrictionSourceId,
  }) async {
    final queriedFeatures = await _getQueriedFeatures(
      screenCoordinate: touchPosition,
      layerIds: restrictionLayerIds,
    );

    String? featureId;

    String? sourceId;

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

    await _selectAndUnselectRestrictions(
      selectedRestrictionFeatureId: featureId,
      selectedRestrictionSourceId: sourceId,
      previousRestrictionFeatureId: previousRestrictionFeatureId,
      previousRestrictionSourceId: previousRestrictionSourceId,
    );

    if (featurePropertiesMap != null) {
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
    }

    return (
      featureId: featureId,
      sourceId: sourceId,
    );
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
          (
            queryRenderedFeature,
          ) =>
              queryRenderedFeature?.queriedFeature,
        )
        .whereType<QueriedFeature>()
        .toList();
  }

  Future<void> _selectAndUnselectRestrictions({
    required String? selectedRestrictionFeatureId,
    required String? selectedRestrictionSourceId,
    required String? previousRestrictionFeatureId,
    required String? previousRestrictionSourceId,
  }) async {
    if (selectedRestrictionFeatureId == previousRestrictionFeatureId) {
      return;
    }

    await _updateRestrictionFeatureState(
      restrictionFeatureId: selectedRestrictionFeatureId,
      restrictionSourceId: selectedRestrictionSourceId,
      isSelectedKeyValue: true,
    );

    await _updateRestrictionFeatureState(
      restrictionFeatureId: previousRestrictionFeatureId,
      restrictionSourceId: previousRestrictionSourceId,
      isSelectedKeyValue: false,
    );
  }

  Future<void> _updateRestrictionFeatureState({
    required String? restrictionFeatureId,
    required String? restrictionSourceId,
    required bool isSelectedKeyValue,
  }) async {
    if (restrictionFeatureId == null || restrictionSourceId == null) return;

    final geoHash = restrictionSourceId
        .split(
          hyphen,
        )
        .first;

    final boundarySourceId = geoHash + boundaryId + sourceId;

    await setFeatureState(
      boundarySourceId,
      null,
      restrictionFeatureId,
      json.encode(
        {
          isSelectedKey: isSelectedKeyValue,
        },
      ),
    );

    await setFeatureState(
      restrictionSourceId,
      null,
      restrictionFeatureId,
      json.encode(
        {
          isSelectedKey: isSelectedKeyValue,
        },
      ),
    );
  }

  QueriedFeature _cycleThroughQueriedFeaturesUsing({
    required List<QueriedFeature> queriedFeatures,
    required ValueNotifier<
            ({
              List<String> list,
              int index,
            })>
        previousDroneRushZonesIdsAndIndexNotifier,
  }) {
    final droneRushZonesIdsAndIndex =
        previousDroneRushZonesIdsAndIndexNotifier.value;

    final droneRushZonesIds = queriedFeatures
        .map(
          (queriedFeature) => queriedFeature.feature[idKey].toString(),
        )
        .toList();

    final list = droneRushZonesIdsAndIndex.list;

    if (list.isEmpty) {
      final index = droneRushZonesIdsAndIndex.index;

      previousDroneRushZonesIdsAndIndexNotifier.value = (
        list: droneRushZonesIds,
        index: switch (index + one < droneRushZonesIds.length) {
          true => index + one,
          false => zero,
        },
      );

      return queriedFeatures[index];
    }

    if (droneRushZonesIds.length == list.length) {
      for (var index = zero; index < droneRushZonesIds.length; index += one) {
        final currentDroneRushZonesIds = list[index];

        if (droneRushZonesIds[index] != currentDroneRushZonesIds) {
          previousDroneRushZonesIdsAndIndexNotifier.value = (
            list: droneRushZonesIds,
            index: one,
          );

          return queriedFeatures[zero];
        }
      }

      final index = droneRushZonesIdsAndIndex.index;

      previousDroneRushZonesIdsAndIndexNotifier.value = (
        list: droneRushZonesIds,
        index: switch (index + one < droneRushZonesIds.length) {
          true => index + one,
          false => zero,
        },
      );

      return queriedFeatures[index];
    }

    previousDroneRushZonesIdsAndIndexNotifier.value = (
      list: droneRushZonesIds,
      index: one,
    );

    return queriedFeatures[zero];
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
}
