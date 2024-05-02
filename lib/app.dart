import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        onGenerateRoute: _routes,
      );

  Route<String> _routes(RouteSettings settings) => MaterialPageRoute(
        builder: (context) => Container(),
      );
}
