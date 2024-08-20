import 'package:flutter/material.dart'
    show BuildContext, MaterialApp, StatelessWidget, ThemeMode, Widget;
import 'package:flutter_bloc/flutter_bloc.dart' show MultiBlocProvider;
import 'package:flutter_gen/gen_l10n/app_localizations.dart'
    show AppLocalizations;
import 'package:sky_ways/app_bloc_provider.dart';
import 'package:sky_ways/core/navigation/route_configuration.dart';
import 'package:sky_ways/core/resources/theme.dart' show darkTheme, lightTheme;

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: appBlocProvider,
        child: MaterialApp(
          locale: AppLocalizations.supportedLocales.first,
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: ThemeMode.light,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          onGenerateRoute: routes,
        ),
      );
}
