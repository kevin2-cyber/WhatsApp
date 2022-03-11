import 'package:flutter/material.dart';
// import 'package:whatsapp_clone/main.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height1 = MediaQuery.of(context).size.height;
    return Container(
        height: height1 - 1,
       // width: 200,
        // color: Colors.green,
    );
  }
}
