import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Book extends StatefulWidget {
  // final String title, author, description, imageLink;
  // final int rating;
  // final DateTime startDate, endDate;
  // final bool currentlyReading;

  // const Book(
  //   {Key key,
  //   String this.title,
  //   String this.author,
  //   String this.description,
  //   String this.imageLink,
  //   int this.rating,
  //   DateTime this.startDate,
  //   DateTime this.endDate,
  //   bool this.currentlyReading})
  //   : super(key: key);

  @override
  _BookState createState() => _BookState();
}

class _BookState extends State<Book> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                title: Text('title'),
                subtitle: Text('author'),
              ),
              // Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              // const SizedBox(width: 8),
              // TextButton(
              //   child: const Text('LISTEN'),
              //   onPressed: () {/* ... */},
              // ),
              const SizedBox(width: 8),
              RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemSize: 20,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              )
            ],
          ),
        ],
      ),
    ));
  }
}