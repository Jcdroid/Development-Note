# iOS开发规范

2016.3.1

### 前言

> 每次开始做iOS项目时，都会要考虑这个项目的一些前期准备工作，比如选架构、分目录、写注释、写标注、导入第三方库等等，一时兴起，想记录下来以供以后查阅，节约时间。

### 选架构：MVC还是MVVM？

公司项目使用保险起见还是继续使用MVC，但是自己的项目可以用MVVN练手。

### 分目录：先MVC再业务还是先业务再MVC？



### 写注释

使用第三方框架来自动生成注释文档，[VVDocumenter-Xcode](https://github.com/onevcat/VVDocumenter-Xcode)在方法前面输入三个///就可以生成注释。

### 写标注

ViewController的标注按照以下的顺序：

1. 生命周期函数：`#pragma mark - life circle`
2. Delegate：`#pragma mark - <Deleagete name>`
3. action event：`pragma mark - event response`
4. getters and setters：`#pragma mark - getters and setters`

### 导入第三方库

开发：AFNetworking、ReactiveCocoa

测试：Specta、Mock、Expecta

一套常用的pod文件：

``` 
platform :ios, '7.0'

pod 'AFNetworking', '~> 2.5.4'
pod 'SDWebImage', '~> 3.7.3'
pod 'Masonry', '~> 0.6.4'
pod 'JSONModel', '~> 1.1.0'
pod 'ReactiveCocoa', '~> 2.5'
pod 'libextobjc'
pod 'MBProgress', '~> 0.9.1'

target :"<#Target#>-iOSTests", exclusive => true do

pod 'Specta', '~> 0.2.1'
pod 'Expecta', '~> 0.2'
pod 'OCMock', '~> 2.2.2'

end
```