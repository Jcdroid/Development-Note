# iOS Swift 学习记录

* 查看swift版本：`xcrun swift -version`
* 集成UIViewController自定义构造方法
> 1. 在 Swift 中, 类的初始化器有两种, 分别是Designated Initializer（指定初始化器）和Convenience Initializer（便利初始化器）
> 2. 如果子类没有定义任何的指定初始化器, 那么会默认继承所有来自父类的指定初始化器。
> 3. 如果子类提供了所有父类指定初始化器的实现, 那么自动继承父类的便利初始化器
> 4. 如果子类只实现部分父类初始化器，那么父类其他的指定初始化器和便利初始化器都不会继承。
> 5. 子类的指定初始化器必须要调用父类合适的指定初始化器。

* Swift-？和！的区别：见[这里](http://hanhailong.com/2016/01/28/Swift-？和！的区别)


### 参考
* [Swift教程](https://numbbbbb.gitbooks.io/-the-swift-programming-language-/content/chapter1/03_revision_history.html)
* [SwiftGG](http://swift.gg/)
* [Swift - 重写UIKit框架类的init初始化方法](http://www.hangge.com/blog/cache/detail_855.html)
* [Swift-？和！的区别](http://hanhailong.com/2016/01/28/Swift-？和！的区别)