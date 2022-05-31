import 'package:flutter/material.dart';

import '../../utils/theme.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'To start calling contacts who have',
          style: AppTheme.darkTextTheme.headline3,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 110.0),
          child: Row(
            children: [
              Text(
                'WhatsApp, tap',
                style: AppTheme.darkTextTheme.headline3,
              ),
              const SizedBox(
                width: 6.0,
              ),
              const Icon(
                Icons.add_call,
                color: AppTheme.kdarkTextThemeColor,
              ),
              const SizedBox(
                width: 6.0,
              ),
              Text(
                'at the bottom  of your',
                style: AppTheme.darkTextTheme.headline3,
              ),
            ],
          ),
        ),
        Text(
          'screen.',
          style: AppTheme.darkTextTheme.headline3,
        ),
      ],
    );
  }
}
