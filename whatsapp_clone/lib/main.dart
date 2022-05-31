import 'package:flutter/material.dart';
import '../utils/theme.dart';
import '../views/ui/home_screen.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppTheme.title,
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: const DefaultTabController(
        length: 3,
        child: Home(),
      ),
    );
  }
}
