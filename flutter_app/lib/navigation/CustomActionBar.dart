
import 'package:flutter/material.dart';

class CustomActionBar extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
      return _CustomActionBarState();
  }

}
class _CustomActionBarState extends State<StatefulWidget>{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading : RaisedButton(
            child: Icon(Icons.insert_emoticon),
            onPressed: (){
                print("dianji back ");
            },
          ),
          title: Text("CustomActionBar"),
            actions:<Widget>[
                Icon(Icons.search),Icon(Icons.settings),
            ],
        ),
      );
  }

}