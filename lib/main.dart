import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants-and-themes/constants.dart';
// import 'package:whatsapp_clone/constants-and-themes/theme.dart';
import 'package:whatsapp_clone/screens/home_screen.dart';

void main() => runApp(const WhatsApp());

class WhatsApp extends StatelessWidget {
  const WhatsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: WhatsAppConstants.themeData,
      title: WhatsAppConstants.title,
      home: const Home(),
    );
  }
}
