import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: RaisedButton(
        onPressed: () {
          print("跳转注册ing  。。。");
          Navigator.of(context).pushNamed('/registerFirst',arguments: {'phone':'156236304593'});
        },
        child: Text("点击跳转到注册"),
      ),
    );
  }
}
