import 'package:flutter/material.dart';
// import 'package:whatsapp_clone/main.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'To start calling contacts who have',
            style: Theme.of(context).textTheme.bodyText2,
          ),
          Row(
            children: [
              Text(
                'WhatsApp, tap',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              // ignore: prefer_const_constructors
              Icon(
                Icons.add_call,
              ),
              Text(
                'at the bottom  of your',
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ],
          ),
          Text(
            'screen.',
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
    );
  }
}
