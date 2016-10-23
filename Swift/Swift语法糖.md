# Swift语法糖

### Selector 语法糖
在 Swift 2.2 之前，selector 都需要传入字符串，并且没有自动补全。在 Swift 2.2 中，selector 的写法更加安全了，但是还是很丑。可以使用下面方法

```
private struct Action {
    static let buttonTapped = 
        #selector(ViewController.buttonTapped(_:))
}
...
button.addTarget(self, action: Action.buttonTapped,       
    forControlEvents: .TouchUpInside)
```
这种模式还能再优化一下，还能更优雅。既然能用 Selector extension，为什么还要用 Action 结构体呢？

```
private extension Selector {
    static let buttonTapped = 
        #selector(ViewController.buttonTapped(_:))
}
...
button.addTarget(self, action: .buttonTapped, 
    forControlEvents: .TouchUpInside)
```
这样还可以利用 Swift 的类型推断。对象的 action: 参数需要 Selector 类型，我们使用的就是 Selector 的属性，因此可以省略 Selector. 前缀（之前 Action 必须写成 Action.buttonTapped:）。

### 参考
[http://swift.gg/2016/06/02/swift-selector-syntax-sugar/](http://)