import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/app/core/constants.dart';
import 'package:whatsapp_clone/app/core/theme.dart';
import 'package:whatsapp_clone/app/ios/presentation/home.dart';
import 'package:whatsapp_clone/app/web/presentation/home.dart';

import 'android/presentation/home.dart';

class WhatsApp extends StatelessWidget {
  const WhatsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppConstants.title,
        // using the system theme for switching
        themeMode: ThemeMode.system,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        home: const DefaultTabController(
          length: 3,
          child: Home(),
        ),
      );
    } else if(Platform.isIOS) {
      return CupertinoApp(
        debugShowCheckedModeBanner: false,
        title: AppConstants.title,
        home: CupertinoHome(),
      );
    } else {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WhatsAppWeb(),
      );
    }
  }
}
