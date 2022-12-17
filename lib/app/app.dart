import 'package:flutter/material.dart';
import 'package:whatsapp_clone/app/core/constants.dart';
import 'package:whatsapp_clone/app/core/theme.dart';
import 'package:whatsapp_clone/app/ui/home.dart';

class WhatsApp extends StatelessWidget {
  const WhatsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConstants.title,
      // using the system theme for switching
      themeMode: ThemeMode.system,
      theme: ThemeData.light().copyWith(
        textTheme: AppTheme.lightTextTheme,
        tabBarTheme: AppTheme.lightTabBarTheme,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData.dark().copyWith(
        textTheme: AppTheme.darkTextTheme,
        tabBarTheme: AppTheme.darkTabBarTheme,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DefaultTabController(
        length: 3,
          child: const Home(),
      ),
    );
  }
}
