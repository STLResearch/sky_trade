// Web3Auth
const web3AuthRpcUrl = 'WEB_3_AUTH_RPC_URL';
// Whitelist origins
const web3AuthWhitelistOriginIos = 'WEB_3_AUTH_WHITELIST_ORIGIN_IOS';
const web3AuthWhitelistOriginAndroid = 'WEB_3_AUTH_WHITELIST_ORIGIN_ANDROID';
// Paths
// Param keys and values for extra login options
const flowTypeKey = 'flow_type';
const linkValue = 'link';

// Mapbox maps
const mapboxMapsPublicKey = 'MAPBOX_MAPS_PUBLIC_KEY';
const mapboxMapsSearchBoxBaseUrl = 'MAPBOX_MAPS_SEARCH_BOX_BASE_URL';

// SkyTrade
// Privacy policy
const skyTradePrivacyPolicyUrl = 'https://docs.sky.trade/privacy.htm';
// Terms of service
const skyTradeTermsOfServiceUrl = 'https://docs.sky.trade/terms.htm';
// Endpoints
// Base URL
const skyTradeServerHttpBaseUrl = 'SKYTRADE_SERVER_HTTP_BASE_URL';
const skyTradeServerSignUrl = 'SKYTRADE_SERVER_SIGN_URL';
const skyTradeServerHttpSignUrl = 'SKYTRADE_SERVER_HTTP_SIGN_URL';
const skyTradeServerSocketIOBaseUrl = 'SKYTRADE_SERVER_SOCKET_IO_BASE_URL';
const skyTradeServerApiKey = 'SKYTRADE_SERVER_API_KEY';
// Paths
const restrictionsPath = '/restrictions';
const suggestPath = '/suggest';
const privatePath = '/private';
const publicPath = '/public';
const usersPath = '/users';
const sessionPath = '/session';
const createPath = '/create';
// Signature
const signatureFirstLine = 'wants you to sign in with your Solana account:';
const signatureThirdLine = 'Sign in to SkyTrade app.';
const signatureFourthLine = 'URI:';
const signatureFifthLine = 'Version: 1';
const signatureSixthLine = 'Chain ID: 1';
const signatureSeventhLine = 'Nonce:';
const signatureEightLine = 'Issued At:';

// Socket IO
const websocketTransport = 'websocket';

const uasActivityEvent = 'get-sql-drone-data-response';
const uasActivityRoom = 'get-sql-drone-data';

const connectionTimeoutEvent = 'connect_timeout';
const connectingEvent = 'connecting';
const reconnectingEvent = 'reconnecting';

// Request and response header and body keys and values
// Headers
const contentTypeHeaderKey = 'Content-Type';
const applicationJsonHeaderValue = 'application/json';
const acceptHeaderKey = 'Accept';
const acceptAllHeaderValue = '*/*';
const connectionHeaderKey = 'Connection';
const closeHeaderValue = 'close';
const signHeaderKey = 'sign';
const signIssueAtHeaderKey = 'sign_issue_at';
const signNonceHeaderKey = 'sign_nonce';
const signAddressHeaderKey = 'sign_address';
const apiKeyHeaderKey = 'api_key';
// Body
const additionalLinks = 'additional_links';
const countryKey = 'country';
const upperLimitKey = 'upper_limit';
const lowerLimitKey = 'lower_limit';
const messageKey = 'message';
const regionKey = 'region';
const typeKey = 'type';
const linkKey = 'link';
const nameKey = 'name';
const coordinatesKey = 'coordinates';
const dangerValue = 'Danger';
const prohibitedValue = 'Prohibited';
const restrictedValue = 'Restricted';
const pointValue = 'Point';
const lineStringValue = 'LineString';
const polygonValue = 'Polygon';
const multiPointValue = 'MultiPoint';
const multiLineStringValue = 'MultiLineString';
const multiPolygonValue = 'MultiPolygon';
const geoHashKey = 'geoHash';
const countKey = '_count';
const dataKey = 'data';
const idKey = 'id';
const remoteDataKey = 'remoteData';
const createdAtKey = 'createdAt';
const updateAtKey = 'updateAt';
const selfIdKey = 'selfId';
const systemKey = 'system';
const locationKey = 'location';
const connectionKey = 'connection';
const macAddressKey = 'macAddress';
const operatorIdKey = 'operatorId';
const identification1Key = 'identification1';
const identification2Key = 'identification2';
const descriptionTypeKey = 'descriptionType';
const operationDescriptionKey = 'operationDescription';
const categoryKey = 'category';
const areaCountKey = 'areaCount';
const areaFloorKey = 'areaFloor';
const areaRadiusKey = 'areaRadius';
const classValueKey = 'classValue';
const areaCeilingKey = 'areaCeiling';
const systemTimestampKey = 'systemTimestamp';
const operatorLatitudeKey = 'operatorLatitude';
const operatorLongitudeKey = 'operatorLongitude';
const classificationTypeKey = 'classificationType';
const operatorAltitudeGeoKey = 'operatorAltitudeGeo';
const operatorLocationTypeKey = 'operatorLocationType';
const heightKey = 'height';
const statusKey = 'status';
const distanceKey = 'distance';
const latitudeKey = 'latitude';
const directionKey = 'direction';
const longitudeKey = 'longitude';
const heightTypeKey = 'heightType';
const baroAccuracyKey = 'baroAccuracy';
const timeAccuracyKey = 'timeAccuracy';
const speedAccuracyKey = 'speedAccuracy';
const speedVerticalKey = 'speedVertical';
const speedHorizontalKey = 'speedHorizontal';
const altitudeGeodeticKey = 'altitudeGeodetic';
const altitudePressureKey = 'altitudePressure';
const verticalAccuracyKey = 'verticalAccuracy';
const locationTimestampKey = 'locationTimestamp';
const horizontalAccuracyKey = 'horizontalAccuracy';
const rssiKey = 'rssi';
const lastSeenKey = 'lastSeen';
const msgDeltaKey = 'msgDelta';
const firstSeenKey = 'firstSeen';
const transportTypeKey = 'transportType';
const uasIdKey = 'uasId';
const idTypeKey = 'idType';
const uaTypeKey = 'uaType';
const suggestionsKey = 'suggestions';
const attributionKey = 'attribution';
const placeFormattedKey = 'place_formatted';
const namePreferredKey = 'name_preferred';
const qKey = 'q';
const accessTokenKey = 'access_token';
const sessionTokenKey = 'session_token';
const emailKey = 'email';
const blockchainAddressKey = 'blockchainAddress';
const newsletterKey = 'newsletter';
const categoryIdKey = 'categoryId';
const phoneNumberKey = 'phoneNumber';
const pirateValue = 'pirate';
const usernameKey = 'username';
const passwordKey = 'password';
const isAdminKey = 'isAdmin';
const kYCStatusIdKey = 'KYCStatusId';
const isActiveKey = 'isActive';
const usedReferralCodeIdKey = 'usedReferralCodeId';
const ownedReferralCodeIdKey = 'ownedReferralCodeId';
const isUserRewardClaimedKey = 'isUserRewardClaimed';
const ownedReferralCodeKey = 'ownedReferralCode';
const codeKey = 'code';
const codeChangedKey = 'codeChanged';
const usedByBonusEarnedKey = 'usedByBonusEarned';
const ownedByBonusEarnedKey = 'ownedByBonusEarned';
// Error response data message
const unauthorized = 'UNAUTHORIZED';
const invalidSignature = 'INVALID_SIGNATURE';
const userNotExist = 'USER_NOT_EXIST';
const invalidEmail = 'INVALID_EMAIL';
const userExist = 'USER_EXIST';
