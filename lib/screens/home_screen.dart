import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_clone/screens/camera_screen.dart';
import 'package:whatsapp_clone/screens/screens.dart';
import '../core/constants-and-themes/constants_themes.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabIndex);
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabIndex);
    _tabController.dispose();
    super.dispose();
  }

  void _handleTabIndex() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            color: WhatsAppTheme.kdarkTextThemeColor,
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.more_vert,
            ),
            onPressed: () {},
            color: WhatsAppTheme.kdarkTextThemeColor,
          ),
        ],
        backgroundColor: WhatsAppTheme.kdarkAppBarColor,
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            // const Tab(
            //   child: SizedBox(
            //     width: 30,
            //     child: Icon(
            //       Icons.camera_alt,
            //     ),
            //   ),
            // ),
            Tab(
              child: Text(
                'CHATS',
                style: GoogleFonts.poppins(
                  color: WhatsAppTheme.kdarkTextThemeColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Tab(
              child: Text(
                'STATUS',
                style: GoogleFonts.poppins(
                  color: WhatsAppTheme.kdarkTextThemeColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Tab(
              child: Text(
                'CALLS',
                style: GoogleFonts.poppins(
                  color: WhatsAppTheme.kdarkTextThemeColor,
                  fontWeight: FontWeight.w500,
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
      body: TabBarView(
        controller: _tabController,
        children: const [
          CameraScreen(),
          ChatScreen(),
          StatusScreen(),
          CallScreen(),
        ],
      ),
      floatingActionButton: _bottomButtons(),
    );
  }

  Widget _bottomButtons() {
    return _tabController.index == 1
        ? FloatingActionButton(
            shape: const StadiumBorder(),
            onPressed: () {},
            backgroundColor: WhatsAppTheme.kfabColor,
            child: const Icon(
              Icons.message,
              size: 20.0,
              color: Colors.white,
            ))
        : _tabController.index == 2
            ? FloatingActionButton(
                shape: const StadiumBorder(),
                onPressed: () {},
                backgroundColor: WhatsAppTheme.kfabColor,
                child: const Icon(
                  Icons.camera_alt,
                  size: 20.0,
                  color: Colors.white,
                ))
            : FloatingActionButton(
                shape: const StadiumBorder(),
                onPressed: () {},
                backgroundColor: WhatsAppTheme.kfabColor,
                child: const Icon(
                  Icons.add_call,
                  size: 20.0,
                  color: Colors.white,
                ),
              );
  }
}
