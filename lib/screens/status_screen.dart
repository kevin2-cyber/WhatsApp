import 'package:flutter/material.dart';
import '../constants-and-themes/constants_themes.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
            top: 489,
            left: 439,
            child: Container(
              height: 40,
              width: 40,
              child: FloatingActionButton(
                backgroundColor: WhatsAppTheme.kdarkAppBarColor,
                onPressed: () {},
                child: const Icon(
                  Icons.edit,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
