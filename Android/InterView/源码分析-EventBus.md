# 源码分析-EventBus

EventBus怎么实现数据跨线程传递的，原理是什么？

能跨进程传递吗？

粘性事件的实现原理？

### subcription

#### threadMode
- `POSTING`：默认线程模式。在哪个线程发送事件，就在哪个线程接收事件
- `MAIN`：主线程模式。如果是主线程，直接执行，如果是子线程，则通过Handler切换到主线程再执行
- `MAIN_ORDERED`：主线程顺序模式。无论在哪个线程发送事件，都通过Handler先切换到主线程再执行事件
- `BACKGROUND`：后台执行模式。如果在子线程，直接执行，如果在主线程中，加入队列，通过线程池执行
- `ASYNC`：异步模式。无论在哪个线程发送事件，都加入队列，通过线程池执行

### register
生成两个map来保存订阅关系

### unregister
根据register生成的连个map进行循环移除对应的注册信息

### post
将需要post的数据保存到`postingState`队列中，它是线程独有的

### sticky post

### 参考
* [一文彻底搞懂EventBus 3.0原理](https://juejin.cn/post/6844903969517469709)