import 'package:flutter/material.dart';

import 'constants.dart';

class MaterialTheme {

  // main theme
  static ThemeData main({bool isDark = false}) {
    return ThemeData();
  }

  // dark text theme
  static TextTheme darkTextTheme = const TextTheme(
    bodyLarge: TextStyle(
        fontFamily: MaterialConstants.kFont,
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: MaterialConstants.kDarkTextThemeColor),
    displayLarge: TextStyle(
      fontFamily: MaterialConstants.kFont,
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: MaterialConstants.kDarkTextThemeColor,
    ),
    displayMedium: TextStyle(
      fontFamily: MaterialConstants.kFont,
      fontSize: 21,
      fontWeight: FontWeight.w700,
      color: MaterialConstants.kDarkTextThemeColor,
    ),
    displaySmall: TextStyle(
      fontFamily: MaterialConstants.kFont,
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: MaterialConstants.kDarkTextThemeColor,
    ),
    titleLarge: TextStyle(
      fontFamily: MaterialConstants.kFont,
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: MaterialConstants.kDarkTextThemeColor,
    ),
  );

  // light text theme
  static TextTheme lightTextTheme = const TextTheme(
    bodyLarge: TextStyle(
        fontFamily: MaterialConstants.kFont,
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: MaterialConstants.kLightTextThemeColor),
    displayLarge: TextStyle(
      fontFamily: MaterialConstants.kFont,
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: MaterialConstants.kLightTextThemeColor,
    ),
    displayMedium: TextStyle(
      fontFamily: MaterialConstants.kFont,
      fontSize: 21,
      fontWeight: FontWeight.w700,
      color: MaterialConstants.kLightTextThemeColor,
    ),
    displaySmall: TextStyle(
      fontFamily: MaterialConstants.kFont,
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: MaterialConstants.kLightTextThemeColor,
    ),
    titleLarge: TextStyle(
      fontFamily: MaterialConstants.kFont,
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: MaterialConstants.kLightTextThemeColor,
    ),
  );

  // dark tab bar theme
  static const darkTabBarTheme = TabBarTheme(
    indicator: BoxDecoration(
      color: Colors.transparent,
      border: Border(
        bottom: BorderSide(
          color: MaterialConstants.kFabColor,
          width: 3,
        ),
      ),
    ),
    labelColor: MaterialConstants.kFabColor,
    unselectedLabelColor: MaterialConstants.kLightTextThemeColor,
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
    unselectedLabelColor: MaterialConstants.kLightTextThemeColor,
  );

  // light theme
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: MaterialConstants.kLightThemeColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    tabBarTheme: lightTabBarTheme,
  );

  // dark theme
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: MaterialConstants.kDarkThemeColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    tabBarTheme: darkTabBarTheme,
  );
}
