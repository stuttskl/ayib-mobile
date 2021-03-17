import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import '../widgets/add_form.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _formKey = GlobalKey<FormState>();
  var queryParams;

  void sendRequest() async {
    var query = "twilight";
    var url =
        Uri.https('www.googleapis.com', '/books/v1/volumes', {'q': '$query'});

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      var itemCount = jsonResponse['totalItems'];
      print('Number of books about $query: $itemCount.');
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Search For A Book', style: Theme.of(context).textTheme.headline4),
              Form(
                key: _formKey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Search Terms...',
                            hintStyle: Theme.of(context).textTheme.bodyText1,
                          ),
                          keyboardType: TextInputType.text,
                          validator: (value) {},
                          onSaved: (value) {
                            queryParams = value;
                          }),
                    ]),
              ),
              ElevatedButton(
                onPressed: sendRequest, 
                child: Text('Search'),
                style: ElevatedButton.styleFrom(
                primary: Colors.red[700], // backgroun  d
                onPrimary: Colors.white, // foreground
              )),
              Text('Add A Book', style: Theme.of(context).textTheme.headline4),
              AddForm(),
            ]),
      ),
    );
  }
}
