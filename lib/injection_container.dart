import 'package:sky_ways/core/injection_container/core.dart';
import 'package:sky_ways/core/injection_container/link_handler.dart';
import 'package:sky_ways/core/injection_container/location.dart';
import 'package:sky_ways/core/injection_container/u_a_s_restrictions.dart';
import 'package:sky_ways/core/injection_container/web_3_auth.dart';

Future<void> registerServices() async {
  await registerLinkHandlerServices();

  await registerLocationServices();

  await registerUASRestrictionsServices();

  await registerWeb3AuthServices();

  await registerCoreServices();
}
