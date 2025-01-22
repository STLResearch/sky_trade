import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_trade/core/injection_container/air_rights.dart';
import 'package:sky_trade/core/injection_container/auth.dart';
import 'package:sky_trade/core/injection_container/bluetooth.dart';
import 'package:sky_trade/core/injection_container/cache_manager.dart';
import 'package:sky_trade/core/injection_container/core.dart';
import 'package:sky_trade/core/injection_container/external.dart';
import 'package:sky_trade/core/injection_container/geo_hash.dart';
import 'package:sky_trade/core/injection_container/insights.dart';
import 'package:sky_trade/core/injection_container/internet_connection_checker.dart';
import 'package:sky_trade/core/injection_container/link_handler.dart';
import 'package:sky_trade/core/injection_container/location.dart';
import 'package:sky_trade/core/injection_container/remote_i_d_receiver.dart';
import 'package:sky_trade/core/injection_container/remote_i_d_transmitter.dart';
import 'package:sky_trade/core/injection_container/rent_air_rights.dart';
import 'package:sky_trade/core/injection_container/search_autocomplete.dart';
import 'package:sky_trade/core/injection_container/settings.dart';
import 'package:sky_trade/core/injection_container/u_a_s_restrictions.dart';
import 'package:sky_trade/core/injection_container/weather.dart';
import 'package:sky_trade/core/injection_container/wifi.dart';

final serviceLocator = GetIt.I;

Future<void> registerServices() => Future.wait<void>([
      registerAirRightsServices(),
      registerAuthServices(),
      registerBluetoothServices(),
      registerCacheManagerServices(),
      registerGeoHashServices(),
      registerInsightsServices(),
      registerInternetConnectionCheckerServices(),
      registerLinkHandlerServices(),
      registerLocationServices(),
      registerRemoteIDReceiverServices(),
      registerRemoteIDTransmitterServices(),
      registerRentAirRightsServices(),
      registerSearchAutocompleteServices(),
      registerSettingsServices(),
      registerUASRestrictionsServices(),
      registerWeatherServices(),
      registerWifiServices(),
      registerCoreServices(),
      registerExternalServices(),
    ]);
