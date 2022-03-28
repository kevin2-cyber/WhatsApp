import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'theme.dart';

class WhatsAppTheme {
  static final ThemeData themeData = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: WhatsAppConstants.kdarkThemeColor,
  );
  static TextTheme lightTextTheme = TextTheme(
    bodyText1: GoogleFonts.poppins(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      color: WhatsAppConstants.klightTextThemeColor,
    ),
    headline1: GoogleFonts.poppins(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: WhatsAppConstants.klightTextThemeColor,
    ),
    headline2: GoogleFonts.poppins(
      fontSize: 21.0,
      fontWeight: FontWeight.w700,
      color: WhatsAppConstants.klightTextThemeColor,
    ),
    headline3: GoogleFonts.poppins(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: WhatsAppConstants.klightTextThemeColor,
    ),
    headline6: GoogleFonts.poppins(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: WhatsAppConstants.klightTextThemeColor,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    bodyText1: GoogleFonts.poppins(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      color: WhatsAppConstants.kdarkTextThemeColor,
    ),
    headline1: GoogleFonts.poppins(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: WhatsAppConstants.kdarkTextThemeColor,
    ),
    headline2: GoogleFonts.poppins(
      fontSize: 21.0,
      fontWeight: FontWeight.w700,
      color: WhatsAppConstants.kdarkTextThemeColor,
    ),
    headline3: GoogleFonts.poppins(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: WhatsAppConstants.kdarkTextThemeColor,
    ),
    headline6: GoogleFonts.poppins(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: WhatsAppConstants.kdarkTextThemeColor,
    ),
  );

  // light theme
  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      tabBarTheme: const TabBarTheme(),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: null,
        backgroundColor: Colors.green,
      ),
      textTheme: lightTextTheme,
    );
  }

// dark theme
  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      tabBarTheme: const TabBarTheme(),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: null,
        backgroundColor: WhatsAppConstants.kfabColor,
      ),
      textTheme: darkTextTheme,
    );
  }
}
