import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SettingsState();
  }
}

class _SettingsState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("设置"),
      ),
      body: Column(
        children: [
          RaisedButton(
            onPressed: () {
              print("跳转登录ing  。。。");
              Navigator.of(context)
                  .pushNamed('/login', arguments: {'name': "yuyuyuy"});
            },
            child: Text("点击跳转登录"),
          ),
          SizedBox(height: 40),
          RaisedButton(
            onPressed: () {
              print("跳转CustomActionBar  ing  。。。");
              Navigator.of(context)
                  .pushNamed('/customActionBar');
            },
            child: Text("跳转CustomActionBar "),
          ),
        ],
      ),
    );
  }
}
