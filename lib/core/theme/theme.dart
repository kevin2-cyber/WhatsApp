import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WhatsAppTheme {
  static final ThemeData themeData = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: kdarkThemeColor,
  );
  static const kdarkAppBarColor = Color(0xFF1F2C34);
  static const kdarkThemeColor = Color(0xFF121B22);
  static const klightThemeColor = Colors.white;
  static const klightAppBarColor = Color(0xFF008069);
  static const kdarkTextThemeColor = Color(0xFF818E96);
  static const klightTextThemeColor = Color(0xFFDFEBF1);
  static const kfabColor = Color(0xFF00A884);
  static const String title = 'WhatsApp';

  static TextTheme lightTextTheme = TextTheme(
    bodyText1: GoogleFonts.poppins(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      color: klightTextThemeColor,
    ),
    headline1: GoogleFonts.poppins(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: klightTextThemeColor,
    ),
    headline2: GoogleFonts.poppins(
      fontSize: 21.0,
      fontWeight: FontWeight.w700,
      color: klightTextThemeColor,
    ),
    headline3: GoogleFonts.poppins(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: klightTextThemeColor,
    ),
    headline6: GoogleFonts.poppins(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: klightTextThemeColor,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    bodyText1: GoogleFonts.redRose(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      color: kdarkTextThemeColor,
    ),
    headline1: GoogleFonts.redRose(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: kdarkTextThemeColor,
    ),
    headline2: GoogleFonts.poppins(
      fontSize: 21.0,
      fontWeight: FontWeight.w700,
      color: kdarkTextThemeColor,
    ),
    headline3: GoogleFonts.redRose(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: kdarkTextThemeColor,
    ),
    headline6: GoogleFonts.redRose(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: kdarkTextThemeColor,
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
        backgroundColor: kfabColor,
      ),
      textTheme: darkTextTheme,
    );
  }
}
