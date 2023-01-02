import 'package:flutter/material.dart';
import 'community/community.fragment.dart';
import '../core/constants.dart';
import '../core/theme.dart';
import 'status/status.fragment.dart';
import 'call/calls.fragment.dart';
import 'chat/chat.fragment.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home>
    with SingleTickerProviderStateMixin{
  late  TabController _controller;

  static const bool isSelected = false;

  static const List<Tab> tabs = [
    Tab(
      icon: Icon(Icons.people),
      iconMargin: EdgeInsets.all(5),
    ),
    Tab(
      child: Text(
          'Chats',
        style: TextStyle(
          color: isSelected ? Colors.white : MaterialConstants.kFabColor,
        ),
      ),
    ),
    Tab(
      child: Text(
          'Status',
        style: TextStyle(
          color: isSelected ? Colors.white : MaterialConstants.kFabColor,
        ),
      ),
    ),
    Tab(
      child: Text(
          'Calls',
        style: TextStyle(
          color: isSelected ? Colors.white : MaterialConstants.kFabColor,
        ),
      ),
    ),
  ];

  static const List<Widget> myTabs = [
    CommunityFragment(),
    ChatFragment(),
    StatusFragment(),
    CallFragment()
  ];

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: tabs.length, vsync: this);
    _controller.addListener(_handleTabIndex);
  }

  @override
  void dispose() {
    _controller.removeListener(_handleTabIndex);
    _controller.dispose();
    super.dispose();
  }

  void _handleTabIndex() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MaterialConstants.kLightAppBarColor,
        title: const Text(MaterialConstants.title),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.camera_alt),
          ),
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.more_vert),
          ),
        ],
        bottom: TabBar(
          indicator: MaterialTheme.lightTabBarTheme.indicator,
          labelColor: MaterialConstants.kFabColor,
          controller: _controller,
          tabs: tabs,
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children:  myTabs,
      ),
      floatingActionButton: _fab(),
    );
  }

  Widget _fab() {
    return _controller.index == 0 ?
        Container() :
      _controller.index == 1 ?
    FloatingActionButton(
      onPressed: () {},
      backgroundColor: MaterialConstants.kFabColor,
      child: const Icon(Icons.message_rounded),
    ) : _controller.index == 2 ?
    Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          height: 40.0,
          width: 40.0,
          child: FloatingActionButton(
              shape: const StadiumBorder(),
              onPressed: () {},
              backgroundColor: MaterialConstants.kLightAppBarColor,
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
            backgroundColor: MaterialConstants.kFabColor,
            child: const Icon(
              Icons.camera_alt,
              size: 20.0,
              color: Colors.white,
            )),
      ],
    )
     :
    FloatingActionButton(
      onPressed: (){},
      backgroundColor: MaterialConstants.kFabColor,
      child: const Icon(Icons.add_call),
    );
  }
}
