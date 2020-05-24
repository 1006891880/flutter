import 'dart:async';



void test1(){
  print('main #1 of 1');
  new Future(() => print('future #2 of 4'))
      .then((_) => print('future #2a'))
      .then((_) {
    print('future #2b');
    scheduleMicrotask(() => print('microtask #0 (from future #2b)'));
  })
      .then((_) => print('future #2c'));

  new Future(() => print('future #3 of 4'))
      .then((_) => new Future(() => print('future #3a (a new future)')))
      .then((_) => print('future #3b'));

  new Future(() => print('future #4 of 4'));

  print('main #2 of 2');
  //future #2 of 4
  //future #2a
  //future #2b
  //future #2c
  //microtask #0 (from future #2b)
  //future #3 of 4
  //future #4 of 4
  //future #3a (a new future)
  //future #3b
}

void future11(){
  new Future(()=>{print("future  task")});
}
void future22(){
  //你也可以使用then或者whenComplete在Future结束后立刻执行某段代码。如下面这段代码在这个Future被执行后会立刻输出42：
  new Future(()=>23).then((value) => value+12).then((value) => print("value -->$value"));
}
void future33(){
  print("future33");
  //一秒后向event队列添加一个任务
  //1.main方法执行完毕
  //2.microtask队列为空
  //3.该任务前的任务全部执行完毕
  //所以该任务真正被执行可能是大于1秒后。
  new Future.delayed(Duration(seconds: 1),()=>{print("delay  1s  ")});

  //Future
  //1.被添加到then()中的方法会在Future执行后立马执行(这方法没有被加入任何队列，只是被回调了)。
  //2.如果在then()调用之前Future就已经执行完毕了，那么会有一个任务被加入到microtask队列中。这个任务执行的就是被传入then的方法。
  //3.Future()和Future.delayed()构造方法并不会被立刻完成，他们会向event队列中添加一个任务。
  //4.Future.value()构造方法会在一个microtask中完成。
  //5.Future,sync()构造方法会立马执行其参数方法，并在microtask中完成。
}


/*
void main(){

//  test1();
//  future11();
//  future22();
  future33();

}*/


