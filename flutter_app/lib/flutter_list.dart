import 'package:flutter/material.dart';
import 'res/listData.dart';


void main(){
//  _getData();
  runApp(MyApp());
print("---------------------------");
//var mapTest = listData.map((f)=>f["title"]);
//print(mapTest); //转化成一个map


}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
          appBar: AppBar(
            title : Text(
              "asdasdaddasd",
            ),
          ),
            body:MyBodyListView(),
        ),
    );
  }
}

List<Widget> _getData(){
  var tempList=listData.map((value){
    return ListTile(
        leading:Image.network(value["imageUrl"]),
        title:Text(value["title"]),
        subtitle:Text(value["author"])
    );
  });
  return tempList.toList();
}


class MyBodyListView extends StatelessWidget{



  @override
  Widget build(BuildContext context) {
      return ListView.builder(
          itemCount:_getData().length,
          itemBuilder: (context,index){
              return _getData()[index];
          },
      );
  }
  
}


