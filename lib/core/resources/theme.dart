import 'package:flutter/material.dart' show Brightness, ColorScheme, ThemeData;
import 'package:sky_ways/core/resources/colors.dart' show seedColor;

ThemeData get appTheme => ThemeData.from(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: seedColor,
        brightness: Brightness.light,
      ),
    );
