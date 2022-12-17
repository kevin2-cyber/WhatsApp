import 'package:flutter/material.dart';

import 'constants.dart';

class AppTheme {

  // light text theme
  static TextTheme darkTextTheme = TextTheme(
    bodyLarge: TextStyle(
      fontFamily: AppConstants.kFont,
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
    ),
  );

  // dark tab bar theme
  static const darkTabBarTheme = TabBarTheme(
    indicator: BoxDecoration(
      color: AppConstants.kDarkAppBarColor,
    ),
  );

  // light tab bar theme
  static const lightTabBarTheme = TabBarTheme(
    indicator: BoxDecoration(
      color: AppConstants.kLightAppBarColor,
    ),
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