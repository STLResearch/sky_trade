import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart'
    show MapboxMap, Polygon, PolygonAnnotationOptions, Position;
import 'package:sky_ways/core/resources/numbers/ui.dart' show one, zero;

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
}
