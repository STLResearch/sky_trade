// SPDX-License-Identifier: UNLICENSED
                            
import 'package:dartz/dartz.dart' show Function1;
import 'package:flutter/material.dart'
    show BuildContext, StatelessWidget, Widget;
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart'
    show
        CameraChangedEventData,
        MapContentGestureContext,
        MapWidget,
        MapboxMap,
        StyleLoadedEventData;

class MapView extends StatelessWidget {
  const MapView({
    required this.mapStyleUri,
    required this.onTap,
    required this.onScroll,
    required this.onCreated,
    required this.onCameraChanged,
    required this.onStyleLoaded,
    super.key,
  });

  final String mapStyleUri;
  final Function1<MapContentGestureContext, void> onTap;
  final Function1<MapContentGestureContext, void> onScroll;
  final Function1<MapboxMap, void> onCreated;
  final Function1<CameraChangedEventData, void> onCameraChanged;
  final Function1<StyleLoadedEventData, void> onStyleLoaded;

  @override
  Widget build(BuildContext context) => MapWidget(
        styleUri: mapStyleUri,
        onTapListener: onTap,
        onScrollListener: onScroll,
        onMapCreated: onCreated,
        onCameraChangeListener: onCameraChanged,
        onStyleLoadedListener: onStyleLoaded,
      );
}
