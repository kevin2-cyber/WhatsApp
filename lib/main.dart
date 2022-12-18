import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_clone/app/app.dart';

void main() {

  ErrorWidget.builder = (FlutterErrorDetails details) => Material(
    color: Colors.green.shade900.withBlue(100),
    child: Center(
      child: Text(
        details.exception.toString(),
        style: GoogleFonts.lexendDeca(
          color: Colors.grey,
          fontWeight: FontWeight.w300,
          fontSize: 18,
        ),
      ),
    ),
  );

  WidgetsFlutterBinding.ensureInitialized();

  runApp(const WhatsApp());
}