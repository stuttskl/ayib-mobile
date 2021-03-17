import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../widgets/current_book.dart';
import '../widgets/add_form.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RichText(
              text: TextSpan(
                text: 'Currently Reading',
                style: Theme.of(context).textTheme.headline4,
              )
            ),
            CurrentBook(
              author: 'Cixin Liu',
              title: 'The Three Body Problem',
              imgUrl: 'https://images-na.ssl-images-amazon.com/images/I/919XM42JQlL.jpg'
            ),
          ]
        ),
      ),
    );
  }
}
class ChartData {
    ChartData(this.x, this.y, [this.color]);
    final String x;
    final double y;
    final Color color;
}
