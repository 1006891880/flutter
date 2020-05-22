
import 'dart:io';
import 'dart:math';// 导入dart核心库
import 'package:flutterapp/main.dart';//Importing libraries from external packages
//import 'path/to/my_other_file.dart';// Importing files
//import 'package:lib1/lib1.dart' show foo;// 只导入 lib1 中的 foo。(Import only foo).
//import 'package:lib2/lib2.dart' hide foo;// 导入 lib2 中除了 foo 外的所有。
//as
//import 'package:lib1/lib1.dart';
//import 'package:lib2/lib2.dart' as lib2;//判断数据某种类型


//Element element1 =  Element(); // 使用 lib1 的 Element 类。
//lib2.Element element2 = lib2.Element();// 使用 lib2 的 Element 类。


//import 'package:greetings/hello.dart' deferred as hello;//延迟加载库
//Future greet() async {
//  await hello.loadLibrary();
//  hello.printGreeting();
//}

// 在函数式编程中，你可以做到：
//  1.将函数当做参数进行传递
//  2.将函数直接赋值给变量
//  3，对函数进行解构，只传递给函数一部分参数来调用它，让它返回一个函数去处理剩下的参数（也被称为柯里化）
//  4.创建一个可以被当作为常量的匿名函数（也被称为 lambda 表达式，在 Java 的 JDK 8 release 中支持了 lambda 表达式）

//1.所有变量引用的都是 对象，每个对象都是一个 类 的实例。数字、函数以及 null 都是对象。所有的类都继承于 Object 类。
//2.尽管 Dart 是强类型语言，但是在声明变量时指定类型是可选的，因为 Dart 可以进行类型推断。
// 在上述代码中，变量 number 的类型被推断为 int 类型。
// 如果想显式地声明一个不确定的类型，可以使用特殊类型 dynamic。
//3.Dart 支持泛型，比如 List<int>（表示一组由 int 对象组成的列表）或 List<dynamic>（表示一组由任何类型对象组成的列表）。
//4.Dart 支持顶级函数（例如 main 方法），同时还支持定义属于类或对象的函数（即 静态 和 实例方法）。你还可以在函数中定义函数（嵌套 或 局部函数）。
//5.Dart 支持顶级 变量，以及定义属于类或对象的变量（静态和实例变量）。实例变量有时称之为域或属性。
//6.Dart 没有类似于 Java 那样的 public、protected 和 private 成员访问限定符。
//  如果一个标识符以下划线 (_) 开头则表示该标识符在库内是私有的。可以查阅 库和可见性 获取更多相关信息。
//7.标识符 可以以字母或者下划线 (_) 开头，其后可跟字符和数字的组合。
//8.Dart 中 表达式 和 语句 是有区别的，表达式有值而语句没有。
//  比如条件表达式 expression condition ? expr1 : expr2 中含有值 expr1 或 expr2。
//  与 if-else 分支语句相比，if-else 分支语句则没有值。
//  一个语句通常包含一个或多个表达式，但是一个表达式不能只包含一个语句。
//9.Dart 工具可以显示 警告 和 错误 两种类型的问题。警告表明代码可能有问题但不会阻止其运行。
//  错误分为编译时错误和运行时错误；编译时错误代码无法运行；运行时错误会在代码运行时导致异常。

//基础
// 1.dart的基本变量类型有 numbers,Strings,booleans,lists (also known as arrays),sets,maps,runes (for expressing Unicode characters in a string),symbols

import 'package:flutter/cupertino.dart' ;
int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) ;
}
int add(int a,int b) => a+b;

class TestSpace{
  int _speed = 0;
  String name ;
  DateTime launchData;

  //带有语法糖的构造函数，使用创建对象同时并给成员变量赋值
  TestSpace(this.name,this.launchData) {
    // 初始化代码
    print("TestSpace  init TestSpace ");
  }

  //命名构造函数
  //重定向构造方法
  //有时一个构造方法仅仅用来重定向到该类的另一个构造方法。
  //重定向方法没有主体，它在冒号（:）之后调用另一个构造方法。
  TestSpace.unlaunched(String name) : this(name,null);


  //构造函数成员变量初始化列表，成员变量初始化列表赋值比构造函数函数体还要早运行的
  TestSpace.fromJson(Map<String, dynamic> json): name = json["name"], launchData = DateTime.fromMicrosecondsSinceEpoch(json["launchData"]) {
    print("fromJson $launchData");
  }
  //构造函数上也可以加断言，调试模式下，如果断言条件不成立，会抛异常，及时发现错误
  TestSpace.fromJson2(Map<String, dynamic> json)
      : assert(json.containsKey("name")),
        assert(json.containsKey("launchData")) {
    print("fromJson $launchData");
  }
  //Dart 支持工厂构造方法。它能够返回其子类甚至 null 对象。要创建一个工厂构造方法，请使用 factory 关键字。
  //工厂构造方法不支持this.参数，不支持初始化列表，不支持断言
  factory TestSpace.fromJson3() {
    return null;
  }
  // 当作常量使用的匿名函数
  int get launchYear => launchData?.year;

