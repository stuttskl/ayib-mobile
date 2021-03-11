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
    return StreamBuilder(
        stream: books,
        builder: (context, record) {
          if (record.hasData &&
              record.data.docs != null &&
              record.data.docs.length > 0) {
            return ListView.builder(
                itemCount: record.data.docs.length,
                itemBuilder: (context, index) {
                  var book = record.data.docs[index];
                  return ListTile(
                    leading: Text(book['title']),
                    trailing: Text(book['author'].toString(),
                        style: Theme.of(context).textTheme.headline5),
                  );
                });
          } else {
            return Center(child: CircularProgressIndicator());
          }
        });
    // return GridView.count(
    //   primary: false,
    //   padding: const EdgeInsets.all(16),
    //   crossAxisSpacing: 10,
    //   mainAxisSpacing: 10,
    //   crossAxisCount: 2,
    //   children: <Widget>[
    //     Book(),
    //     Book(),
    //     Book(),
    //     Book(),
    //     Book(),
    //     Book(),
    //     Book(),
    //     Book(),
    //   ],
    // );
  }
}
