import 'package:flutter/material.dart';
import '../../core/constants.dart';
import '../../core/theme.dart';
import 'status/status.fragment.dart';
import 'call/calls.fragment.dart';
import 'chat/chat.fragment.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  late  TabController _controller;

  static const List<Tab> tabs = [
    Tab(text: 'Chat',),
    Tab(text: 'Status'),
    Tab(text: 'Calls'),
  ];

  static const List<Widget> myTabs = [
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
        backgroundColor: AppConstants.kDarkAppBarColor,
        title: const Text(AppConstants.title),
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
          indicator: AppTheme.darkTabBarTheme.indicator,
          labelColor: AppConstants.kFabColor,
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
    FloatingActionButton(
      onPressed: () {},
      backgroundColor: AppConstants.kFabColor,
      child: const Icon(Icons.message_rounded),
    ) : _controller.index == 1 ?
    Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          height: 40.0,
          width: 40.0,
          child: FloatingActionButton(
              shape: const StadiumBorder(),
              onPressed: () {},
              backgroundColor: AppConstants.kDarkAppBarColor,
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
            backgroundColor: AppConstants.kFabColor,
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
      backgroundColor: AppConstants.kFabColor,
      child: const Icon(Icons.add_call),
    );
  }
}
