import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: Container(
          padding: const EdgeInsets.only(left: 5),
          color: Colors.green.shade900,
          child: Column(
            children: [
              const SizedBox(
                height: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children:[
                      Text(
                          WhatsAppConstants.title,
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.search,
                      ),
                      Icon(
                        Icons.more_vert,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  // Icon(Icons.camera_alt),
                  Text('Chats'),
                  Text('Status'),
                  Text('Calls'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
