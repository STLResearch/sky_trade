typedef LatLng = ({
  double latitude,
  double longitude,
});

typedef LngLat = ({
  double longitude,
  double latitude,
});

typedef Bounds = ({
  LngLat northEast,
  LngLat southWest,
});

typedef Chart = ({
  String xAxis,
  int yAxis,
});

typedef FeatureIdSourceIdTuple = ({
  String? featureId,
  String? sourceId,
});
