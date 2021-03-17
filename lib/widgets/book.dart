import 'package:flutter/material.dart';
import '../widgets/rating_bar.dart';

class Book extends StatelessWidget {
  final String title;
  final String author;
  final String description;
  final String imgUrl;
  final int rating;
  final DateTime startDate, endDate;
  final bool current;

  const Book(
      {Key key,
      this.title,
      this.author,
      this.description,
      this.imgUrl,
      this.rating,
      this.startDate,
      this.endDate,
      this.current})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.network('$imgUrl', height: 180),
            RowRatingBar(),
              ],
            ),
      ),
    );
  }
}

// TODO:
// [] fix star rating implementation
