import 'package:flutter/material.dart'
    show
        BottomNavigationBarThemeData,
        BottomNavigationBarType,
        Brightness,
        ColorScheme,
        FontWeight,
        TextStyle,
        ThemeData;
import 'package:flutter/widgets.dart';
import 'package:sky_ways/core/resources/colors.dart'
    show hex4285F4, hex5D7285, hexFFFFFF, seedColor;
import 'package:sky_ways/core/resources/numbers.dart'
    show elevenDotNil, nilDotNilOne, twentyFourDotNil, twentyOneDotThreeSeven;
import 'package:sky_ways/core/resources/strings/fonts.dart' show poppins;

// ThemeData get appTheme => ThemeData.from(
//       useMaterial3: true,
//       colorScheme: ColorScheme.dark(),
//     );

ThemeData get lightTheme => ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: seedColor,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: hexFFFFFF,
        selectedIconTheme: IconThemeData(
          size: twentyFourDotNil,
          color: hex4285F4,
        ),
        unselectedIconTheme: IconThemeData(
          size: twentyFourDotNil,
          color: hex5D7285,
        ),
        selectedItemColor: hex4285F4,
        unselectedItemColor: hex5D7285,
        selectedLabelStyle: TextStyle(
          fontFamily: poppins,
          fontWeight: FontWeight.w600,
          fontSize: elevenDotNil,
          height: twentyOneDotThreeSeven / elevenDotNil,
          letterSpacing: nilDotNilOne,
        ),
        unselectedLabelStyle: TextStyle(
          fontFamily: poppins,
          fontWeight: FontWeight.w400,
          fontSize: elevenDotNil,
          height: twentyOneDotThreeSeven / elevenDotNil,
          letterSpacing: nilDotNilOne,
        ),
      ),
    );

ThemeData get darkTheme => ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: seedColor,
        brightness: Brightness.dark,
      ),
    );
