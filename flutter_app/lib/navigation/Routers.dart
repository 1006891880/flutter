
import 'package:flutter/material.dart';
import 'package:flutterapp/login/Logins.dart';
import 'package:flutterapp/register/RegisterFirst.dart';
import 'package:flutterapp/register/RegisterThird.dart';
import 'package:flutterapp/register/RegisterTwo.dart';

import 'CustomActionBar.dart';

var routers = {
  '/':(context)=>CustomActionBar(),
  '/login': (context,{arguments})=>LoginPage(arguments:arguments),
  '/registerFirst': (context,{arguments}) =>RegisterFirst(arguments:arguments),
  '/resisterTwo': (context,{arguments}) =>RegisterTwo(arguments:arguments),
  '/resisterThird': (context,{arguments}) =>RegisterThird(arguments:arguments),
  '/customActionBar': (context,{arguments}) =>CustomActionBar(),

};

//固定写法
// ignore: top_level_function_literal_block
var onGenerateRoute=(RouteSettings settings) {
  // 统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routers[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    }else{
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context));
      return route;
    }
  }
  return null;
};