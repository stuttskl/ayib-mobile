import 'package:ayib_mobile/screens/search_screen.dart';
import 'package:flutter/material.dart';
import '../screens/all_books.dart';
import '../screens/home_screen.dart';
import '../screens/search_screen.dart';

class MainTabController extends StatelessWidget {
  static const tabs = [
    Tab(icon: Icon(Icons.home)),
    Tab(icon: Icon(Icons.menu_book)),
    Tab(icon: Icon(Icons.search)),
  ];

  // final screens = [];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text('a year in books'), bottom: TabBar(tabs: tabs)
        ),
        body: TabBarView(
          children: [
            HomeScreen(),
            AllBooksScreen(),
            SearchScreen()
          ],
        )
      )
    );
  }
}