import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart'
    show
        PointAnnotation,
        PointAnnotationManager,
        PolygonAnnotation,
        PolygonAnnotationManager;

typedef PolygonAnnotationManagerPolygonAnnotationTuple = ({
  PolygonAnnotationManager polygonAnnotationManager,
  PolygonAnnotation polygonAnnotation,
});

typedef PointAnnotationManagerPointAnnotationTuple = ({
  PointAnnotationManager pointAnnotationManager,
  PointAnnotation pointAnnotation,
});

typedef Bounds = ({
  double northEastLatitude,
  double northEastLongitude,
  double southWestLatitude,
  double southWestLongitude,
});

typedef LatLng = ({
  double latitude,
  double longitude,
});

typedef Chart = ({
  String xAxis,
  int yAxis,
});

typedef SourceLayer = ({
  String sourceId,
  String layerId,
});
