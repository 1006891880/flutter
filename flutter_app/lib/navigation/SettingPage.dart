import 'package:flutter/material.dart';
import 'package:flutterapp/bean/Person.dart';
import 'package:flutterapp/navigation/CustomActionBar.dart';

class SettingsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SettingsState();
  }
}

class _SettingsState extends State<StatefulWidget> {
  void getBackData() async {
//     Future future = await Navigator.of(context).pushNamed("/customActionBar");
//    future.then((value){
//      Person temp = value as Person;
//      print("SettingsPage  value -> $temp");
//    });

  }

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
//              Navigator.of(context).pushNamed('/customActionBar');
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => CustomActionBar(),
                settings: RouteSettings(
                  name: "usePerson",
                  arguments: Person("yuyu", 22, "河南省"),
                ),
              ));
            },
            child: Text("跳转CustomActionBar "),
          ),
          OutlineButton(
            onPressed: () {
              getBackData();
            },
            child: Text("获取返回数据"),
          ),
        ],
      ),
    );
  }
}
