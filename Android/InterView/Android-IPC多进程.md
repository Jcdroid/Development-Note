# Android-IPC之Binder

https://www.jianshu.com/p/e3293b8346ab

### Binder机制原理（工作流程）

为什么Intent不能传递大数据？

```
// 官方文档描述
Binder 事务缓冲区的大小固定有限，目前为 1MB，由进程中正在处理的所有事务共享。由于此限制是进程级别而不是 Activity 级别的限制，因此这些事务包括应用中的所有 binder 事务，例如 onSaveInstanceState，startActivity 以及与系统的任何互动。超过大小限制时，将引发 TransactionTooLargeException。
```

通俗点说，intent传递数据会存储在Binder事务缓冲区，超过这个大小限制，就会抛出异常。这个缓冲区还是共用的，用的人多了，内存不够，也会抛出异常。

为什么要了解Binder？

Binder如何做到一次拷贝的？

Binder是如何实现跨进程的？

Binder进程间通信机制？

### AIDL

aidl生成Java类细节

