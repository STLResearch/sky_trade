import 'package:sky_ways/core/injection_container/core.dart';
import 'package:sky_ways/core/injection_container/file_manager.dart';
import 'package:sky_ways/core/injection_container/link_handler.dart';
import 'package:sky_ways/core/injection_container/location.dart';
import 'package:sky_ways/core/injection_container/u_a_s_restrictions.dart';
import 'package:sky_ways/core/injection_container/web_3_auth.dart';

Future<void> registerServices() => Future.wait<void>([
      registerFileManagerServices(),
      registerLinkHandlerServices(),
      registerLocationServices(),
      registerUASRestrictionsServices(),
      registerWeb3AuthServices(),
      registerCoreServices(),
    ]);
