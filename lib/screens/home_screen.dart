import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_clone/constants-and-themes/constants_themes.dart';
import 'package:whatsapp_clone/screens/screens.dart';



class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            actions: const <Icon>[
              Icon(
                  Icons.search,
                color: WhatsAppTheme.kdarkTextThemeColor,
              ),
              Icon(
                  Icons.more_vert,
                color: WhatsAppTheme.kdarkTextThemeColor,
              ),
            ],
            backgroundColor: WhatsAppTheme.kdarkAppBarColor,
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Text(
                      'Chats',
                    style: GoogleFonts.poppins(
                      color: WhatsAppTheme.kdarkTextThemeColor,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                      'Status',
                    style: GoogleFonts.poppins(
                      color: WhatsAppTheme.kdarkTextThemeColor,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Calls',
                    style: GoogleFonts.poppins(
                      color: WhatsAppTheme.kdarkTextThemeColor,
                    ),
                  ),
                ),
              ],
            ),
            title: Text(
              WhatsAppConstants.title,
              style: GoogleFonts.poppins(
                color: WhatsAppTheme.kdarkTextThemeColor,
              ),
            ),
          ),
          body: const TabBarView(
            children: [
              ChatScreen(),
              StatusScreen(),
              CallScreen(),
            ],
          ),
    );
  }
}