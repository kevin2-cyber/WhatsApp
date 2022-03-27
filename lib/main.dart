import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/screens.dart';
import 'core/constants-and-themes/theme.dart';

void main() => runApp(const WhatsApp());

class WhatsApp extends StatelessWidget {
  const WhatsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: WhatsAppTheme.themeData,
      title: WhatsAppConstants.title,
      home: const DefaultTabController(
        length: 3,
        child: Home(),
      ),
    );
  }
}
