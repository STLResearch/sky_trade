import 'package:sky_ways/core/injection_container/bluetooth.dart';
import 'package:sky_ways/core/injection_container/cache_manager.dart';
import 'package:sky_ways/core/injection_container/core.dart';
import 'package:sky_ways/core/injection_container/geo_hash.dart';
import 'package:sky_ways/core/injection_container/internet_connection_checker.dart';
import 'package:sky_ways/core/injection_container/link_handler.dart';
import 'package:sky_ways/core/injection_container/location.dart';
import 'package:sky_ways/core/injection_container/remote_i_d_receiver.dart';
import 'package:sky_ways/core/injection_container/u_a_s_activity.dart';
import 'package:sky_ways/core/injection_container/u_a_s_restrictions.dart';
import 'package:sky_ways/core/injection_container/web_3_auth.dart';
import 'package:sky_ways/core/injection_container/wifi.dart';

Future<void> registerServices() => Future.wait<void>([
      registerBluetoothServices(),
      registerCacheManagerServices(),
      registerGeoHashServices(),
      registerInternetConnectionCheckerServices(),
      registerLinkHandlerServices(),
      registerLocationServices(),
      registerRemoteIDReceiverServices(),
      registerUASActivityServices(),
      registerUASRestrictionsServices(),
      registerWeb3AuthServices(),
      registerWifiServices(),
      registerCoreServices(),
    ]);
