# 源码分析-Retrofit

Retrofit class的实现思想和设计原理？

Retrofit中create为什么用动态代理？

Retrofit ServiceMethod设计理念？

Retrofit RxJavaCallAdapterFactory的设计模式和理念？

Retrofit解析注解@并生成okhttp request的过程？

Retrofit线程切换的根本原理？



Retrofit主要是在`create`方法中采用**动态代理模式**实现接口方法，这个过程构建了一个`ServiceMethod`对象，根据方法注解获取请求方式，参数类型和参数注解拼接请求的链接，当一切都准备好之后会把数据添加到Retrofit的`RequestBuilder`中。然后当我们主动发起网络请求的时候会调用okhttp发起网络请求，okhttp的配置包括请求方式，URL等在Retrofit的`RequestBuilder的build()`方法中实现，并发起真正的网络请求。

### 参考

* [入木三分：从设计者角度看Retrofit原理](https://juejin.cn/post/6963202606676049957)
* [从架构角度看Retrofit的作用、原理和启示](https://www.jianshu.com/p/f57b7cdb1c99)