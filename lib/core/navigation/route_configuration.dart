// ignore_for_file: strict_raw_type

import 'package:flutter/material.dart'
    show MaterialPageRoute, Route, RouteSettings;
import 'package:sky_ways/features/presentation/views/home_screen.dart';

Route routes(RouteSettings settings) => MaterialPageRoute(
      builder: (context) => switch (settings.name) {
        _ => const HomeScreen(),
      },
    );
