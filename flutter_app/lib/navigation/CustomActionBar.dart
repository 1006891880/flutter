import 'package:flutter/material.dart';
import 'package:flutterapp/bean/Person.dart';

class CustomActionBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CustomActionBarState();
  }
}

class _CustomActionBarState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    var routerSettings = ModalRoute.of(context).settings;
    String tempName = routerSettings.name;
    var person = routerSettings.arguments;
    print("CustomActionBar tempName ->$tempName , person ->$person ");
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: RaisedButton(
          child: Icon(Icons.insert_emoticon),
          onPressed: () {
            print("dianji back ");
          },
        ),
        title: Text("CustomActionBar"),
        actions: <Widget>[
          Icon(Icons.search),
          Icon(Icons.settings),
        ],
      ),
      body: Center(
        child: OutlineButton(
          child: Text("点击返回"),
          onPressed: () {
//             List<Person> list = [Person("QQQ",11,"北京"),Person("wwww",22,"新疆"),];
              Navigator.of(context).pop(Person("QQQ",11,"北京"));
          },
        ),
      ),
    );
  }
}
