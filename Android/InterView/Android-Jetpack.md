# Jetpack

[Android Jetpack架构组件（一）带你了解Android Jetpack](https://juejin.cn/post/6844903976815558663)

### 简介

Jetpack主要特性有以下三点：

**1.加速开发** 组件可单独使用，也可以协同工作，当使用kotlin语言特性时，可以提高效率。

**2.消除样板代码** Android Jetpack可管理繁琐的Activity（如后台任务、导航和生命周期管理）。

**3.构建高质量的强大应用** Android Jetpack组件围绕现代化设计实践构建而成，具有向后兼容性，可以减少崩溃和内存泄漏。

### 架构图

![e6R24K.png](https://user-gold-cdn.xitu.io/2019/10/24/16df962a96cd78ec?imageView2/0/w/1280/h/960/format/webp/ignore-error/1)

##### 架构组件 Architecture

- Lifecycles

  [Lifecycle实现原理](https://www.jianshu.com/p/18c81645e595)

  [Android Jetpack（一） Lifecycle 组件原理剖析](https://chiclaim.blog.csdn.net/article/details/104189041)

  [Android架构组件（一）：Lifecycle](https://powerofandroid.com/2019/10/18/Android架构组件（一）：Lifecycle/)

  Lifecycle基本原理？

- LiveData

  [LiveData 使用与源码分析——完全搞懂LiveData原理](https://blog.csdn.net/xx326664162/article/details/90756817)

  [Android LiveData原理分析](https://www.jianshu.com/p/79ae2b49a725)

  [Android Jetpack（三）LiveData 组件原理剖析](https://chiclaim.blog.csdn.net/article/details/104334179)

  [Android架构组件（二）：LiveData](https://powerofandroid.com/2019/10/22/Android架构组件（二）：LiveData/)

  LiveData粘性事件原理方案？

- ViewModel

  [Android ViewModel 实现原理](https://zhuanlan.zhihu.com/p/110772274)

  [深入理解Jetpack 之ViewModel | 程序亦非猿](http://yifeiyuan.me/blog/52b29a03.html)

  [Android Jetpack（二）ViewModel 组件原理剖析](https://blog.csdn.net/yuzhiqiang666/article/details/104200091)

  [Android架构组件（三）：Viewmodel](https://powerofandroid.com/2019/10/24/Android架构组件（三）：ViewModel/)

- Room

  [Android架构组件（四）：Room](https://powerofandroid.com/2019/10/25/Android架构组件（四）：Room/)

- Data Binding

  [DataBinding实现原理探析](https://juejin.cn/post/6844903494831308814)

  databinding初始化做了什么事情？

  databinding双向绑定实现原理？

- Paging

  [Paging Library使用及原理](https://juejin.cn/post/6844903842031599629)

- WorkManager

  [理解WorkManager 的实现](https://blog.jiyang.site/posts/2019-12-07-理解-workmanager-的实现/)

  [Jetpack WorkManager 原理](https://www.jianshu.com/p/4ce7292aeef1)
  
  WorkManager源码分析主线流程？
  
  WorkManager源码分析有约束条件流程？
* [App Startup](https://developer.android.google.cn/topic/libraries/app-startup)

##### 基础组件 Foundation

- AppCompat
- Android KTX

### 应用架构指南

https://developer.android.google.cn/jetpack/guide



### Jetpack Compose

Jetpack Compose用于构建原生界面的新款 Android 工具包。它可简化并加快 Android 上的界面开发。使用更少的代码、强大的工具和直观的 Kotlin API，快速让应用生动而精彩。

