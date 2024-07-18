import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart' show WidgetsFlutterBinding, runApp;
import 'package:flutter_dotenv/flutter_dotenv.dart' show dotenv;
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart'
    show Bloc, HydratedBloc, HydratedStorage;
import 'package:path_provider/path_provider.dart'
    show getApplicationDocumentsDirectory;
import 'package:sky_ways/app.dart';
import 'package:sky_ways/app_bloc_observer.dart';
import 'package:sky_ways/core/resources/strings/environments.dart'
    show devEnvironment, flavours;
import 'package:sky_ways/core/resources/strings/environments.dart'
    show environmentVariablesFileName;
import 'package:sky_ways/core/resources/strings/special_characters.dart'
    show fullStop;
import 'package:sky_ways/injection_container.dart' show registerServices;

void main() => _initializeImportantResources().then(
      (_) => runApp(
        const App(),
      ),
    );

Future<void> _initializeImportantResources() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  FlutterNativeSplash.preserve(
    widgetsBinding: widgetsBinding,
  );

  await dotenv.load(
    fileName: environmentVariablesFileName +
        fullStop +
        const String.fromEnvironment(
          flavours,
          defaultValue: devEnvironment,
        ),
  );

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: switch (kIsWeb) {
      true => HydratedStorage.webStorageDirectory,
      false => await getApplicationDocumentsDirectory(),
    },
  );

  await registerServices();

  Bloc.observer = const AppBlocObserver();
}
