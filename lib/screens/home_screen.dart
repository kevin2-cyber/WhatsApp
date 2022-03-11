import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_clone/constants-and-themes/constants.dart';
import 'package:whatsapp_clone/screens/call_screen.dart';
import 'package:whatsapp_clone/constants-and-themes/theme.dart';

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
        preferredSize: const Size.fromHeight(100.0),
        child: Container(
          padding: const EdgeInsets.only(left: 5, top: 43),
          color: WhatsAppTheme.kdarkAppBarColor,
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
                        style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.headline6,
                          color: WhatsAppTheme.kdarkTextThemeColor,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.search,
                        color: WhatsAppTheme.kdarkTextThemeColor,
                      ),
                      Icon(
                        Icons.more_vert,
                        color: WhatsAppTheme.kdarkTextThemeColor,
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
                children: [
                  // Icon(Icons.camera_alt),
                  GestureDetector(
                      child: Text(
                          'Chats',
                        style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.headline6,
                          color: WhatsAppTheme.kdarkTextThemeColor,
                        ),
                      ),
                  ),
                  GestureDetector(
                      child: Text(
                          'Status',
                        style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.headline6,
                          color: WhatsAppTheme.kdarkTextThemeColor,
                        ),
                      ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const CallScreen()));
                    },
                    child: Text(
                        'Calls',
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.headline6,
                        color: WhatsAppTheme.kdarkTextThemeColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
