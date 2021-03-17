import 'package:flutter/material.dart';
import '../widgets/current_book.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Stream<QuerySnapshot> currentBook = FirebaseFirestore.instance
      .collection('books').where("current", isEqualTo: true).snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: currentBook,
        builder: (context, record) {
          if (record.hasData &&
              record.data.docs != null &&
              record.data.docs.length > 0) {
            return ListView.builder(
              itemCount: record.data.docs.length,
              itemBuilder: (context, index) {
                var currentBook = record.data.docs[index];
                return CurrentBook(
                  // author: currentBook['author'],
                  // title: currentBook['title'],
                  imgUrl:currentBook['imgUrl']);
              }
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        }
      )
    );
  }
}
