import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants_theme.dart';
import 'package:whatsapp_clone/screens/home_screen.dart';

void main() => runApp(const WhatsApp());

class WhatsApp extends StatelessWidget {
  const WhatsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: WhatsAppTheme.title,
      home: Home(),
    );
  }
}
