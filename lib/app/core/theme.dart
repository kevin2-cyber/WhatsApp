import 'package:flutter/material.dart';

import 'constants.dart';

class AppTheme {
  // dark text theme
  static TextTheme darkTextTheme = const TextTheme(
    bodyLarge: TextStyle(
        fontFamily: AppConstants.kFont,
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: AppConstants.kDarkTextThemeColor),
    displayLarge: TextStyle(
      fontFamily: AppConstants.kFont,
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: AppConstants.kDarkTextThemeColor,
    ),
    displayMedium: TextStyle(
      fontFamily: AppConstants.kFont,
      fontSize: 21,
      fontWeight: FontWeight.w700,
      color: AppConstants.kDarkTextThemeColor,
    ),
    displaySmall: TextStyle(
      fontFamily: AppConstants.kFont,
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: AppConstants.kDarkTextThemeColor,
    ),
    titleLarge: TextStyle(
      fontFamily: AppConstants.kFont,
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: AppConstants.kDarkTextThemeColor,
    ),
  );

  // light text theme
  static TextTheme lightTextTheme = const TextTheme(
    bodyLarge: TextStyle(
        fontFamily: AppConstants.kFont,
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: AppConstants.kLightTextThemeColor),
    displayLarge: TextStyle(
      fontFamily: AppConstants.kFont,
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: AppConstants.kLightTextThemeColor,
    ),
    displayMedium: TextStyle(
      fontFamily: AppConstants.kFont,
      fontSize: 21,
      fontWeight: FontWeight.w700,
      color: AppConstants.kLightTextThemeColor,
    ),
    displaySmall: TextStyle(
      fontFamily: AppConstants.kFont,
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: AppConstants.kLightTextThemeColor,
    ),
    titleLarge: TextStyle(
      fontFamily: AppConstants.kFont,
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: AppConstants.kLightTextThemeColor,
    ),
  );

  // dark tab bar theme
  static const darkTabBarTheme = TabBarTheme(
    indicator: BoxDecoration(
      color: Colors.transparent,
      border: Border(
        bottom: BorderSide(
          color: AppConstants.kFabColor,
          width: 3,
        ),
      ),
    ),
    labelColor: AppConstants.kFabColor,
    unselectedLabelColor: AppConstants.kLightTextThemeColor,
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
    unselectedLabelColor: AppConstants.kLightTextThemeColor,
  );

  // light theme
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: AppConstants.kLightThemeColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    tabBarTheme: lightTabBarTheme,
  );

  // dark theme
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: AppConstants.kDarkThemeColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    tabBarTheme: darkTabBarTheme,
  );
}
