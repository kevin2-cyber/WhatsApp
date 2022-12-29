import 'package:flutter/material.dart';

import 'constants.dart';

class AndroidTheme {
  // dark text theme
  static TextTheme darkTextTheme = const TextTheme(
    bodyLarge: TextStyle(
        fontFamily: AndroidConstants.kFont,
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: AndroidConstants.kDarkTextThemeColor),
    displayLarge: TextStyle(
      fontFamily: AndroidConstants.kFont,
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: AndroidConstants.kDarkTextThemeColor,
    ),
    displayMedium: TextStyle(
      fontFamily: AndroidConstants.kFont,
      fontSize: 21,
      fontWeight: FontWeight.w700,
      color: AndroidConstants.kDarkTextThemeColor,
    ),
    displaySmall: TextStyle(
      fontFamily: AndroidConstants.kFont,
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: AndroidConstants.kDarkTextThemeColor,
    ),
    titleLarge: TextStyle(
      fontFamily: AndroidConstants.kFont,
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: AndroidConstants.kDarkTextThemeColor,
    ),
  );

  // light text theme
  static TextTheme lightTextTheme = const TextTheme(
    bodyLarge: TextStyle(
        fontFamily: AndroidConstants.kFont,
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: AndroidConstants.kLightTextThemeColor),
    displayLarge: TextStyle(
      fontFamily: AndroidConstants.kFont,
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: AndroidConstants.kLightTextThemeColor,
    ),
    displayMedium: TextStyle(
      fontFamily: AndroidConstants.kFont,
      fontSize: 21,
      fontWeight: FontWeight.w700,
      color: AndroidConstants.kLightTextThemeColor,
    ),
    displaySmall: TextStyle(
      fontFamily: AndroidConstants.kFont,
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: AndroidConstants.kLightTextThemeColor,
    ),
    titleLarge: TextStyle(
      fontFamily: AndroidConstants.kFont,
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: AndroidConstants.kLightTextThemeColor,
    ),
  );

  // dark tab bar theme
  static const darkTabBarTheme = TabBarTheme(
    indicator: BoxDecoration(
      color: Colors.transparent,
      border: Border(
        bottom: BorderSide(
          color: AndroidConstants.kFabColor,
          width: 3,
        ),
      ),
    ),
    labelColor: AndroidConstants.kFabColor,
    unselectedLabelColor: AndroidConstants.kLightTextThemeColor,
  );

  // light tab bar theme
  static const lightTabBarTheme = TabBarTheme(
    indicator: BoxDecoration(
      color: Colors.transparent,
      border: Border(
        bottom: BorderSide(
          color: Colors.white,
          width: 3,
        ),
      ),
    ),
    labelColor: Colors.white,
    unselectedLabelColor: AndroidConstants.kLightTextThemeColor,
  );

  // light theme
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: AndroidConstants.kLightThemeColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    tabBarTheme: lightTabBarTheme,
  );

  // dark theme
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: AndroidConstants.kDarkThemeColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    tabBarTheme: darkTabBarTheme,
  );
}
