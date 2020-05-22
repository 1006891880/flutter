
import 'dart:io';

void exceptionFun(){
//  try{
//    readFile();
//  }catch(ex,stack){
//    print("exceptionFun  ex ->$ex");
//    print("exceptionFun  stack ->$stack");
//  }finally{
//    print("finially exceptionFun ----------------");
//
//  }
  try {
    //io操作

  } on Exception catch (e) {
    print('Could not describe object: $e');
  } finally {
    print("finially exceptionFun ----------------");
  }

  try {
    //todo
  } on IOException catch(e) {
    print("Could not describe object: $e");
  } catch(e) {
    print("catch: $e");
  } finally {
    //todo
  }

  try {
    //todo
  } on IOException catch (e) {
    //todo
  } on Exception {
    //todo
  } finally {
    //todo
  }

}
void misbehave() {
  try {
    throw "exception";
  } catch (e) {
    if (!canHandle(e)) rethrow;//把不处理的异常原样抛出
  }finally{
    print("misbehave   finally ");
  }
}

bool canHandle(e) {
  return false;
}

//异常与异步
//try catch可以处理 await语句的异步异常
// 如果没有await处理，try catch就不可以处理异步异常
Future<String> getExceptionFuture() {
  var str =  Future.delayed(Duration(seconds: 4),() => throw FormatException);
  print("str type :${str.runtimeType}");
  return str;
}

void exceptionFun1() async {
  try {
    var result = await getExceptionFuture();
    print("$result");
  }catch(e) {
    print("has exception runtimeType:${e.runtimeType} info:$e");
  }
}

class Person {
  String name;
  int age;
  int height;
  int weight;
  Person({this.name, this.age, this.height,this.weight});

  @override
  String toString() {
    return 'Person{name: $name, age: $age, height: $height, weight: $weight}';
  }

}

// ------------------------------------ try catch final on 可以组合使用，常见有以下使用方式 ---------------
//try catch(e) catch也可以把错误堆栈打印了来，用法catch(e,stack)


void main(){
//  misbehave();
//  getExceptionFuture();
//  print(Person(name: "小明"));
//  print(Person(name: "小明",height: 170));
  print(Person(name: "小明",age:27,height: 170,weight: 100));


}