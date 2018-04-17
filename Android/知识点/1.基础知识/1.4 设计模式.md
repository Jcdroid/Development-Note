# 设计模式

### 常用框架结构
* MVC（分层结构，Model、工具、公用类等进行分层） ✅
* MVP
* MVVM

### 常用设计模式
* 单例：
* 观察者：抽象被观察者、抽象观察者、具体被观察者、具体观察者。
* 工厂：抽象工厂、具体工厂、抽象产品接口、具体产品。有一个大的工厂它就是Factory，Factory工厂里又有很多生产车间，其中有一个就是RealFactory。我们的具体产品都是通过这些生产车间来负责生产的。抽象工厂生产抽象的东西，具体工厂生产具体的东西。包括了简单工厂模式、工厂方法模式、抽象工厂模式。我们可以基于需求来选择合适的工厂模式。
* Builder
* 模板：


### 参考
* [基于Android Architecture Components的应用架构指南](http://cdc.tencent.com/2017/06/29/基于android-architecture-components的应用架构指南/)
* [【Android】一键生成MVP代码-DevMvp快速开发框架](https://juejin.im/post/5ac4a0cef265da23994ec02a)