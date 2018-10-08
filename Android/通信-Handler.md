# 通信-Handler

* Handler
* Message
* MessageQueen
* Looper
* HandlerThread
* EventBus

### Handler内存泄露
1. 第一种方式：定义一个`static`的Handler或Runnable的静态内部类，内部引用外部变量都使用WeakReference的方式；
2. 第二种方式：可以在Activity的`onDestroy`中调用`removeCallBacksAndMessages`清理掉队列中的消息；
3. 第三种方式：使用[WeakHandler](https://github.com/badoo/android-weak-handler)库；