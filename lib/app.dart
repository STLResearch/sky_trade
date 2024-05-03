import 'package:flutter/material.dart';

import 'package:sky_ways/core/resources/colors.dart' show seedColor;

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData.from(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: seedColor,
            brightness: Brightness.dark,
          ),
        ),
        onGenerateRoute: _routes,
      );

  Route<String> _routes(RouteSettings settings) => MaterialPageRoute(
        builder: (context) => Container(),
      );
}
