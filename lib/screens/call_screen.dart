import 'package:flutter/material.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text('To start calling contacts who have'),
          Row(
            children: const [
              Text('WhatsApp, tap'),
              Icon(Icons.add_call),
              Text('at the bottom  of your')
            ],
          ),
          const Text('screen.')
        ],
      ),
    );
  }
}
