我的Android架构

### 分层
![](../images/17549bd87d1aaccd1bd9c1a61f6ac1c9)

* **SDK层**：主要是Android SDK及第三方的SDK（可能基于Android SDK或为独立的SDK），这些SDK为上层框架提供核心功能的支持。
* **基础框架层**：这里所谓的基础框架，指多数App都必需的基础功能，是具体业务逻辑实现的基础。主要有网络请求功能、图片加载与缓存功能、SQLite数据库管理功能、Log管理功能等，当然根据对业务逻辑支持的不同，基础框架层的功能支持也不一定相同，上述几个应该是大部分App都要支持的，当然Crash监控与常用工具类也可归为该层次。
* **业务逻辑层**：如果把App架构比作高层建筑，那么上述两层就是地基。地基打好之后，就可以在上面任意发挥了，至于如何发挥，那就必须结合实际的业务需求，不同的应用往往有不同的业务功能模块。

### 小技巧
1. 少使用继承。通过其他的方案实现继承才能实现的功能，如`Application`中的`ActivityLifecycleCallbacks`的使用。通过`ActivityLifecycleCallbacks `的回调处理一些生命周期中才能处理的情况。

### 参考
* [基于Android Architecture Components的应用架构指南](http://cdc.tencent.com/2017/06/29/基于android-architecture-components的应用架构指南/)
* [微信Android模块化架构重构实践](https://mp.weixin.qq.com/s?__biz=MzAwNDY1ODY2OQ==&mid=2649286672&idx=1&sn=4d9db00c496fcafd1d3e01d69af083f9)
* [我一行代码都不写实现Toolbar!你却还在封装BaseActivity?](http://www.jianshu.com/p/75a5c24174b2)