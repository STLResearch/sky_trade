import 'package:flutter/material.dart'
    show
        BorderRadius,
        BorderSide,
        BottomNavigationBarThemeData,
        BottomNavigationBarType,
        Brightness,
        ButtonStyle,
        CheckboxThemeData,
        Color,
        ColorScheme,
        EdgeInsetsDirectional,
        ElevatedButtonThemeData,
        FontStyle,
        FontWeight,
        IconThemeData,
        InputDecorationTheme,
        OutlineInputBorder,
        OutlinedBorder,
        RoundedRectangleBorder,
        Size,
        TextStyle,
        TextTheme,
        ThemeData,
        WidgetStatePropertyAll;
import 'package:sky_ways/core/resources/colors.dart'
    show
        hex00000033,
        hex0653EA,
        hex222222,
        hex4285F4,
        hex5D7285,
        hex87878D,
        hexB8B8B8,
        hexCCCCCC,
        hexE04F64,
        hexFFFFFF;
import 'package:sky_ways/core/resources/numbers.dart'
    show
        eightDotNil,
        eighteenDotNil,
        elevenDotNil,
        fifteenDotNil,
        fiftyFiveDotNil,
        fourteenDotNil,
        nilDotNil,
        nilDotNilOne,
        sixteenDotFive,
        sixteenDotNil,
        thirtyDotNil,
        twelveDotNil,
        twentyDotNil,
        twentyFourDotNil,
        twentyOneDotThreeSeven,
        twentyTwoDotFive,
        twentyTwoDotNil,
        two,
        twoDotNil;
import 'package:sky_ways/core/resources/strings/fonts.dart' show poppins;

ThemeData get lightTheme => ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: hex0653EA,
      ),
      scaffoldBackgroundColor: hexFFFFFF,
      inputDecorationTheme: InputDecorationTheme(
        errorMaxLines: two,
        contentPadding: const EdgeInsetsDirectional.symmetric(
          vertical: fourteenDotNil,
          horizontal: twentyTwoDotNil,
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: hex87878D,
          ),
          borderRadius: BorderRadius.circular(
            eightDotNil,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: hex87878D,
          ),
          borderRadius: BorderRadius.circular(
            eightDotNil,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: hexCCCCCC,
          ),
          borderRadius: BorderRadius.circular(
            eightDotNil,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: hex87878D,
          ),
          borderRadius: BorderRadius.circular(
            eightDotNil,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: hexE04F64,
          ),
          borderRadius: BorderRadius.circular(
            eightDotNil,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: hexE04F64,
          ),
          borderRadius: BorderRadius.circular(
            eightDotNil,
          ),
        ),
        hintStyle: const TextStyle(
          fontFamily: poppins,
          fontWeight: FontWeight.w400,
          fontSize: twelveDotNil,
          height: eighteenDotNil / twelveDotNil,
          color: hexB8B8B8,
        ),
        errorStyle: const TextStyle(
          fontFamily: poppins,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.italic,
          fontSize: elevenDotNil,
          height: sixteenDotFive / elevenDotNil,
          color: hexE04F64,
        ),
      ),
      textTheme: const TextTheme(
        bodySmall: TextStyle(
          fontFamily: poppins,
          fontWeight: FontWeight.w400,
          fontSize: twelveDotNil,
          height: eighteenDotNil / twelveDotNil,
          color: hex87878D,
        ),
        bodyMedium: TextStyle(
          fontFamily: poppins,
          fontWeight: FontWeight.w400,
          fontSize: sixteenDotNil,
          height: twentyFourDotNil / sixteenDotNil,
          color: hex222222,
        ),
        bodyLarge: TextStyle(
          fontFamily: poppins,
          fontWeight: FontWeight.w500,
          fontSize: twentyDotNil,
          height: thirtyDotNil / twentyDotNil,
          color: hex222222,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        checkColor: const WidgetStatePropertyAll<Color>(
          hexFFFFFF,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            twoDotNil,
          ),
          side: const BorderSide(
            color: hex87878D,
            width: twoDotNil,
          ),
        ),
        side: const BorderSide(
          color: hex87878D,
          width: twoDotNil,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: const WidgetStatePropertyAll<Color>(
            hex0653EA,
          ),
          textStyle: const WidgetStatePropertyAll<TextStyle>(
            TextStyle(
              fontFamily: poppins,
              fontWeight: FontWeight.w400,
              fontSize: fifteenDotNil,
              height: twentyTwoDotFive / fifteenDotNil,
              color: hexFFFFFF,
            ),
          ),
          shape: WidgetStatePropertyAll<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                eightDotNil,
              ),
            ),
          ),
          elevation: const WidgetStatePropertyAll<double>(
            nilDotNil,
          ),
          fixedSize: const WidgetStatePropertyAll<Size>(
            Size.fromHeight(
              fiftyFiveDotNil,
            ),
          ),
        ),
      ),
      dividerColor: hex00000033,
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
        seedColor: hex0653EA,
        brightness: Brightness.dark,
      ),
    );
