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
    bodyLarge: GoogleFonts.poppins(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      color: klightTextThemeColor,
    ),
    displayLarge: GoogleFonts.poppins(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: klightTextThemeColor,
    ),
    displayMedium: GoogleFonts.poppins(
      fontSize: 21.0,
      fontWeight: FontWeight.w700,
      color: klightTextThemeColor,
    ),
    displaySmall: GoogleFonts.poppins(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: klightTextThemeColor,
    ),
    titleLarge: GoogleFonts.poppins(
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

  static final darkTabBarTheme = TabBarTheme(
    indicator: BoxDecoration(
      color: kdarkAppBarColor,
    ),
  );

  static final lightTabBarTheme = TabBarTheme(
    indicator: BoxDecoration(
      color: klightAppBarColor,
    ),
  );

  // light theme
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: klightThemeColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: lightTextTheme,
    tabBarTheme: lightTabBarTheme,
  );

// dark theme
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: kdarkThemeColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: darkTextTheme,
    tabBarTheme: darkTabBarTheme,
  );

}
