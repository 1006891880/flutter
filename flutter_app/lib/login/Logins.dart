
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{

  final arguments;
  LoginPage({this.arguments});
  @override
  State<StatefulWidget> createState() {
      return _LoginState(arguments);
  }

}
class _LoginState extends State<StatefulWidget>{
  final arguments;
  _LoginState(this.arguments);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text("登录${arguments != null ? arguments['name']:"000"}"),
        ),
        body: RaisedButton(
            onPressed:(){
               print("_LoginState  点击登录 ---  ");
            },
            child: Text("点击登录"),
        ),
    );
  }

}