  //无参无返回值方法
  void describe(){
    print("Spacecraft:$name");
  }

  //私有的函数，以_开头的函数，只能在类内部使用，不能在外部使
  void _privateFunction() {
    print("_privateFunction  ");
  }

}

//Const 构造方法
//如果你的类生成的对象永远都不会更改，则可以让这些对象成为编译时常量,会放到常量池
//为此，请定义 const 构造方法并确保所有实例变量都是 final 的。
class ImmutablePoint {
  const ImmutablePoint(this.x, this.y);
  final int x;
  final int y;
  static const ImmutablePoint origin = ImmutablePoint(0, 0);
}

//dart 单继承
class TestAA extends TestSpace{
  String name ="12e3";
  TestAA(String name):super(name,DateTime.now()){
    print("TestAA   init ----------- name ->$name");
  }
  void TestAA11(String name){
    this.name = name;
  }
}
// --------------------------------- extends  --------------------------------------

class Piloted {
  int astronauts = 1;
  void describeCrew() {
    print('Piloted  Number of astronauts: $astronauts');
  }
}
class B {
  int astronauts = 2;
  void printB() {
    print(' B Number of astronauts: $astronauts');
  }
}

//表示类PilotedCraft  是由类TestSpace 和类Piloted 混合而构成
class PilotedCraft extends TestSpace with B{
  PilotedCraft(String name, DateTime launchData) : super(name, launchData){
    print('PilotedCraft  two  var  --> $astronauts');
  }
//  PilotedCraft.fromJson(Map<String,dynamic> json) : super.fromJson(json);

}
// -----------------------------------  mixin  -------------------------------------------
//不使用 class 关键字，只使用 mixin定义，代表这一个类不能被实例化，没有构造函数，只能被with使用
mixin Musical {
  bool canPlayPiano = false;
  bool canCompose =false;
  bool canConduct = false;

  void entertainMe() {
    if(canPlayPiano) {
      print("Playing piano");
    } else if(canConduct) {
      print("Waviing hands");
    }else {
      print("Humming to self");
    }
  }
}

// --------------------------------  接口与抽象类 -------------------------------------------
// Dart 语言并没有提供 interface 关键字，但是每一个类都隐式地定义了一个接口。所有类都可以当成接口被实现
abstract class MockSpaceship implements TestSpace {

//  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
//抽象类
abstract class Describable {
  void describe();

  void describeWithEmphasis() {
    print('=========');
    describe();
    print('=========');
  }
}
class MyDescribable extends Describable {

  @override
  void describe() {
    print('MyDescribable  =========  describe =============  ');
  }
}
//------------------------- async/await 避开回调地狱 -------------------------------
//使用async/await代替回调，可以不使用回调就可获取到异步操作后的结果，避免回调地狱，async/await可以理解成代替回调的语法糖
void readFile() async { // 异步的方法
  // FileMode.read：打开仅供读取的文件的模式。
  // FileMode.write：打开文件进行读写的模式。这个文件,如果它已经存在，就会被覆盖。如果没有创建该文件，则创建该文件
  // FileMode.append：打开文件以进行读写的模式，到此为止。如果文件不存在，则创建该文件。
  // FileMode.writeOnly:模式打开一个文件只写。这个文件,如果它已经存在，就会被覆盖。如果没有创建该文件，则创建该文件
  // FileMOde.writeOnlyAppend:方法打开文件以将“仅”写入,到此为止。如果文件不存在，则创建该文件。
  var writeToFile = (File file) {
    file.writeAsStringSync("${DateTime.now()}\n", mode: FileMode.append);
    file.readAsString().then((content) {
      print("$content");
    }, onError: (e) {
      print("e:$e");
    });
  };
  var file = File("D://test.txt");
  file.exists().then((bool exists) {
    if (exists) {
      writeToFile(file);
    } else {
      file.createSync();
      writeToFile(file);
    }
  });
}

//TODO 使用async/await/yield去掉回调
void main111() async {
  var file = File("D://test.txt");
  //Future<bool> exists() 下面如果没有await返回的是Future<bool>，如果有await返回的就是bool，异步的执行结果
  if(!await file.exists()) {
    await file.create();
  }
  await file.writeAsString("${DateTime.now()}\n", mode: FileMode.append);
  print("${await file.readAsString()}");
}

class BigObject {
  int anInt = 0;
  String aString = '';
  List<double> aList = [];
  bool _done = false;

