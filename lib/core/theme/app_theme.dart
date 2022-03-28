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
      color: Colors.white,
    ),
    headline1: GoogleFonts.poppins(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headline2: GoogleFonts.poppins(
      fontSize: 21.0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    headline3: GoogleFonts.poppins(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    headline6: GoogleFonts.poppins(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
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
}
