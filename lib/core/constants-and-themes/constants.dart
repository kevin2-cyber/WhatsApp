import 'package:flutter/material.dart';

import 'constants_themes.dart';

class WhatsAppConstants {
  /*double sizes(BuildContext context) {
    double size = MediaQuery.of(context).size as double;
    return size;
  }*/
  static const String title = 'WhatsApp';
  static final ThemeData themeData = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: WhatsAppTheme.kdarkThemeColor,
  );
}