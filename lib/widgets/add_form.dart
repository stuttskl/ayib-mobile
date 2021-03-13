import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../db/book_dto.dart';

class AddForm extends StatefulWidget {
  @override
  _AddFormState createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  final _formKey = GlobalKey<FormState>();
  final newBookValues = BookDTO();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: _formKey, 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Book Title',
                hintStyle: Theme.of(context).textTheme.bodyText1,
              ),
              keyboardType: TextInputType.text,
              validator: (value) {},
              onSaved: (value) {
                newBookValues.title = value;
              }
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Book Author',
                hintStyle: Theme.of(context).textTheme.bodyText1,
              ),
              keyboardType: TextInputType.text,
              validator: (value) {},
              onSaved: (value) {
                newBookValues.author = value;
              }
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Book Description',
                hintStyle: Theme.of(context).textTheme.bodyText1,
              ),
              keyboardType: TextInputType.text,
              validator: (value) {},
              onSaved: (value) {
                newBookValues.description = value;
              }
            ),
            InputDatePickerFormField(
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime.now(),
              onDateSaved: (value) {
                newBookValues.startDate = value.toIso8601String();
              }
            ),
            ElevatedButton(
              onPressed: () => {
                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save(),

                print(newBookValues.title),
                FirebaseFirestore.instance.collection('books').add({
                  'title': newBookValues.title,
                  'author': newBookValues.author,
                  'description': newBookValues.description,
                  'startDate': newBookValues.startDate,
                })
                }
              },
              child: Text('Add A Book')
            ),
          ],
        )
      )
    );
  }
}