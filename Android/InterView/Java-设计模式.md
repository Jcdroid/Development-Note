# Java-设计模式

### 面向对象特性

三大特性：继承、封装、多态

设计思想：六大原则，23种设计模式，3种设计架构

### OOP六大原则

- 单一职责原则 SRP(single responsibility principle)：有且只有一个原因引起类的变更。对象设计要求独立，不能设计万能对象
- 开闭原则 OCP(open close principle)：类、模块、函数等对扩展开放，对修改关闭。
- 里氏替换原则 LSP(liskov substitution principle)：所有的已用基类的地方必须能透明的使用其子类的对象。程序扩展中抽象被具体可以替换（接口、父类、可以被实现类对象、子类替换对象）
- 依赖倒置原则 DIP(dependence inversion principle)：高层模块不要依赖低层模块，所以依赖都应该是抽象的，抽象不应该依赖于具体细节而，具体细节应该依赖于抽象
- 接口隔离原则 ISP(Interface-Segregation Principle) ：接口设计大小要适中。过大导致污染，过小导致调用麻烦
- 迪米特法则 LoD(Low of Demeter) 又称最少知识原则 LKP(Least Knowledge Principle)：一个对象应该对其他对象有最少的了解。通俗点讲：一个类应该对自己需要耦合或者调用的类知道越少越好，被耦合或者调用的类内部和我没有关系，我不需要的东西你就别public了吧

### 系统源码常见设计模式

- Builder模式：AlertDialog.Builder
- 代理模式：代理模式基本概念？Retrofit使用动态代理？动态代理设计模式原理？静态代理设计模式原理？
- 适配器模式：RecyclerView与Adapter
- 命令模式：Handler.post
- 享元模式：Message.obtain
- 单例模式：InputMethodManager.getInstance
- 观察者模式：ContentObserver
- 策略模式：TimeInterpolator

### 工程设计模式的运用

Base类的封装方法？

- 抽象工厂模式：BaseActivity