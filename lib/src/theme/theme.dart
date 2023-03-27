import 'package:flutter/material.dart';
import 'package:geepx_test/src/constants/color_palette.dart';
import 'package:google_fonts/google_fonts.dart';

class GeepxTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      backgroundColor: ColorPalette.whiteColor,
      iconTheme: IconThemeData(
        color: ColorPalette.blackColor,
        size: 25,
      ),
      titleTextStyle: TextStyle(
        color: ColorPalette.blackColor,
        fontSize: 22,
      ),
      elevation: 0.0,
    ),
    scaffoldBackgroundColor: ColorPalette.whiteColor,
    iconTheme: const IconThemeData(
      color: ColorPalette.blackColor,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      foregroundColor: ColorPalette.whiteColor,
      backgroundColor: ColorPalette.blackColor,
    ),
    textTheme: lightTextTheme,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
      foregroundColor: ColorPalette.whiteColor,
      backgroundColor: ColorPalette.blackColor,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      foregroundColor: ColorPalette.whiteColor,
      backgroundColor: ColorPalette.nBlueColor,
    ),
    iconTheme: const IconThemeData(
      color: ColorPalette.whiteColor,
      size: 25,
    ),
    textTheme: darkTextTheme,
  );

  static TextTheme lightTextTheme = TextTheme(
    bodyLarge: GoogleFonts.openSans(
      fontSize: 18.0,
      fontWeight: FontWeight.w700,
      color: ColorPalette.blackColor,
    ),
    bodyMedium: GoogleFonts.openSans(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: ColorPalette.blackColor,
    ),
    bodySmall: GoogleFonts.openSans(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: ColorPalette.blackColor,
    ),
    headlineLarge: GoogleFonts.openSans(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: ColorPalette.blackColor,
    ),
    headlineMedium: GoogleFonts.openSans(
      fontSize: 23.0,
      fontWeight: FontWeight.w600,
      color: ColorPalette.blackColor,
    ),
    headlineSmall: GoogleFonts.openSans(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: ColorPalette.blackColor,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    bodyLarge: GoogleFonts.openSans(
      fontSize: 16.0,
      fontWeight: FontWeight.w700,
      color: ColorPalette.whiteColor,
    ),
    bodyMedium: GoogleFonts.openSans(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: ColorPalette.whiteColor,
    ),
    bodySmall: GoogleFonts.openSans(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: ColorPalette.whiteColor,
    ),
    headlineLarge: GoogleFonts.openSans(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: ColorPalette.whiteColor,
    ),
    headlineMedium: GoogleFonts.openSans(
      fontSize: 25.0,
      fontWeight: FontWeight.w700,
      color: ColorPalette.whiteColor,
    ),
    headlineSmall: GoogleFonts.openSans(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: ColorPalette.whiteColor,
    ),
  );
}
