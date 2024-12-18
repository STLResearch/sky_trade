import 'package:json_annotation/json_annotation.dart' show JsonValue;
import 'package:sky_trade/core/resources/strings/environments.dart'
    show
        wifiAdapterStateDisabledEnumValue,
        wifiAdapterStateDisablingEnumValue,
        wifiAdapterStateEnabledEnumValue,
        wifiAdapterStateEnablingEnumValue,
        wifiAdapterStateUnknownEnumValue;
import 'package:sky_trade/core/resources/strings/networking.dart'
    show
        aeroplaneKey,
        airborneKey,
        airshipKey,
        bluetoothLegacyKey,
        bluetoothLongRangeKey,
        cAARegistrationIDKey,
        captiveBalloonKey,
        dangerValue,
        dynamicKey,
        emergencyKey,
        euCertifiedKey,
        euClass0Key,
        euClass1Key,
        euClass2Key,
        euClass3Key,
        euClass4Key,
        euClass5Key,
        euClass6Key,
        euClass7Key,
        euKey,
        euOpenKey,
        euSpecificKey,
        extendedStatusKey,
        fixedKey,
        freeBalloonKey,
        freeFallParachuteKey,
        gliderKey,
        groundKey,
        groundObstacleKey,
        gyroplaneKey,
        helicopterOrMultirotorKey,
        hybridLiftKey,
        invalidKey,
        kilometers18_52Key,
        kilometers1_852Key,
        kilometers3_704Key,
        kilometers7_408Key,
        kiteKey,
        lineStringValue,
        messageSetSignatureKey,
        meterPerSecond0_3Key,
        meterPerSecond10Key,
        meterPerSecond1Key,
        meterPerSecond3Key,
        meters10Key,
        meters150Key,
        meters185_2Key,
        meters1Key,
        meters25Key,
        meters30Key,
        meters3Key,
        meters45Key,
        meters555_6Key,
        meters926Key,
        meters92_6Key,
        multiLineStringValue,
        multiPointValue,
        multiPolygonValue,
        networkRemoteIdKey,
        noneKey,
        operatorIDKey,
        operatorIdSignatureKey,
        ornithopterKey,
        otherKey,
        pointValue,
        polygonValue,
        privateKey,
        privateUse0xAKey,
        privateUse0xBKey,
        privateUse0xCKey,
        privateUse0xDKey,
        privateUse0xEKey,
        privateUse0xFKey,
        prohibitedValue,
        remoteIDSystemFailureKey,
        restrictedValue,
        rocketKey,
        serialNumberIDTypeKey,
        specificAuthenticationKey,
        specificSessionIDKey,
        takeOffKey,
        takeoffKey,
        tetheredPoweredAircraftKey,
        textKey,
        uTMAssignedIDKey,
        uasIdSignatureKey,
        undeclaredKey,
        undefinedKey,
        unknownKey,
        wifiBeaconKey,
        wifiNanKey;

