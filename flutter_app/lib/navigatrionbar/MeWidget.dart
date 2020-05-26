import 'package:flutter/material.dart';

class MeWidget extends StatefulWidget {
  MeWidget({Key key}) : super(key: key);

  @override
  HomePage createState() {
    return HomePage();
  }
}

class HomePage extends State<MeWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return layout(context);
  }
  Widget layout(BuildContext context){
    return Scaffold(
          appBar: builderAppBar(context),
          body: ListView(
              children: <Widget>[
                header(context),
                header(context),
                header(context),
                header(context),
                header(context),
              ],
          ),
    );
  }

  Widget header(BuildContext context){
      return Image.network("http://i2.yeyou.itc.cn/2014/huoying/hd_20140925/hyimage06.jpg");
  }

  Widget builderAppBar(BuildContext context){
      return AppBar(title: const Text("我的"),);
  }
}