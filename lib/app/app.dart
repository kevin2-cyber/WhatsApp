import 'package:flutter/material.dart';
import 'package:whatsapp_clone/app/core/constants.dart';
import 'package:whatsapp_clone/app/core/theme.dart';
import 'package:whatsapp_clone/app/presentation/home.dart';

class WhatsApp extends StatelessWidget {
  const WhatsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
  }
}
