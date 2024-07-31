// Web3Auth
import 'package:json_annotation/json_annotation.dart' show JsonValue;
import 'package:sky_ways/core/resources/strings/networking.dart'
    show
        dangerValue,
        lineStringValue,
        multiLineStringValue,
        multiPointValue,
        multiPolygonValue,
        pointValue,
        polygonValue,
        prohibitedValue,
        restrictedValue;

enum AuthProvider {
  google,
  emailPasswordless,
}

// Network request method
enum RequestMethod {
  get,
  post,
  put,
  delete,
}

// UAS restriction type
enum RestrictionType {
  @JsonValue(dangerValue)
  danger,
  @JsonValue(prohibitedValue)
  prohibited,
  @JsonValue(restrictedValue)
  restricted,
}

enum RegionType {
  @JsonValue(pointValue)
  point,
  @JsonValue(lineStringValue)
  lineString,
  @JsonValue(polygonValue)
  polygon,
  @JsonValue(multiPointValue)
  multiPoint,
  @JsonValue(multiLineStringValue)
  multiLineString,
  @JsonValue(multiPolygonValue)
  multiPolygon,
}
