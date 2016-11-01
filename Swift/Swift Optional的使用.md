Swift Optional的使用
---

> Optional 是 Swift 中一种特殊的类型，它本身有一个枚举的定义
> 
> ```
> enum Optional {
	case None
	case Some
}
> ```

* 声明一个 Optional 的 String 类型的变量，只需要在变量定义的时候在类型后面加上一个 ?，如：`var name: String?`。

* 如果这个变量是标识成 Optional 的，我们在引用它的时候就必须做一些特殊的处理，可以使用强制解包：`print(name!)`

* 相比使用强制解包，更加安全和优雅的方式是使用`Optional Chaining`：

	```
	if let nameValue = name {
		print(nameValue)
	}
	```

* 如果直接打印一个可选值，如`print(name)`，就算name不为nil，也将打印出`"Optional("xxx")"`

* 一个`Optional Chaining`，如`request.URL?.absoluteString`，我们要先将它解包出来，然后再进行处理。

	```
	if let absoluteString = request.URL?.absoluteString {
		// do something
	}
	```
	而不能直接使用下面的代码，编译会出现错误
	
	```
	if request.URL?.absoluteString == "xxx" {
	}
	```


### 参考
* [Swift - 关于 Optional 的一点唠叨](http://swiftcafe.io/2015/12/27/optional/)