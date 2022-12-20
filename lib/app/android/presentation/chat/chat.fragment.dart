import 'package:flutter/material.dart';

class ChatFragment extends StatelessWidget {
  const ChatFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (context,int index) {
          return Row();
        },
      ),
    );
  }
}
