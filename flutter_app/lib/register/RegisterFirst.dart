import 'package:flutter/material.dart';

class RegisterFirst extends StatefulWidget {
  final arguments;
  RegisterFirst({this.arguments});
  @override
  State<StatefulWidget> createState() {
    return _RegisterState(arguments);
  }
}

class _RegisterState extends State<StatefulWidget> {
  final arguments;
  _RegisterState(this.arguments);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("注册第一步"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.centerLeft,
        child: RaisedButton(
          child: Text("下一步"),
          onPressed: () {
            print(" RegisterFirst  next  ");
//            Navigator.of(context).pushNamed('/resisterTwo');
//            Navigator.of(context).pushReplacementNamed('/resisterTwo');
            Navigator.of(context).pushNamed('/resisterTwo');
          },
        ),
      ),
    );
  }
}
