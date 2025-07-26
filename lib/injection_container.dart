import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_trade/core/injection_container/about.dart';
import 'package:sky_trade/core/injection_container/air_rights.dart';
import 'package:sky_trade/core/injection_container/auth.dart';
import 'package:sky_trade/core/injection_container/bluetooth.dart';
import 'package:sky_trade/core/injection_container/buy_air_rights.dart';
import 'package:sky_trade/core/injection_container/core.dart';
import 'package:sky_trade/core/injection_container/device_profile.dart';
import 'package:sky_trade/core/injection_container/drone_flight_path.dart';
import 'package:sky_trade/core/injection_container/drone_insights.dart';
import 'package:sky_trade/core/injection_container/external.dart';
import 'package:sky_trade/core/injection_container/geo_hash.dart';
import 'package:sky_trade/core/injection_container/internet_connection_checker.dart';
import 'package:sky_trade/core/injection_container/link_handler.dart';
import 'package:sky_trade/core/injection_container/location.dart';
import 'package:sky_trade/core/injection_container/referral.dart';
import 'package:sky_trade/core/injection_container/remote_i_d_receiver.dart';
import 'package:sky_trade/core/injection_container/remote_i_d_transmitter.dart';
import 'package:sky_trade/core/injection_container/rent_air_rights.dart';
import 'package:sky_trade/core/injection_container/rewards.dart';
import 'package:sky_trade/core/injection_container/search_autocomplete.dart';
import 'package:sky_trade/core/injection_container/settings.dart';
import 'package:sky_trade/core/injection_container/u_a_s_restrictions.dart';
import 'package:sky_trade/core/injection_container/update_manager.dart';
import 'package:sky_trade/core/injection_container/weather.dart';
import 'package:sky_trade/core/injection_container/wifi.dart';

final serviceLocator = GetIt.I;

Future<void> registerServices() => Future.wait<void>([
      registerAboutServices(),
      registerAirRightsServices(),
      registerAuthServices(),
      registerBluetoothServices(),
      registerBuyAirRightsServices(),
      registerDeviceProfileServices(),
      registerDroneFlightPathServices(),
      registerDroneInsightsServices(),
      registerGeoHashServices(),
      registerInternetConnectionCheckerServices(),
      registerLinkHandlerServices(),
      registerLocationServices(),
      registerReferralServices(),
      registerRemoteIDReceiverServices(),
      registerRemoteIDTransmitterServices(),
      registerRentAirRightsServices(),
      registerRewardsServices(),
      registerSearchAutocompleteServices(),
      registerSettingsServices(),
      registerUASRestrictionsServices(),
      registerUpdateManagerServices(),
      registerWeatherServices(),
      registerWifiServices(),
      registerCoreServices(),
      registerExternalServices(),
    ]);
