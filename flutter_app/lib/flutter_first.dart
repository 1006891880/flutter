import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/*
void main(){
  runApp(new Center(
    child: new Text(
      "nihao flutter ",
      textDirection: TextDirection.ltr,
    ),
  ));
  
}*/
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "nihao  first  1111 ",
            style: TextStyle(
                color: Colors.blue, backgroundColor: Colors.limeAccent),
            textAlign: TextAlign.center,
          ),
//          centerTitle: true
        ),
        body: HomeContentImage3(),
      ),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

class HomeContentImage3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return Container(
        child: Image.asset("images/a.jpeg",height:200.0,width:200.0,fit: BoxFit.cover,),
//        width: 400.0,height: 400.0,
//          child: ClipOval(
//              child: Image.asset("images/a.jpeg",height:200.0,width:200.0,fit: BoxFit.cover,),
//
//          ),
      );
  }

}

class HomeContentImage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ClipOval(
        child: Image.network(
          "http://www.ionic.wang/statics/index/images/ionic4.png",
          height: 300.0,
          width: 300.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class HomeContentImage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(

       child: Container(

          width: 300.0,
          height: 300.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "http://www.ionic.wang/statics/index/images/ionic4.png"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(Radius.circular(150.0)),
          ),
        )
    );
  }
}

class HomeContentsText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          child: Text(
            '继续学习努力向上flutter',
            maxLines: 2,
            textAlign: TextAlign.left,
            overflow: TextOverflow.ellipsis,
            textScaleFactor: 1.2,
            style: TextStyle(
//                    height:50.0,
              color: Colors.black,
              backgroundColor: Colors.brown,
              fontSize: 20.0,
              //字体size
              fontWeight: FontWeight.w600,
              // 字体加粗
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.lineThrough,
              decorationColor: Colors.cyanAccent,
              decorationStyle: TextDecorationStyle.dashed,
//                    debugLabel:"asdasdad",
//                    decorationThickness:23,//装饰线的厚度
//                    letterSpacing:5.0 //每个字符 的间距
//                    wordSpacing:20.0//单词之间的 间距
//                    textBaseline:TextBaseline.alphabetic//底部对齐的水平线
            ),
          ),
//            transform:Matrix4.skewX(0.3),//绕x轴的斜矩阵
//            transform:Matrix4.skewY(0.3),//绕y轴的斜矩阵
          alignment: Alignment.bottomRight,
          width: 300.0,
          height: 300.0,
          margin: EdgeInsets.all(40),
          padding: EdgeInsets.fromLTRB(0, 10.0, 0.0, 20.0),
          decoration: BoxDecoration(
              //装饰
              color: Colors.pink,
              border: Border.all(color: Colors.blue, width: 4),
              borderRadius: BorderRadius.all(//边框装饰
//                    Radius.circular(150.0)//圆形
                  Radius.circular(20) //圆角
//                    Radius.circular(0)
                  ),
              boxShadow: [
                BoxShadow(
                    //阴影
                    color: Colors.green,
                    blurRadius: 40.0)
              ])),
    );
  }
}

/*class MyBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "nihao haha  111",
        style: TextStyle(
          fontSize: 40.0, // 默认是 double
          color: Colors.yellow
        ),
      ),
    );

  }

}*/
