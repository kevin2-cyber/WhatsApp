import 'package:flutter/material.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'To start calling contacts who have',
          style: Theme.of(context).textTheme.bodyText2,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 110.0),
          child: Row(
            children: [
              Text(
                'WhatsApp, tap',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              //
              // ignore: prefer_const_constructors
              SizedBox(
                width: 6.0,
              ),
              Icon(
                Icons.add_call,
              ),
              SizedBox(
                width: 6.0,
              ),
              Text(
                'at the bottom  of your',
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ],
          ),
        ),
        Text(
          'screen.',
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ],
    );
  }
}
