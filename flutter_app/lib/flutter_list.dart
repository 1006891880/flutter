import 'package:flutter/material.dart';
import 'res/listData.dart';

void main() {
//  _getData();
  runApp(MyApp());
  print("---------------------------");
//var mapTest = listData.map((f)=>f["title"]);
//print(mapTest); //转化成一个map
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "listViewDemo",
          ),
        ),
        body: MyWrapView(),
      ),
    );
  }
}

List<Widget> _getData() {
  var tempList = listData.map((value) {
    return ListTile(
        leading: Image.network(value["imageUrl"]),
        title: Text(value["title"]),
        subtitle: Text(value["author"]));
  });
  return tempList.toList();
}

List<Widget> _getData1() {
  var tempList = listData.map((value) {
    return Column(
      children: <Widget>[
//        Icon(Icons.search),
        Image.network(value["imageUrl"]),
        ListTile(
//            leading: Image.network(value["imageUrl"]),
          title: Text(
            value["title"],
            style: TextStyle(fontSize: 10),
          ),
//            subtitle: Text(value["author"])
        ),
      ],
    );
  });
  return tempList.toList();
}

class MyBodyListView1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _getData().length,
      padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
      itemBuilder: (context, index) {
        return _getData()[index];
      },
    );
  }
}

class MyBodyGridView1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: _getData1().length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 15.0,
            crossAxisCount: 2,
            childAspectRatio: 1.0),
        itemBuilder: (context, index) {
          return _getData1()[index];
        });
  }
}

class MyBodyGridView2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        children: _getData());
  }
}

class MyPaddingView3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.fromLTRB(10.0, 0, 10, 10),
        width: 300.0,
        height: 300.0,
        color: Colors.black12,
        alignment: Alignment.center,
        child: Container(
            width: 100.0,
            height: 100.0,
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                Icon(
                  Icons.home,
                  color: Colors.red,
                ),
                Column(
                  children: <Widget>[
                    Icon(
                      Icons.hot_tub,
                      color: Colors.black,
                    ),
                    Icon(
                      Icons.import_contacts,
                      color: Colors.red,
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}

class MyStackView1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: 200.0,
              height: 200.0,
              color: Colors.teal,
            ),
            Icon(Icons.inbox),
          ],
        ));
  }
}

class MyStackView2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 400.0, height: 400.0, color: Colors.yellow,
        child: Stack( // 类似于 android 的 fraglayout
//          alignment:Alignment.center,
          children: <Widget>[
            Align(
              child: Container(
                width: 200.0,
                height: 200.0,
                color: Colors.teal,
              ),
            ),

            Align(
              alignment: Alignment.centerLeft,
              child: Icon(Icons.inbox),
            ),
            Align(
              alignment: Alignment(1, -1),
              child: Icon(Icons.insert_chart),
            ),
            Positioned(
              left: 30.0, top: 30.0,
              child: Icon(Icons.insert_emoticon),
            ),
          ],
        ),
      ),
    );
  }
}

class MyCardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amberAccent,
      width: 300.0,
      height: 300.0,
      child: new FittedBox( //根据[合适的]在自身内缩放和定位它的子元素。
        fit: BoxFit.none,
        alignment: Alignment.topLeft,
        child: new Container(
          color: Colors.red,
          child: new Text("FittedBox"),
        ),
      ),
    );
  }
}

class MyAspectRatioView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.deepOrange, width: 150.0,
        child: AspectRatio(
          aspectRatio: 1.5,
          child: Container(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}

const List<String> tags = [
  "肯德基",
  "小哥哥你的东西掉了",
  "小姐姐好漂亮啊",
  "这个东西是啥",
  "哈哈哈",
  "好困啊",
  "今天好运",
  "明天好运来",
  "今年快结束了",
  "我累啊",
  "你写的什么代码",
  "多多多"
];

class MyWrapView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Wrap(
            children: <Widget>[
                 for(String tag in tags) TagItem(tag)
            ])
    ,
    );
  }

}

class TagItem extends StatelessWidget {
  final String text;

  TagItem(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.blueAccent.withAlpha(60), width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Container(
        margin: EdgeInsets.all(8),
        child: Text(text),
      ),
    );
  }
}



