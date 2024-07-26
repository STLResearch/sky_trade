import 'package:dartz/dartz.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart'
    show
        CameraOptions,
        CoordinateBounds,
        LocationComponentSettings,
        MapAnimationOptions,
        MapboxMap,
        Point,
        Polygon,
        PolygonAnnotationOptions,
        Position;
import 'package:sky_ways/core/resources/numbers/ui.dart'
    show fourteenDotNil, one, oneThousand, zero;

extension MapboxMapExtensions on MapboxMap {
  Future<void> drawPolygonUsing({
    required List<List<List<double>>> vertices,
  }) async {
    final polygonAnnotationManager =
        await annotations.createPolygonAnnotationManager();

    await polygonAnnotationManager.create(
      PolygonAnnotationOptions(
        geometry: Polygon(
          coordinates: vertices
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
        fillColor: 0x5CE04F64, // 0x0F00B428, // 0xFFE04F64,
        fillOutlineColor: 0xFFA9143A, // 0xFF00B428, // 0xFFA9143A,
      ),
    );
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
        zoom: 10, // fourteenDotNil,
      ),
      MapAnimationOptions(
        duration: oneThousand,
      ),
    );

    await location.updateSettings(
      LocationComponentSettings(
        enabled: true,
      ),
    );
  }

  Future<void> computeBoundingBoxForCoordinates({
    required double latitude,
    required double longitude,
    required Function1<CoordinateBounds, void> onBoundsComputed,
  }) =>
      coordinateBoundsForCameraUnwrapped(
        CameraOptions(
          center: Point(
            coordinates: Position(
              longitude,
              latitude,
            ),
          ),
          zoom: 10, // fourteenDotNil,
        ),
      ).then(
        (coordinateBounds) => onBoundsComputed(
          coordinateBounds,
        ),
      );
}
