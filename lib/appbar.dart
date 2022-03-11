import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color bgColor = Colors.green;
  final Text? title;
  final AppBar? appBar;
  final List<Widget>? widgets;
  const BaseAppBar({
    Key? key,
    this.title,
    this.appBar,
    this.widgets
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(appBar!.preferredSize.height);
}

