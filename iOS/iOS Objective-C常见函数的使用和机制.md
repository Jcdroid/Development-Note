# iOS Objective-C常见函数的使用和机制

### objc_msgSend
> 在Objective-C中, 如果向某对象传递消息, 那就会使用动态绑定机制来决定需要调用的方法. 在底层, 所有方法都是普通的C语言函数, 然而对象收到消息之后, 究竟该调用哪个方法则完全于运行期决定, 甚至可以在程序运行时改变, 这些特性使得Objective-C 成为一门真正的动态语言.

其“原型”`prototype`
>  void objc_msgSend(id self, SEL cmd, ...)

第一个参数代表接收者, 第二个参数代表选择子(SEL 是选择子的类型), 后续参数就是消息中的那些参数, 其顺序不变
> id returnValue = objc_msgSend(someObject, @selector(messageName:), parameter);

### 错误
* objc_msgSend()报错Too many arguments to function call ,expected 0,have 
> Build Setting--> Apple LLVM 6.0 - Preprocessing--> Enable Strict Checking of objc_msgSend Calls  改为NO



### 参考
* [理解objc_msgSend的作用](http://www.jianshu.com/p/7e588db4cd29)