import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart'
    show
        PointAnnotation,
        PointAnnotationManager,
        PolygonAnnotation,
        PolygonAnnotationManager;

typedef PolygonAnnotationManagerPolygonAnnotationTuple = (
  PolygonAnnotationManager,
  PolygonAnnotation,
);

typedef PointAnnotationManagerPointAnnotationTuple = (
  PointAnnotationManager,
  PointAnnotation,
);
