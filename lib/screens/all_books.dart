import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../widgets/book.dart';

class AllBooksScreen extends StatefulWidget {
  @override
  _AllBooksScreenState createState() => _AllBooksScreenState();
}

class _AllBooksScreenState extends State<AllBooksScreen> {
  Stream<QuerySnapshot> books =
      FirebaseFirestore.instance.collection('books').snapshots();

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return StreamBuilder(
      stream: books,
      builder: (context, record) {
        if (record.hasData &&
          record.data.docs != null &&
          record.data.docs.length > 0) {
            return GridView.builder(
              padding: EdgeInsets.all(10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 0,
                mainAxisSpacing: 10,
                crossAxisCount: (orientation == Orientation.portrait) ? 2 : 4),
              itemCount: record.data.docs.length,
              itemBuilder: (context, index) {
              var book = record.data.docs[index];
              return Book(
                // title: book['title'],
                // author: book['author'],
                imgUrl: book['imgUrl'],
                rating: 4,
              );
            }
            );
      } else {
          return Center(child: CircularProgressIndicator());
        }
      }
    );
  }
}
