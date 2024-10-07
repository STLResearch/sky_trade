import 'package:json_annotation/json_annotation.dart' show JsonValue;
import 'package:sky_ways/core/resources/strings/environments.dart'
    show
        wifiAdapterStateDisabledEnumValue,
        wifiAdapterStateDisablingEnumValue,
        wifiAdapterStateEnabledEnumValue,
        wifiAdapterStateEnablingEnumValue,
        wifiAdapterStateUnknownEnumValue;
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

// Web3Auth
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

enum ConnectionState {
  connected,
  connectionError,
  connectionTimeout,
  connecting,
  disconnected,
  error,
}

enum BluetoothAdapterState {
  unknown,
  unavailable,
  unauthorized,
  turningOn,
  on,
  turningOff,
  off,
}

enum WifiAdapterState {
  enabling(
    wifiAdapterStateEnablingEnumValue,
  ),
  enabled(
    wifiAdapterStateEnabledEnumValue,
  ),
  disabling(
    wifiAdapterStateDisablingEnumValue,
  ),
  disabled(
    wifiAdapterStateDisabledEnumValue,
  ),
  unknown(
    wifiAdapterStateUnknownEnumValue,
  );

  const WifiAdapterState(
    this.value,
  );

  final String value;
}
