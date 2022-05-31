import 'package:flutter/material.dart';

import '../../utils/theme.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
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
            color: AppTheme.kdarkTextThemeColor,
              onPressed: () {},
              icon: const Icon(
                  Icons.search
              ),
          ),
          IconButton(
            icon: const Icon(
              Icons.more_vert,
            ),
            onPressed: () {},
            color: AppTheme.kdarkTextThemeColor,
          ),
        ],
        backgroundColor: AppTheme.kdarkAppBarColor,
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            const SizedBox(
              height: 40,
              width: 10,
              child: Icon(
                Icons.camera_alt,
                color: AppTheme.kdarkTextThemeColor,
              ),
            ),
            SizedBox(
              height: 40,
              child: Text(
                'CHATS',
                style: AppTheme.darkTextTheme.headline3,
              ),
            ),
            SizedBox(
              height: 40,
              child: Text(
                'STATUS',
                style: AppTheme.darkTextTheme.headline3,
              ),
            ),
            SizedBox(
              height: 40,
              child: Text(
                'CALLS',
                style: AppTheme.darkTextTheme.headline3,
              ),
            ),
          ],
        ),
        title: Text(
            AppTheme.title,
          style: AppTheme.darkTextTheme.headline2,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Container(),
          Container(),
          Container(),
          Container(),
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
        backgroundColor: AppTheme.kfabColor,
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
              backgroundColor: AppTheme.kdarkAppBarColor,
              child: const Icon(
                Icons.edit,
                size: 20.0,
                color: Colors.white,
              )),
        ),
        const SizedBox(
          height: 10.0,
        ),
        FloatingActionButton(
            shape: const StadiumBorder(),
            onPressed: () {},
            backgroundColor: AppTheme.kfabColor,
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
      backgroundColor: AppTheme.kfabColor,
      child: const Icon(
        Icons.add_call,
        size: 20.0,
        color: Colors.white,
      ),
    );
  }
}
