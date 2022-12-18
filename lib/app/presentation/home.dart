import 'package:flutter/material.dart';
import 'status/status.fragment.dart';
import '../core/constants.dart';
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
          isScrollable: true,
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
    ) : _controller.index == 1 ? FloatingActionButton(
      onPressed: (){},
      backgroundColor: AppConstants.kFabColor,
      child: const Icon(Icons.camera_alt),
    ) : FloatingActionButton(
      onPressed: (){},
      backgroundColor: AppConstants.kFabColor,
      child: const Icon(Icons.add_call),
    );
  }
}
