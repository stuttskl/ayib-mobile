import 'package:flutter/material.dart';
import '../widgets/book.dart';

class AllBooksScreen extends StatefulWidget {
  @override
  _AllBooksScreenState createState() => _AllBooksScreenState();
}

class _AllBooksScreenState extends State<AllBooksScreen> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(16),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        Book(),
        Book(),
        Book(),
        Book(),
        Book(),
        Book(),
        Book(),
        Book(),
      ],
    );
  }
}
