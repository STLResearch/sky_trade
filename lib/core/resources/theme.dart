import 'package:flutter/material.dart'
    show
        BorderRadius,
        BorderRadiusDirectional,
        BorderSide,
        BottomNavigationBarThemeData,
        BottomNavigationBarType,
        BottomSheetThemeData,
        Brightness,
        ButtonStyle,
        CheckboxThemeData,
        Color,
        ColorScheme,
        DividerThemeData,
        EdgeInsetsDirectional,
        ElevatedButtonThemeData,
        FontStyle,
        FontWeight,
        IconThemeData,
        InputDecorationTheme,
        OutlineInputBorder,
        OutlinedBorder,
        ProgressIndicatorThemeData,
        Radius,
        RoundedRectangleBorder,
        Size,
        SnackBarBehavior,
        SnackBarThemeData,
        TextStyle,
        TextTheme,
        ThemeData,
        WidgetStatePropertyAll;
import 'package:sky_ways/core/assets/generated/fonts.gen.dart';
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
        hexD9D9D9,
        hexE04F64,
        hexEBEBEB,
        hexFFFFFF;
import 'package:sky_ways/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        eighteenDotNil,
        elevenDotNil,
        fifteenDotNil,
        fiftyFiveDotNil,
        fourteenDotNil,
        nilDotNil,
        nilDotNilOne,
        oneDotNil,
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
          fontFamily: FontFamily.poppins,
          fontWeight: FontWeight.w400,
          fontSize: twelveDotNil,
          height: eighteenDotNil / twelveDotNil,
          color: hexB8B8B8,
        ),
        errorStyle: const TextStyle(
          fontFamily: FontFamily.poppins,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.italic,
          fontSize: elevenDotNil,
          height: sixteenDotFive / elevenDotNil,
          color: hexE04F64,
        ),
      ),
      textTheme: const TextTheme(
        bodySmall: TextStyle(
          fontFamily: FontFamily.poppins,
          fontWeight: FontWeight.w400,
          fontSize: twelveDotNil,
          height: eighteenDotNil / twelveDotNil,
          color: hex87878D,
        ),
        bodyMedium: TextStyle(
          fontFamily: FontFamily.poppins,
          fontWeight: FontWeight.w400,
          fontSize: sixteenDotNil,
          height: twentyFourDotNil / sixteenDotNil,
          color: hex222222,
        ),
        bodyLarge: TextStyle(
          fontFamily: FontFamily.poppins,
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
              fontFamily: FontFamily.poppins,
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
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        linearTrackColor: hex0653EA,
        circularTrackColor: hex0653EA,
        refreshBackgroundColor: hex0653EA,
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
          fontFamily: FontFamily.poppins,
          fontWeight: FontWeight.w600,
          fontSize: elevenDotNil,
          height: twentyOneDotThreeSeven / elevenDotNil,
          letterSpacing: nilDotNilOne,
        ),
        unselectedLabelStyle: TextStyle(
          fontFamily: FontFamily.poppins,
          fontWeight: FontWeight.w400,
          fontSize: elevenDotNil,
          height: twentyOneDotThreeSeven / elevenDotNil,
          letterSpacing: nilDotNilOne,
        ),
      ),
      snackBarTheme: const SnackBarThemeData(
        backgroundColor: hex0653EA,
        behavior: SnackBarBehavior.floating,
        contentTextStyle: TextStyle(
          fontFamily: FontFamily.poppins,
          fontWeight: FontWeight.w400,
          fontSize: twelveDotNil,
          height: eighteenDotNil / twelveDotNil,
          color: hexFFFFFF,
        ),
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: hexFFFFFF,
        showDragHandle: false,
        dragHandleColor: hexD9D9D9,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.vertical(
            top: Radius.circular(
              thirtyDotNil,
            ),
          ),
        ),
      ),
      dividerTheme: const DividerThemeData(
        color: hexEBEBEB,
        thickness: oneDotNil,
      ),
    );

ThemeData get darkTheme => ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: hex0653EA,
        brightness: Brightness.dark,
      ),
    );