  void allDone() {
    _done = true;
  }
  //只有void修饰的方法可以使用级联，非void的都不可以使用级联
  bool isDone() {
    return _done;
  }
}

// ------------------------------------  operator1  -------------------------------------
void operator1(){
  // x ??= y:如果x为null，则给x赋值y,如果x不为null,则不赋值，不运行y表达式(如y是一个函数)
//  int a= 11; // The initial value of a is null.
//  a ??= 3;
//  print(a); // <-- Prints 3.
//  a= null;
//  a ??= 5;
//  print(a); // <-- Still prints 3.
  //value = x ?? y :   如果x为null，则赋值y给value,否则赋值x给value
//  var nullValue;
//  print(nullValue ?? "this is y");//this is y
//  print("this is x" ?? "this is y");//this is x
  // ?. :  条件属性访问，用于避开空指针异常, (myObject != null) ? myObject.someProperty : null
  // => :  箭头操作符，用于直接执行可边的表达式，并返回右边表达式的操作结果，用于替代函数的{}
//  bool hasEmpty = aListOfStrings.any((s) {
//    return s.isEmpty;
//  });
//  bool hasEmpty = aListOfStrings.any((s) => s.isEmpty);
  //级联操作符 ..  类似于 java  builder
  //myObject..someProperty..someMethod()  只有void修饰的方法可以使用级联，非void的都不可以使用级联
//  BigObject()..allDone()..isDone();

//算术运算符
//assert(5 ~/ 2 == 2);// ~/   除并取整
//  print(5 / 2 );  //保留小数
//assert(5 % 2 == 1);// % 取模
//  print(5 % 2 == 2);
//类型判断运算符
//as、is、is! 运算符是在运行时判断对象类型的运算符
// 类型检查,如果类型成立，会智能转换
//if (emp is Person) {
//  emp.firstName = 'Bob';//不需要显式转换就可以使用Person的属性和方法
//}

//如果 emp 为 null 或者不为 Person 类型，则会抛出异常。
//(emp as Person).firstName = 'Bob';

}

//  ---------------------------  类 get  set -----------------------------------------

class Person{
  int _number = 0;
  //1.可以使用get set为私有成员变量提供对外访问的方法，如果get set不需要特殊处理，成员变量定义成公开比较好
  int get num => _number;
  set setNum(int num1){
    this._number = num1;
  }
  //2.也给私有成员变量只使用 get,使变量对外只读
  //3.只使用 get 可以使一个函数对外像一个属性一样访问
}

// ----------------------------   可选位置参数 -----------------------------------------
//可选位置参数
//参数列表可以全部都是可选位置参数,可以使用在构造函数上
//可选位置参数需要用[]括起来，只能放在参数列表后面,可以有一个或多个，
//方法调用时可选位置参数是可选的，不一定需要全部传，
//可选位置参数可以有默认值，如果定义时没有赋默认值，则为null
//可选位置参数不能与可选命名参数共存，有可选位置参数，不能有可选命名参数
int variableParams(int a,[int b,int c = 3,int d,int e]){
  print("a->$a,  b->$b,  c ->$c，  d->$d,  e ->$e" );
  int sum = a;
  if (b != null) sum += b;
  if (c != null) sum += c;
  if (d != null) sum += d;
  if (e != null) sum += e;
  return sum;
}
// ------------------------------  可选命名参数  --------------------------------------
//参数列表可以全部都是可选命名参数,可以使用在构造函数上
//可选命名参数需要放到参数列表后面，同可选位置参数一样可以有默认值，也可能没有，
//方法调用时可选命名参数是可选的，不一定需要全部传，
//与可选位置参数不同的是，可选命名参数需要使用时，要带上参数名称
//可选命名参数不能与可选位置参数共存，有可选命名参数，不能有可选位置参数
void printName(String firstName,String lastName,{String prefix,String suffix=''}) {
  print("$prefix $firstName $lastName ${suffix ?? ""}");
}

// -----------------------------   扩展函数  -----------------------------------------
extension NumberParsing on String {
  int parseInt() {
    return int.parse(this);
  }
}

extension PersonMethods on Person11 {
  bool isChinesePeople () {
    return 'zh' == country;
  }
}
class Person11 {
  String name;
  int age;
  int weight;
  int height;
  String country;
  Person11({this.name, this.age, this.weight, this.height,this.country});
}



void main() {

  print('10086'.parseInt());
  print('10086'.parseInt().runtimeType);
  print(Person11(name: 'alibaba',age: 18,weight: 100,height: 200,country: 'zh').isChinesePeople());

//  printName("Poshmeister", "Moneybuckets",suffix:"IV");
//  printName("Poshmeister", "Moneybuckets",prefix:"prefix",suffix:"IV");




//  int total = variableParams(1, 2,10);
//  int otherTotal = variableParams(1, 2, 3, 4, 5);
//  operator1();

//  Describable describable = new MyDescribable();
//  describable.describeWithEmphasis();
//  //PilotedCraft同时有 Spacecraft 和 Piloted的成员变量和方法
//  var p = new PilotedCraft("test", DateTime.now());
//  print(p is TestSpace);//true
//  print(p is Piloted);//true


  runApp(Center(child: Text("hello world",textDirection: TextDirection.ltr)));
//  var ydlObj =  TestSpace.unlaunched("aaaaa");
//  var nammma = ydlObj.name;
//  var ydlObj = new TestSpace("aaaaa",DateTime.now());
//  print("name ->${ydlObj.name}");
//  print("launcherData ->${ydlObj.launchData}");
//  var mapStr = {'ydl':"dddddddddd"};
//  TestSpace.fromJson(mapStr);

//  var voyager = TestSpace('Voyager I', DateTime(1977, 9, 5));
//  voyager.describe();
//  var voyager3 = TestSpace.unlaunched('Voyager III');
//  voyager3.describe();

//  var a = ImmutablePoint.origin;//常量
//  var a1 = const ImmutablePoint(0, 0);//常量
//  var a2 = ImmutablePoint(0, 0);
//  print(a1 == a);//true
//  print(a == a2);//false 一个是常量，一个不是常量
//  print(a1 == a2);//false 一个是常量，一个不是常量


//  var number = fibonacci(3);
//  var number = add(1,2);
//  print("number11 ->$number");

//  //定义一个无参匿名方法并立即运行
//  (){
//    print("number11 11111->");
//  }();
//  //定义一个有参匿名方法并立即运行
//      (int i,int j){
//    print('i+j=${i+j}');
//  }(7,8);
  //定义一个函数，赋值给一个变量
//  var fun = (int ii) {
//    print("hello world ----->$ii");
//  };
//  fun(11);
//  print("fun is function:${fun is Function}");//true
    //定义类型可变的变量
//    dynamic value1 = "abc";
//    print("value ->${value1.runtimeType}");
//    value1 = 123;
//    print(value1.runtimeType);
//    value1 = false;
//    print(value1.runtimeType);
//    value1 = [];
//    print(value1.runtimeType);
//    value1 = <String>[];
//    value1[0]= "abc";
//    value1[1]= "qwe";
//    value1[2]= "rty";
//    print(value1.runtimeType);
//  var isDebug = true;
//  //定义字符串变量
//  //双引号
//  var name = "hello world dart";
//  //单引号
//  var name2 = 'hello world dart';
//  //单双混用
//  var name3 = 'hello world "dart"';
//  var name4 = "hello world 'dart'";
//  //三个双引号（按书写格式输出）
//  var name5 = """
//  hello
//  world
//  dart
//  11111
//  """;
//  print(name5);
//
//  //三个单引号（按书写格式输出）
//  var name6 = '''
//  hello
//  world
//  dart
//  2222
//  ''';
//  print(name6);
//
//  var s1 = r"In a raw string,not even \n gets special treatment";
//  print(s1);
//  var s12 = 'test test \ntest2';
//  print(s12);
  //dart里只有两个数值类型 int double 都是num的子类
  //定义int变量
//  var year = 1977;
//  //定义double变量
//  var antennaDiameter = 3.7;

//  //list
//  var objList = ['qqq','www','eee','aaa'];
//  var emptyList = <String>[];
//  objList.add("pppp");
//  objList.add("pppp");
//  objList.remove("eee");
//  objList.forEach((element) {print("element list->$element");});
//  //set
//  var objSet = {"asd","sdf","jlk"};
//  var emptySet = <String>{};
//  objSet.add("asd");
//  objSet.forEach((element) {print("element set ->$element");});
    //map  定义map变量
//  var image = {
//    'tags': ['saturn'],
//    'url': '//path/to/saturn.jpg'
//  };
//  Map<String, Object> emptyMap = {};//Map<String, Object>
//  Map<String, String> map = { "flutter": "这是一条来自flutter的参数" };
//  //除了用var定义变量外
//  //可以直接声明类型
//  double z = 1;






}