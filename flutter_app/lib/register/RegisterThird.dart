import 'package:flutter/material.dart';
import 'package:flutterapp/navigation/NavigationTabs.dart';

class RegisterThird extends StatefulWidget {
  final arguments;
  RegisterThird({this.arguments});
  @override
  State<StatefulWidget> createState() {
    return _RegisterThirdState(arguments);
  }
}

class _RegisterThirdState extends State<StatefulWidget> {
  final arguments;
  _RegisterThirdState(this.arguments);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("注册第三步"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.centerLeft,
        child: RaisedButton(
          child: Text("完成"),
          onPressed: () {
            print(" RegisterTwo  next  ");
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder:(context)=> NavigationTabs(2)),
                    (route) => Icons.router ==null );
          },
        ),
      ),
    );
  }
}
