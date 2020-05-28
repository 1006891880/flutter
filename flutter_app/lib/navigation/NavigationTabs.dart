
import 'package:flutter/material.dart';
import 'package:flutterapp/navigation/CategoryPage.dart';
import 'package:flutterapp/navigation/HomePage.dart';
import 'package:flutterapp/navigation/MinePage.dart';
import 'package:flutterapp/navigation/SettingPage.dart';

class NavigationTabs extends StatefulWidget{
  int index;
  NavigationTabs(this.index);

  @override
  State<StatefulWidget> createState() {
        return _NavigationStatus(index);
  }

}
class _NavigationStatus extends State<StatefulWidget>{
  var list = [HomePage(),CategoryPage(),SettingsPage(),MinePage()];
//  var titleList = ["首页","分类","设置","我的"];
  var _currentIndex = 0;

  _NavigationStatus(this._currentIndex);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
          body: list[_currentIndex],
          bottomNavigationBar: BottomNavigationBar(
              selectedFontSize: 18.0,
              selectedItemColor: Colors.teal,
              type:BottomNavigationBarType.fixed,
              currentIndex: _currentIndex,
              onTap: (int value){
                  setState(() {
                      this._currentIndex = value;
                  });
              },
              items:<BottomNavigationBarItem>[
                BottomNavigationBarItem(icon: Icon(Icons.home),title:Text("首页")),
                BottomNavigationBarItem(icon: Icon(Icons.category),title:Text("分类")),
                BottomNavigationBarItem(icon: Icon(Icons.settings),title:Text("设置")),
                BottomNavigationBarItem(icon: Icon(Icons.move_to_inbox),title:Text("我的")),
              ],
          ),
      );
  }

}