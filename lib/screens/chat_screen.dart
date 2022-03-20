import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/profile_entity.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Profiles? profiles;
    return Container(
      child: ListView.builder(
        itemCount: profiles?.profiles.length,
          itemBuilder: (context, index) {
          return profiles;
          }
      )
    );
  }
}
