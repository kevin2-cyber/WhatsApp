import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/screens.dart';
import '../core/theme/theme.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  ValueNotifier<bool> isDialOpen = ValueNotifier(false);

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
            Tab(
              child: Text(
                'CHATS',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Tab(
              child: Text(
                'STATUS',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Tab(
              child: Text(
                'CALLS',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ],
        ),
        title: Text(
          WhatsAppTheme.title,
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          ChatScreen(),
          StatusScreen(),
          CallScreen(),
        ],
      ),
      floatingActionButton: _bottomButtons(),
    );
  }

  Widget _bottomButtons() {
    return _tabController.index == 0
        ? FloatingActionButton(
            // shape: const StadiumBorder(),
            onPressed: () {},
            backgroundColor: WhatsAppTheme.kfabColor,
            child: const Icon(
              Icons.message,
              size: 20.0,
              color: Colors.white,
            ))
        : _tabController.index == 1
            ? Column(
      mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 40.0,
                  width: 40.0,
                  child: FloatingActionButton(
                      shape: const StadiumBorder(),
                      onPressed: () {},
                      backgroundColor: WhatsAppTheme.kdarkAppBarColor,
                      child: const Icon(
                        Icons.edit,
                        size: 20.0,
                        color: Colors.white,
                      )),
                ),
                FloatingActionButton(
                    shape: const StadiumBorder(),
                    onPressed: () {},
                    backgroundColor: WhatsAppTheme.kfabColor,
                    child: const Icon(
                      Icons.camera_alt,
                      size: 20.0,
                      color: Colors.white,
                    )),
              ],
            )
            : FloatingActionButton(
                // shape: const StadiumBorder(),
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
