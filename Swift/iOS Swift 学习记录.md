# iOS Swift 学习记录

* 查看swift版本：`xcrun swift -version`
* 集成UIViewController自定义构造方法
> 1. 在 Swift 中, 类的初始化器有两种, 分别是Designated Initializer（指定初始化器）和Convenience Initializer（便利初始化器）
> 2. 如果子类没有定义任何的指定初始化器, 那么会默认继承所有来自父类的指定初始化器。
> 3. 如果子类提供了所有父类指定初始化器的实现, 那么自动继承父类的便利初始化器
> 4. 如果子类只实现部分父类初始化器，那么父类其他的指定初始化器和便利初始化器都不会继承。
> 5. 子类的指定初始化器必须要调用父类合适的指定初始化器。

* Swift-？和！的区别：见[这里](http://hanhailong.com/2016/01/28/Swift-？和！的区别)

* String与NSString的区别，以及各自的使用场景
> 1. 能使用String类型就尽量使用String类
> 2. 现在Cocoa里所有的API都能接受和返回String类型，所以也没必要特地转换下。
> 3. Swift的String是struct，而NSString类是NSObject，所以String更符合字符串“不变”这一特性。同时，在不触及NSString特有操作和动态特性的时候，使用String的方法，在性能上也会有所提升。
> 4. 由于String实现了像CollectionType这样的接口，所以有些Swift的语法特性只有String才能使用，而NSString却没有。
比如for...in的枚举遍历所有字符
> > 
> > ```
> > let words = "google.com"
> > for i in words{
> > 	print(i)// google.com
> > }
> > ```
> 5. 要使用NSString的情况：String有hasPrefix/hasSuffix方法用来判断是否以某字符串开头或结尾，但却没有containsString方法判断内部是否包含另一个字符串。但这个方法NSString却有，所有我们只能先将String转换成NSStri。
> 6. 要使用NSString的情况：使用String的rangeOfString方法来判断是否包含这个字符串


### 参考
* [Swift学习记录](http://www.swiftguide.cn/)
* [Swift教程](https://numbbbbb.gitbooks.io/-the-swift-programming-language-/content/chapter1/03_revision_history.html)
* [Swift译文](http://swift.gg/)
* [Swift Demo](https://github.com/Lax/iOS-Swift-Demos)
* [Swift - 重写UIKit框架类的init初始化方法](http://www.hangge.com/blog/cache/detail_855.html)
* [Swift-？和！的区别](http://hanhailong.com/2016/01/28/Swift-？和！的区别)
* [Swift 3 新特性](http://ios.jobbole.com/88346/)