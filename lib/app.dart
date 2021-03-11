import 'package:flutter/material.dart';

// screens
import './screens/home_screen.dart';

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'A Year In Books',
      theme: ThemeData.dark(),
      home: HomeScreen()
    );
  }
}