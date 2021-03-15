import 'package:flutter/material.dart';

// screens
import './screens/home_screen.dart';
import 'widgets/tab_bar.dart';

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'A Year In Books',
      theme: ThemeData(
        primaryColor: Colors.red[700],
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold, fontFamily: 'RobotoMono'),
          headline2: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold, fontFamily: 'RobotoMono'),
          headline3: TextStyle(fontSize: 16.0, fontFamily: 'RobotoMono'),
          bodyText1: TextStyle(fontSize: 14.0)
        )
      ),
      home: MainTabController(),
    );
  }
}