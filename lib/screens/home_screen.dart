import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('A Year In Books')),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RichText(
              text: TextSpan(
                text: 'Good morning, Katie',
                style: Theme.of(context).textTheme.headline4,
              )
            ),
            RichText(
              text: TextSpan(
                text: 'what are you reading today?',
                style: Theme.of(context).textTheme.headline6,
              )
            )
          ]
        ),
      ),
    );
  }
}
