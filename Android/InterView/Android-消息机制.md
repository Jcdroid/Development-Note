# Android-消息机制

> 主体流程：通过让message持有handler，handler持有looper和messagequeue，messagequeue入队列，然后在looper的loop方法中取出messagequeue中的message执行内部target（Handler）的dispatchMessage方法

### Handler
持有`mLooper`和`Looper`中的`mQueue`对象，内部会获取到当前线程的`mLooper`对象并取出`Looper`中的`mQueue`对象，调用`sendMessage`时最终会使用`mQueue`的`enqueueMessage`进行消息的入队操作。

### Looper
内部创建了一个`mQueue（MessageQueue）`的队列，`prepare`方法能保存每个线程的`Looper`对象到`sThreadLocal`中，使用`myLooper`能从`sThreadLocal`中获取到当前线程的`Looper`对象，执行`loop`方法能从`mQueue`对象中取出`msg`，然后再调用`msg.target.diapatchMessage(msg)`调用`Handler`的`dispatchMessage`，最终会调用到`Handler`的`handleMessage`方法。

### MessageQueue
内部使用了许多`native`方法，在`Handler`中调用`mQueue`对象的`enqueueMessage`方法进行`Message`对象的入队列。

### Message
持有`target（Handler）`对象，承载发送的消息内容，内部采用单链表结构（用于形成一个Message缓存池-使用`Message.obtain()`即可获取一个可使用的`Message`对象：享元模式），最终存放在Loope的`mQueue（MessageQueue）`对象中，等待`Looper`的`loop`方法从`mQueue`对象中取出，并使用`msg.target.dispatchMessage(msg)`调用`Handler`的`dispatchMessage`，最终会调用到`Handler`的`handleMessage`方法。

### 其他

[Handler、Thread、HandlerThread三者的区别](https://blog.csdn.net/weixin_41101173/article/details/79687313)

- HandlerThread

  继承自`Thread`，源码比较简单

- IntentService

  继承自`Service`，内部使用`HandlerThread`

### 问题

- Handler源码解析？

- Looper内部怎么切换线程的？

  通过让message持有handler，handler持有looper和messagequeue，messagequeue入队列，然后在looper的loop方法中取出messagequeue中的message执行内部target（Handler）的dispatchMessage方法