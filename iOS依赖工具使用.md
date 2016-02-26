#iOS依赖工具使用

###CocoaPods

###Carthage
`https://github.com/Carthage/Carthage`

**安装**

可使用[Homebrew](http://brew.sh/)安装

```
$ brew update
$ brew install carthage
```

**入门指南**

* 在工程目录下创建`Cartfile`（使用`vim`命令创建），内容如下

```
# 必须最低 2.3.1 版本
github "ReactiveCocoa/ReactiveCocoa" >= 2.3.1
# 必须 3.x 版本
github "AFNetworking/AFNetworking" ~> 3.0 # (大于或等于 3.0 ，小于 4.0)
# 必须 0.4.1 版本
github "jspahrsummers/libextobjc" == 0.4.1
# 使用最新的版本
github "jspahrsummers/xcconfigs"
# 使用一个私有项目，在 "development" 分支
git "https://enterprise.local/desktop/git-error-translations.git" "development"
```

* 在该目录终端中运行`carthage update`，定义平台`carthage update --platform ios`
* 引入`Framework`，在工程的`Target－> General`选项下，拖拽`Carthage/Build`文件夹内想要添加的`framework`到`Linked Frameworks and Libraries`选项下。
* 在工程的 target－> Build Phases 选项下，点击 “+” 按钮，选择 “New Run Script Phase” ，填入如下内容：

	```
	/usr/local/bin/carthage copy-frameworks
	```
	![](http://images.cnitblog.com/blog2015/746857/201505/061109362679977.png)
并在`Input Files`选项里添加`framework`路径

	```
	$(SRCROOT)/Carthage/Build/iOS/ReactiveCocoa.framework
	```
	![](http://images.cnitblog.com/blog2015/746857/201505/061116508297384.png)

* 在 Git 中忽略

	如果不想把 Carthage 的依赖库 push 到 Git 仓库里，则修改 .gitignore 文件，增加忽略 Carthage 文件夹就行了： 
	
	```
	#Carthage
	Carthage
	```

###参考
* [Carthage - 一个简单、去集中化的Cocoa依赖管理器](http://www.cnblogs.com/wdsunny/p/4479590.html)
* [Cocoa 新的依赖管理工具：Carthage](http://www.isaced.com/post-265.html)
* [(译)Carthage 使用说明](http://devtian.me/2015/08/11/translate-carthage-readme/)