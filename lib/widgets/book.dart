import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

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
      child: Image.network('$imgUrl'),
      // child: Card(
      //   child: Column(
      //     mainAxisSize: MainAxisSize.min,
      //     children: <Widget>[
      //       Image.network('$imgUrl', height: 80),
      //       // ListTile(
      //       //   title: Text('$title'),
      //       //   subtitle: Text('$author'),
      //       // ),
      //       // Row(
      //       //   mainAxisAlignment: MainAxisAlignment.start,
      //       //   children: <Widget>[
      //       //     const SizedBox(width: 8),
      //       //     RatingBar.builder(
      //       //       initialRating: 3,
      //       //       minRating: 1,
      //       //       direction: Axis.horizontal,
      //       //       allowHalfRating: true,
      //       //       itemSize: 20,
      //       //       itemCount: 4,
      //       //       itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
      //       //       itemBuilder: (context, _) => Icon(
      //       //         Icons.star,
      //       //         color: Colors.amber,
      //       //       ),
      //       //       onRatingUpdate: (rating) {
      //       //         print(rating);
      //       //       },
      //       //     )
      //       //   ],
      //       // ),
      //     ],
      // ),
    );
    // );
  }
}

// TODO:
// [] fix star rating implementation
