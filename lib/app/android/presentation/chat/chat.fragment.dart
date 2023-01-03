import 'package:flutter/material.dart';

class ChatFragment extends StatelessWidget {
  const ChatFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      child: ListView.separated(
        itemBuilder: (context,int index) => Row(),
        separatorBuilder: (context, int index) => const Divider(),
        itemCount: 3,
      ),
    );
  }
}
