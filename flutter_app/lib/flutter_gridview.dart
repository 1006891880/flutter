
import 'package:flutter/material.dart';
import 'res/listData.dart';

void main(){
  runApp(MyApp());
}
List<Widget> _getData(){
  var list111 =  listData.map((value){
      return Container(
          child: Column(
              children:<Widget>[
                  Image.network(value["imageUrl"]),
                  Text(value["title"])
              ]
          ),
      );
  });
  return list111.toList();
}



class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
          home: Scaffold(
              appBar: AppBar(
                title: Text("flutterGridViewDemo",textAlign: TextAlign.center,maxLines: 1),
              ),
              body: HomeContentGridView(),
          ),
      );
  }
}
class HomeContentGridView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
        return GridView.count(
            crossAxisCount: 3,
            scrollDirection: Axis.vertical,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 20.0,
            children:_getData()
        );
  }

}