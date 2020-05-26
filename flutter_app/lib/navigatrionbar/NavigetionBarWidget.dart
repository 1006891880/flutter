import 'package:flutter/material.dart';
import 'HomeWidget.dart';
import 'FindWidget.dart';
import 'MeWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
            home: Scaffold(
                appBar: AppBar(title: Text("StatefulWidgetDemo"),),
                body: MainWidget(),
            ),
      );
  }

}

class MainWidget extends StatefulWidget {
  MainWidget({Key key}) : super(key: key);

  @override __MainWidgetStateState createState() {
    return __MainWidgetStateState();
  }
}


class __MainWidgetStateState extends State<StatefulWidget> {
  int index = 0;
  var tabImages;
  var _pageList;
  void initData(){
    /*
     * 三个子界面
     */
    _pageList = [HomeWidget(), FindWidget(), MeWidget(),];
  }

  @override
  void initState() {
    super.initState();
    print("_MainWidgetState  initState ");
  }

  @override
  void dispose() {
    super.dispose();
    print("_MainWidgetState  dispose ");
  }
  int _tableIndex;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
          body:_pageList[index],
          bottomNavigationBar: BottomNavigationBar(
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  title: Text("首页"),
                  icon: Icon(Icons.home)
                ),
                BottomNavigationBarItem(
                    title: Text("搜索"),
                    icon: Icon(Icons.search)
                ),
                BottomNavigationBarItem(
                    title: Text("我的"),
                    icon: Icon(Icons.memory)
                ),

              ],
              currentIndex: _tableIndex,
              onTap:(value){
                  setState(() {
                    _tableIndex = value;
                  });
              }
          ),
    );
  }
}

//class _MainWidgetState extends State<MainWidget> {
//  int countNum = 0;
//  @override
//  void initState() {
//    super.initState();
//    print("_MainWidgetState  initState ");
//  }
//
//  @override
//  void dispose() {
//    super.dispose();
//    print("_MainWidgetState  dispose ");
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
////        color: Colors.teal,
//        child: Column(
//            children: <Widget>[
//                Text("${this.countNum}"),
//                RaisedButton(
//                    child:Text("buTTON"),
//                    onPressed:(){
//                        setState(() {
//                          this.countNum++;
//                        });
//                        print("onPressed ->${this.countNum}");
//                    }
//                ),
//            ],
//        ),
//    );
//  }
//}