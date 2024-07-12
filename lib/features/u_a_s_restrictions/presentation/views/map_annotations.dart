import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart'
    show
        CameraOptions,
        CircleAnnotationOptions,
        MapboxMap,
        Point,
        Polygon,
        PolygonAnnotationManager,
        PolygonAnnotationOptions,
        Position;

class MapAnnotations {
  MapAnnotations(this._mapboxMap, this._polygonCoordinates);

  late final MapboxMap? _mapboxMap;
  late final PolygonAnnotationManager? _polygonAnnotationManager;
  late final List<List<Position>> _polygonCoordinates;

  void createCircleAnnotation(double radius) {
    if (_mapboxMap != null) {
      _mapboxMap!.annotations.createCircleAnnotationManager().then((manager) {
        manager.create(
          CircleAnnotationOptions(
            geometry: Point(coordinates: Position(-79.7167, 43.7667)),
            circleRadius: radius,
            circleColor: 0x7F4285F4,
            circleStrokeWidth: 2,
            circleStrokeColor: 0xFF4285F4,
          ),
        );
      });
    }
  }

  void createPolygonAnnotation() {
    if (_mapboxMap != null) {
      _mapboxMap!.annotations.createPolygonAnnotationManager().then((manager) {
        _polygonAnnotationManager = manager;
        _polygonAnnotationManager?.create(
          PolygonAnnotationOptions(
            geometry: Polygon(coordinates: _polygonCoordinates),
            fillColor: 0x7F4285F4,
            fillOutlineColor: 0xFF4285F4,
          ),
        );
      });
    }
  }
}
