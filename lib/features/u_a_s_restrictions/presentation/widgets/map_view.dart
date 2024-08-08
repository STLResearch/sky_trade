import 'package:dartz/dartz.dart' show Function1;
import 'package:flutter/material.dart'
    show BuildContext, StatelessWidget, Widget;
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart'
    show CameraChangedEventData, MapContentGestureContext, MapWidget, MapboxMap;

class MapView extends StatelessWidget {
  const MapView({
    required this.mapStyleUri,
    required this.onTap,
    required this.onCreated,
    required this.onCameraChanged,
    super.key,
  });

  final String mapStyleUri;
  final Function1<MapContentGestureContext, void> onTap;
  final Function1<MapboxMap, void> onCreated;
  final Function1<CameraChangedEventData, void> onCameraChanged;

  @override
  Widget build(BuildContext context) => MapWidget(
        styleUri: mapStyleUri,
        onTapListener: onTap,
        onMapCreated: onCreated,
        onCameraChangeListener: onCameraChanged,
      );
}
