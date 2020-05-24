
import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
class myFirstWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
//    throw UnimplementedError();
    print("myFirstWidget  build  ");
    return Text("test ");
  }

}

void main() async{
//  runApp(myFirstWidget());
//  var list =["qqq","www","eee"];
//  list.map((e) => print(e));

// This example uses the Google Books API to search for books about http.
  // https://developers.google.com/books/docs/overview
  var url = "http://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=1";

  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body);
    var itemCount = jsonResponse['totalItems'];
    print('Number of books about http: $itemCount.');
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }

}