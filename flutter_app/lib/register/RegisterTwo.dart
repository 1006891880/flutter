import 'package:flutter/material.dart';

class RegisterTwo extends StatefulWidget {
  final arguments;
  RegisterTwo({this.arguments});
  @override
  State<StatefulWidget> createState() {
    return _RegisterTwoState(arguments);
  }
}

class _RegisterTwoState extends State<StatefulWidget> {
  final arguments ;
  _RegisterTwoState(this.arguments);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("注册第二步"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.centerLeft,
        child: RaisedButton(
          child: Text("下一步"),
          onPressed: () {
            print(" RegisterThird  next  ");
//            Navigator.of(context).pushNamed('/resisterThird');
//            Navigator.of(context).pushReplacementNamed('/resisterThird');
            Navigator.of(context).pushNamed('/resisterThird');
          },
        ),
      ),
    );
  }
}
