import 'package:flutter/material.dart';

import 'android/core/constants.dart';
import 'android/core/theme.dart';
import 'android/presentation/home.dart';

class WhatsApp extends StatelessWidget {
  const WhatsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // if (Platform.isAndroid) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: AndroidConstants.title,
        // using the system theme for switching
        themeMode: ThemeMode.system,
        theme: MaterialTheme.main(),
        home: const DefaultTabController(
          length: 3,
          child: Home(),
        ),
      );
    // } else if(Platform.isIOS) {
    //   return const CupertinoApp(
    //     debugShowCheckedModeBanner: false,
    //     title: AppConstants.title,
    //     home: CupertinoHome(),
    //   );
    // } else {
    //   return const MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     home: WhatsAppWeb(),
    //   );
    // }
  }
}
