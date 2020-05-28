import 'package:flutter/material.dart';

class MinePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MineState();
  }
}

class _MineState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我的"),
      ),
      body: RaisedButton(
        onPressed: () {},
        child: Text("点击跳转"),
      ),
    );
  }
}
