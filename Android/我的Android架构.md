我的Android架构

### 分层


### 小技巧
1. 少使用继承。通过其他的方案实现继承才能实现的功能，如`Application`中的`ActivityLifecycleCallbacks`的使用。通过`ActivityLifecycleCallbacks `的回调处理一些生命周期中才能处理的情况。

### 参考
* [我一行代码都不写实现Toolbar!你却还在封装BaseActivity?](http://www.jianshu.com/p/75a5c24174b2)