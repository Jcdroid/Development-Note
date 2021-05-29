# Dart基本语法

### 变量声明
1. var：类似于`JavaScript`中的`var`，它可以接收任何类型的变量，但最大的不同是`Dart`中`var`变量一旦赋值，类型便会确定，则不能再改变其类型
2. dynamic和Object：`dynamic`和`Object`与`var`功能相似，都会在赋值时自动进行类型推断，不同在于，赋值后可以改变其类型
3. final和const：如果您从未打算更改一个变量，那么使用`final`或 `const`，不是`var`，也不是一个类型。 一个 `final`变量只能被设置一次，两者区别在于：`const`变量是一个编译时常量，`final`变量在第一次使用时被初始化。被`final`或者`const`修饰的变量，变量类型可以省略

### 函数
`Dart`是一种真正的面向对象的语言，所以即使是函数也是对象，并且有一个类型`Function`。这意味着函数可以赋值给变量或作为参数传递给其他函数，这是函数式编程的典型特征。

### 异步支持
`Dart`类库有非常多的返回`Future`或者`Stream`对象的函数。 这些函数被称为异步函数：它们只会在设置好一些耗时操作之后返回，比如像 IO操作。而不是等到这个操作完成。

`async`和`await`关键词支持了异步编程，运行您写出和同步代码很像的异步代码。

#### Future
`Future`与`JavaScript`中的`Promise`非常相似，表示一个异步操作的最终完成（或失败）及其结果值的表示。简单来说，它就是用于处理异步操作的，异步处理成功了就执行成功的操作，异步处理失败了就捕获错误或者停止后续操作。一个`Future`只会对应一个结果，要么成功，要么失败。

由于本身功能较多，这里我们只介绍其常用的API及特性。还有，请记住，`Future`的所有API的返回值仍然是一个`Future`对象，所以可以很方便的进行链式调用。

##### Future.then

##### Future.catchError

##### Future.whenComplete

##### Future.wait

#### Async/await

#### Stream
`Stream`也是用于接收异步事件数据，和`Future`不同的是，它可以接收多个异步操作的结果（成功或失败）。 也就是说，在执行异步任务时，可以通过多次触发成功或失败事件来传递结果数据或错误异常。 `Stream`常用于会多次读取数据的异步任务场景，如网络内容下载、文件读写等。

#### 操作符

* `??`：如`AA??'999'`，AA为空，则返回999
* `??=`：如`AA??='999'`，AA为空，则AA赋值为999
* `~/`：如`AA~/999`，AA对于999整除
* `?`：如`event?.fix()`，如果event为空，则不执行fix

### 参考
* [Dart语言简介](https://book.flutterchina.club/chapter1/dart.html)
* [Flutter完整开发实战详解(一、Dart语言和Flutter基础) ](https://juejin.im/post/5b631d326fb9a04fce524db2)