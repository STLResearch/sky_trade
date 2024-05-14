import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart' show WidgetsFlutterBinding, runApp;
import 'package:flutter_dotenv/flutter_dotenv.dart' show dotenv;
import 'package:hydrated_bloc/hydrated_bloc.dart'
    show HydratedBloc, HydratedStorage;
import 'package:path_provider/path_provider.dart'
    show getApplicationDocumentsDirectory;
import 'package:sky_ways/app.dart';
import 'package:sky_ways/injection_container.dart';

void main() => _initializeImportantResources().then(
      (_) => runApp(
        const App(),
      ),
    );

Future<void> _initializeImportantResources() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load();

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: switch (kIsWeb) {
      true => HydratedStorage.webStorageDirectory,
      false => await getApplicationDocumentsDirectory(),
    },
  );

  await registerServices();
}
