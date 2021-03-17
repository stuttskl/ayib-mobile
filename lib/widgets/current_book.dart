import 'package:flutter/material.dart';

class CurrentBook extends StatelessWidget {
  final String title;
  final String author;
  final String description;
  final String imgUrl;
  final int rating;
  final DateTime startDate, endDate;
  final bool current;

  const CurrentBook(
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
      // child: Image.network('$imgUrl'),
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.network('$imgUrl', height: 300),
            ListTile(
              title: Text('$title'),
              subtitle: Text('$author'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(width: 8),
              ],
            ),
            ElevatedButton(
              onPressed: ()=>{}, 
              child: Text('Update Progress'),
              style: ElevatedButton.styleFrom(
                primary: Colors.red[700], // background
                onPrimary: Colors.white, // foreground
            ))
          ],
        ),
      ),
    );
  }
}
