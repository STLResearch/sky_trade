import 'package:flutter/material.dart'
    show Container, MaterialPageRoute, Route, RouteSettings;

Route<String> routes(RouteSettings settings) => MaterialPageRoute(
      builder: (context) => switch (settings.name) {
        _ => Container(),
      },
    );
