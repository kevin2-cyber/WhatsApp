import 'package:flutter/material.dart';
import 'package:whatsapp_clone/app/core/constants.dart';

class StatusFragment extends StatelessWidget {
  const StatusFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 489,
          left: 439,
          child: SizedBox(
            height: 40,
            width: 40,
            child: FloatingActionButton(
              backgroundColor: AppConstants.kDarkAppBarColor,
              onPressed: (){},
              child: const Icon(
                  Icons.edit,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
