import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CategoryState();
  }
}

class _CategoryState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("分类"),
      ),
      body: RaisedButton(
        onPressed: () {},
        child: Text("点击分类"),
      ),
    );
  }
}
