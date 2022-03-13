import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
          children: [
            FloatingActionButton(
            onPressed: () {  },
            child: const Icon(
              Icons.add,
            ),
          ),
    ],
        ),
    );
  }
}