// Web3Auth
enum AuthProvider {
  apple,
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
  disconnected,
  error,
  reconnecting,
  reconnectionFailed,
  reconnectionError,
  destroyed,
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

enum RemoteIDMessageSource {
  @JsonValue(bluetoothLegacyKey)
  bluetoothLegacy,
  @JsonValue(bluetoothLongRangeKey)
  bluetoothLongRange,
  @JsonValue(wifiNanKey)
  wifiNan,
  @JsonValue(wifiBeaconKey)
  wifiBeacon,
  @JsonValue(unknownKey)
  unknown,
}

enum UnmannedAircraftType {
  @JsonValue(noneKey)
  none,
  @JsonValue(aeroplaneKey)
  aeroplane,
  @JsonValue(helicopterOrMultirotorKey)
  helicopterOrMultirotor,
  @JsonValue(gyroplaneKey)
  gyroplane,
  @JsonValue(hybridLiftKey)
  hybridLift,
  @JsonValue(ornithopterKey)
  ornithopter,
  @JsonValue(gliderKey)
  glider,
  @JsonValue(kiteKey)
  kite,
  @JsonValue(freeBalloonKey)
  freeBalloon,
  @JsonValue(captiveBalloonKey)
  captiveBalloon,
  @JsonValue(airshipKey)
  airship,
  @JsonValue(freeFallParachuteKey)
  freeFallParachute,
  @JsonValue(rocketKey)
  rocket,
  @JsonValue(tetheredPoweredAircraftKey)
  tetheredPoweredAircraft,
  @JsonValue(groundObstacleKey)
  groundObstacle,
  @JsonValue(otherKey)
  other,
}

enum UnmannedAircraftIDType {
  @JsonValue(noneKey)
  none,
  @JsonValue(serialNumberIDTypeKey)
  serialNumber,
  @JsonValue(cAARegistrationIDKey)
  cAARegistrationID,
  @JsonValue(uTMAssignedIDKey)
  uTMAssignedID,
  @JsonValue(specificSessionIDKey)
  specificSessionID,
}

enum UnmannedAircraftOperationalStatus {
  @JsonValue(noneKey)
  none,
  @JsonValue(groundKey)
  ground,
  @JsonValue(airborneKey)
  airborne,
  @JsonValue(emergencyKey)
  emergency,
  @JsonValue(remoteIDSystemFailureKey)
  remoteIDSystemFailure,
}

enum UnmannedAircraftHeightType {
  @JsonValue(groundKey)
  aboveGroundLevel,
  @JsonValue(takeoffKey)
  aboveTakeoff,
}

enum UnmannedAircraftHorizontalAccuracy {
  @JsonValue(unknownKey)
  unknown,
  @JsonValue(kilometers18_52Key)
  kilometers_18_52,
  @JsonValue(kilometers7_408Key)
  kilometers_7_408,
  @JsonValue(kilometers3_704Key)
  kilometers_3_704,
  @JsonValue(kilometers1_852Key)
  kilometers_1_852,
  @JsonValue(meters926Key)
  meters_926,
  @JsonValue(meters555_6Key)
  meters_555_6,
  @JsonValue(meters185_2Key)
  meters_185_2,
  @JsonValue(meters92_6Key)
  meters_92_6,
  @JsonValue(meters30Key)
  meters_30,
  @JsonValue(meters10Key)
  meters_10,
  @JsonValue(meters3Key)
  meters_3,
  @JsonValue(meters1Key)
  meters_1,
}

enum UnmannedAircraftVerticalOrBarometerAccuracy {
  @JsonValue(unknownKey)
  unknown,
  @JsonValue(meters150Key)
  meters_150,
  @JsonValue(meters45Key)
  meters_45,
  @JsonValue(meters25Key)
  meters_25,
  @JsonValue(meters10Key)
  meters_10,
  @JsonValue(meters3Key)
  meters_3,
  @JsonValue(meters1Key)
  meters_1,
}

enum UnmannedAircraftSpeedAccuracy {
  @JsonValue(unknownKey)
  unknown,
  @JsonValue(meterPerSecond10Key)
  meterPerSecond_10,
  @JsonValue(meterPerSecond3Key)
  meterPerSecond_3,
  @JsonValue(meterPerSecond1Key)
  meterPerSecond_1,
  @JsonValue(meterPerSecond0_3Key)
  meterPerSecond_0_3,
}

enum UnmannedAircraftSelfIDDescriptionType {
  @JsonValue(invalidKey)
  invalid,
  @JsonValue(textKey)
  text,
  @JsonValue(emergencyKey)
  emergency,
  @JsonValue(extendedStatusKey)
  extendedStatus,
  @JsonValue(privateKey)
  private,
}

enum UnmannedAircraftOperatorIDType {
  @JsonValue(operatorIDKey)
  operatorID,
  @JsonValue(privateKey)
  private,
}

enum UnmannedAircraftOperatorLocationType {
  @JsonValue(invalidKey)
  invalid,
  @JsonValue(takeOffKey)
  takeoff,
  @JsonValue(dynamicKey)
  dynamic,
  @JsonValue(fixedKey)
  fixed,
}

enum UnmannedAircraftClassificationType {
  @JsonValue(undeclaredKey)
  undeclared,
  @JsonValue(euKey)
  europeanUnion,
}

enum UnmannedAircraftCategory {
  @JsonValue(undefinedKey)
  undefined,
  @JsonValue(euOpenKey)
  europeanUnionOpen,
  @JsonValue(euSpecificKey)
  europeanUnionSpecific,
  @JsonValue(euCertifiedKey)
  europeanUnionCertified,
}

enum UnmannedAircraftClassValue {
  @JsonValue(undefinedKey)
  undefined,
  @JsonValue(euClass0Key)
  europeanUnionClass0,
  @JsonValue(euClass1Key)
  europeanUnionClass1,
  @JsonValue(euClass2Key)
  europeanUnionClass2,
  @JsonValue(euClass3Key)
  europeanUnionClass3,
  @JsonValue(euClass4Key)
  europeanUnionClass4,
  @JsonValue(euClass5Key)
  europeanUnionClass5,
  @JsonValue(euClass6Key)
  europeanUnionClass6,
  @JsonValue(euClass7Key)
  europeanUnionClass7,
}

enum UnmannedAircraftAuthenticationType {
  @JsonValue(noneKey)
  none,
  @JsonValue(uasIdSignatureKey)
  uASIDSignature,
  @JsonValue(operatorIdSignatureKey)
  operatorIDSignature,
  @JsonValue(messageSetSignatureKey)
  messageSetSignature,
  @JsonValue(networkRemoteIdKey)
  networkRemoteID,
  @JsonValue(specificAuthenticationKey)
  specificAuthentication,
  @JsonValue(privateUse0xAKey)
  privateUse0xA,
  @JsonValue(privateUse0xBKey)
  privateUse0xB,
  @JsonValue(privateUse0xCKey)
  privateUse0xC,
  @JsonValue(privateUse0xDKey)
  privateUse0xD,
  @JsonValue(privateUse0xEKey)
  privateUse0xE,
  @JsonValue(privateUse0xFKey)
  privateUse0xF,
}
