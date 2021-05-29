# Java-多线程

### 常用概念

- 琐：悲观锁和乐观锁（AtomicXXX）

- volatile：多线程之间可见性；禁止指令重排序（指令重排序是jvm对程序执行的一个优化）；不保证原子性。volatile原理和作用？

  [希望是volatile的最后一次理解](https://www.jianshu.com/p/3fd1d31fe28e)

- 同步机制syncronized：Java同步机制有哪些？volatile和syncronized区？

- ThreadLocal：线程数据隔离

- AtomicXXX：如[AtomicInteger](https://blog.csdn.net/u012734441/article/details/51619751)

- 多线程断点续传/下载：http headers RANGE指定bytes、RandomAccessFile。实现多个大文件同时下载，考虑哪些？（断点续传）

### 线程池

```java
ThreadPoolExecutor(int corePoolSize,
                   int maximumPoolSize,
                   long keepAliveTime,
                   TimeUnit unit,
                   BlockingQueue<Runnable> workQueue,
                   ThreadFactory threadFactory)
```

工作原理：

参数分析

- corePollSize 核心线程池大小
- maxinumPoolSize 最大线程池大小
- keepAliveTime
- unit 
- workQueue
- threadFactory

线程池的种类

- CacheThreadPoolExecutor
- 

- ScheduledThreadPoolExecutor

### 锁

##### syncronized

syncronized锁升级基础？

##### volatile

volatile实现原理分析？

##### 悲观锁和乐观锁

Atomic

##### Lock

ReentrantLock

CAS机制原理分析

### 问题

- volatile的作用？

- OOM如何排查？死锁如何排查？

- AsyncTask源码

  内部