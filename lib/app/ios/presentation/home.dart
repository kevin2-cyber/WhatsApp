import 'package:flutter/cupertino.dart';

class CupertinoHome extends StatelessWidget {
  const CupertinoHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.white,
      child: CupertinoButton(onPressed: () {  },
      child: Icon(CupertinoIcons.add),),
    );
  }
}
