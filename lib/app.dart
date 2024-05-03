import 'package:flutter/material.dart'
    show BuildContext, MaterialApp, StatelessWidget, Widget;
import 'package:sky_ways/core/navigation/route_configuration.dart' show routes;
import 'package:sky_ways/core/resources/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: appTheme,
        onGenerateRoute: routes,
      );
}
