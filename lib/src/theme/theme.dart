import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geepx_test/src/constants/color_palette.dart';
import 'package:google_fonts/google_fonts.dart';

class GeepxTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      backgroundColor: ColorPalette.whiteColor,
      iconTheme: IconThemeData(
        color: Color(0xFF43474E),
        size: 25,
      ),
      titleTextStyle: TextStyle(
        color: ColorPalette.blackColor,
        fontSize: 22,
      ),
      elevation: 0.0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: ColorPalette.whiteColor,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
    ),
    cardTheme: const CardTheme(
      color: Color(0XFFFBFCFE),
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
    ),
    scaffoldBackgroundColor: const Color(0xFFFFFFFF),
    iconTheme: const IconThemeData(
      color: Color(0XFF001C39),
    ),
    dividerTheme: const DividerThemeData(
      color: Color(0xFFC3C6CF),
      thickness: 1.5,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        iconColor: const Color(0xFF195FA7),
        foregroundColor: const Color(0xFF195FA7),
      ),
    ),
    chipTheme: const ChipThemeData(
      backgroundColor: Color(0xFFFBFCFE),
      elevation: 0.0,
      side: BorderSide(
        color: Color(0xFFC3C6CF),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      labelStyle: TextStyle(
        color: Color(0xFF43474E),
      ),
      checkmarkColor: Color(0xFF001C39),
      selectedColor: Color(0xFFD4E3FF),
      secondarySelectedColor: Color(0xFF001C39),
      disabledColor: Color(0xFFFBFCFE),
      showCheckmark: true,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      foregroundColor: Color(0xFF001C39),
      backgroundColor: Color(0xFFD4E3FF),
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
      color: Color(0xFFe9eff7),
      height: 80,
      surfaceTintColor: Color(0xFF43474E),
      elevation: 1.0,
    ),
    textTheme: lightTextTheme,
  );

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xFF191C1E),
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
      foregroundColor: Color(0xFFC3C6CF),
      backgroundColor: Color(0xFF191C1E),
      elevation: 0.0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Color(0xFF191C1E),
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
    ),
    dividerTheme: const DividerThemeData(
      color: Color(0xFF43474E),
      thickness: 1.5,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      foregroundColor: Color(0xFFD4E3FF),
      backgroundColor: Color(0xFF004883),
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
      color: Color(0xFF242A30),
      height: 80,
      elevation: 0.0,
      surfaceTintColor: Color(0xFFC3C6CF),
    ),
    iconTheme: const IconThemeData(
      color: Color(0XFFD4E3FF),
    ),
    cardTheme: const CardTheme(
      color: Color.fromARGB(255, 50, 55, 58),
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        iconColor: const Color(0xFFA4C8FF),
        foregroundColor: const Color(0xFFA4C8FF),
      ),
    ),
    chipTheme: const ChipThemeData(
      backgroundColor: Color(0xFF1E1E1E),
      elevation: 0.0,
      side: BorderSide(
        color: Color(0xFFD4E3FF),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      labelStyle: TextStyle(
        color: Color(0xFFD4E3FF),
      ),
      selectedColor: Color(0xFF004883),
      showCheckmark: true,
    ),
    textTheme: darkTextTheme,
  );

  static TextTheme lightTextTheme = TextTheme(
    bodyLarge: GoogleFonts.roboto(
      fontSize: 16.0,
      fontWeight: FontWeight.w700,
      color: ColorPalette.blackColor,
    ),
    bodyMedium: GoogleFonts.roboto(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: ColorPalette.blackColor,
    ),
    bodySmall: GoogleFonts.roboto(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: ColorPalette.blackColor,
    ),
    labelLarge: GoogleFonts.roboto(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: const Color(0xFF6C7C95),
    ),
    labelMedium: GoogleFonts.roboto(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: const Color(0xFF6C7C95),
    ),
    labelSmall: GoogleFonts.roboto(
      fontSize: 11.0,
      fontWeight: FontWeight.w500,
      color: const Color(0xFF6C7C95),
    ),
    headlineLarge: GoogleFonts.roboto(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: ColorPalette.blackColor,
    ),
    headlineMedium: GoogleFonts.roboto(
      fontSize: 28.0,
      fontWeight: FontWeight.w600,
      color: ColorPalette.blackColor,
    ),
    headlineSmall: GoogleFonts.roboto(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      color: ColorPalette.blackColor,
    ),
    titleMedium: GoogleFonts.roboto(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: const Color(0xFF6C7C95),
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    bodyLarge: GoogleFonts.roboto(
      fontSize: 16.0,
      fontWeight: FontWeight.w700,
      color: ColorPalette.whiteColor,
    ),
    bodyMedium: GoogleFonts.roboto(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: ColorPalette.whiteColor,
    ),
    bodySmall: GoogleFonts.roboto(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: ColorPalette.whiteColor,
    ),
    labelLarge: GoogleFonts.roboto(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: const Color(0xFFA4C9FF),
    ),
    labelMedium: GoogleFonts.roboto(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: const Color(0xFFA4C9FF),
    ),
    labelSmall: GoogleFonts.roboto(
      fontSize: 11.0,
      fontWeight: FontWeight.w500,
      color: const Color(0xFFA4C9FF),
    ),
    headlineLarge: GoogleFonts.roboto(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: ColorPalette.whiteColor,
    ),
    headlineMedium: GoogleFonts.roboto(
      fontSize: 28.0,
      fontWeight: FontWeight.w600,
      color: ColorPalette.whiteColor,
    ),
    headlineSmall: GoogleFonts.roboto(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      color: ColorPalette.whiteColor,
    ),
    titleMedium: GoogleFonts.roboto(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: const Color(0xFFA4C9FF),
    ),
  );

  static final defaultLightColorScheme =
      ColorScheme.fromSwatch(primarySwatch: Colors.blue);

  static final defaultDarkColorScheme = ColorScheme.fromSwatch(
      primarySwatch: Colors.blue, brightness: Brightness.dark);
}
