import 'dart:convert' show json;
import 'dart:ui' show instantiateImageCodec;
import 'package:flutter/services.dart' show Color, rootBundle;
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
import 'package:sky_trade/core/resources/colors.dart' show rawHex2A60C4, rgba;
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
        bridDronesLayerId,
        bridDronesSourceId,
        caseExpression,
        colorKey,
        coordinatesKey,
        delayKey,
        directionKey,
        durationKey,
        featureStateExpression,
        fillOpacityTransitionProperty,
        getExpression,
        iconDroneValue,
        idKey,
        isSelectedKey,
        layerId,
        lineStringGeometry,
        northEastKey,
        nridDronesLayerId,
        nridDronesSourceId,
        pointGeometry,
        polygonGeometry,
        propertiesKey,
        sourceId,
        southWestKey,
        typeKey;
import 'package:sky_trade/core/utils/extensions/restriction_entity_extensions.dart';
import 'package:sky_trade/core/utils/typedefs/networking.dart';
import 'package:sky_trade/features/remote_i_d_receiver/domain/entities/remote_i_d_entity.dart'
    show RemoteIDEntity;
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

    if (geoJsonDataForRestrictions == null) {
      return;
    }

    final geoJsonDataForBoundaries = _getGeoJsonData<RestrictionEntity>(
      entities: restrictionEntities,
      featureGeometryType: lineStringGeometry,
    );

    final geoJsonDataStringForRestrictions = json.encode(
      geoJsonDataForRestrictions.toJson(),
    );
    final geoJsonDataStringForBoundaries = json.encode(
      geoJsonDataForBoundaries!.toJson(),
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
        lineDasharray: [nilDotThree, twoDotNil],
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
            [featureStateExpression, isSelectedKey],
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
                        typeKey: featureGeometryType,
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
                final alpha = (featureGeometryType == polygonGeometry)
                    ? nilDotThree
                    : oneDotNil;
                final geometryCoordinates =
                    restrictionEntity.geometry.coordinates;
                final bounds = _getBoundsFromCoordinates(
                  geometryCoordinates[0],
                );
                final properties = <String, dynamic>{
                  colorKey: _getRGBAColorString(
                    color: restrictionEntity.polygonColor,
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
                      coordinatesKey: (featureGeometryType == polygonGeometry)
                          ? geometryCoordinates
                          : geometryCoordinates[0],
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

  Future<({String? featureId, String? sourceId})> handleRestrictionSelection({
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

    if (queriedFeatures.length == 1) {
      featureId = queriedFeatures.first.feature[idKey]!.toString();
      sourceId = queriedFeatures.firstOrNull?.source;
      featurePropertiesMap =
          queriedFeatures.first.feature[propertiesKey]! as Map;
    } else if (queriedFeatures.length > 1) {
      final feature = _getAppropriateFeatureFrom(
        queriedFeatures: queriedFeatures,
      );
      featureId = feature.feature[idKey]!.toString();
      sourceId = feature.source;
      featurePropertiesMap = feature.feature[propertiesKey]! as Map;
    }

    await _selectAndUnselectRestrictions(
      selectedRestrictionFeatureId: featureId,
      selectedRestrictionSourceId: sourceId,
      previousRestrictionFeatureId: previousRestrictionFeatureId,
      previousRestrictionSourceId: previousRestrictionSourceId,
    );

    if (featurePropertiesMap != null) {
      final northEast =
          (featurePropertiesMap[northEastKey]! as List).cast<double>();
      final southWest =
          (featurePropertiesMap[southWestKey]! as List).cast<double>();
      final coordinateBounds = CoordinateBounds(
        southwest: Point(
          coordinates: Position(
            southWest[0],
            southWest[1],
          ),
        ),
        northeast: Point(
          coordinates: Position(
            northEast[0],
            northEast[1],
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
    return queryRenderedFeatures(
      RenderedQueryGeometry.fromScreenCoordinate(
        screenCoordinate,
      ),
      RenderedQueryOptions(
        layerIds: layerIds,
      ),
    ).then(
      (queryRenderedFeatureList) => queryRenderedFeatureList
          .map(
            (queryRenderedFeature) => queryRenderedFeature?.queriedFeature,
          )
          .whereType<QueriedFeature>()
          .toList(),
    );
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

    final geoHash = restrictionSourceId.split(hyphen).first;
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

    final index = queriedFeatures.indexOf(selectedFeature);
    final nextIndex = (index + 1) % queriedFeatures.length;

    return queriedFeatures[nextIndex];
  }

  ({LngLat northEast, LngLat southWest}) _getBoundsFromCoordinates(
    List<List<double>> coordinates,
  ) {
    var minLng = coordinates[0][0];
    var maxLng = coordinates[0][0];
    var minLat = coordinates[0][1];
    var maxLat = coordinates[0][1];

    for (final point in coordinates) {
      final lng = point[0];
      final lat = point[1];

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
