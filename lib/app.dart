import 'package:flutter/material.dart'
    show BuildContext, MaterialApp, StatelessWidget, Widget;
import 'package:flutter_gen/gen_l10n/app_localizations.dart'
    show AppLocalizations;
import 'package:sky_ways/core/navigation/route_configuration.dart' show routes;
import 'package:sky_ways/core/resources/theme.dart' show lightTheme;

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        locale: AppLocalizations.supportedLocales.first,
        theme: lightTheme,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        onGenerateRoute: routes,
      );
}
