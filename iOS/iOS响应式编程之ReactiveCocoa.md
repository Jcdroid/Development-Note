#iOS响应式编程之ReactiveCocoa

![](http://limboy.me/image/FRP_ReactiveCocoa_large.png)

## Core 
### RACStream

#### RACStream子类：RACSignal
##### RACSignal的重复订阅

###### RACMulticastConnection

###### Replay、ReplayLast、ReplayLazily

#### RACSubject的信号重接收订阅

##### RACReplaySubject

#### RACStream子类：RACSequence

##### 1. filter

###### 信号过滤和队列过滤
	```	
	[[dictionary.rac_valueSequence.signal filter:^BOOL(NSNumber *checking) {
             return checking.boolValue;
             }] subscribeNext:^(id x) {
             NSLog(@"%@", x);
             }];
	NSArray *checkArray = [[dictionary.rac_valueSequence filter:^BOOL(NSNumber *checking) {
                return checking.boolValue;
            }] array];
    ```    

## UI相关

### UITableViewCell
#### rac_prepareForReuseSignal

## 问题
1. self.textField.rac_textSignal和RACObserve(self.textField, text)的区别？
	
	答：从源码中可以知道前者是textField文字改变的delegate发出的信号，而后者是对textField对象的text赋值变化时发出的信号

###参考
* [ReactiveCocoa v2.5 源码解析之架构总览](http://blog.leichunfeng.com/blog/2015/12/25/reactivecocoa-v2-dot-5-yuan-ma-jie-xi-zhi-jia-gou-zong-lan/)
* [iOS的函数响应型编程](https://kevinhm.gitbooks.io/functionalreactiveprogrammingonios/content/)
* [使用ReactiveCocoa实现iOS平台响应式编程](http://www.itiger.me/?p=38)
* [ReactiveCocoa 和 MVVM 入门](http://yulingtianxia.com/blog/2015/05/21/ReactiveCocoa-and-MVVM-an-Introduction/)
* [ReactiveCocoa与Functional Reactive Programming](http://limboy.me/ios/2013/06/19/frp-reactivecocoa.html)
* [ReactiveCocoa入门教程](http://www.cocoachina.com/ios/20150123/10994.html)
* [ReactiveCocoa](http://www.ios122.com/2015/10/reactivecocoa/)
* [iOS-ReactiveCocoa使用之细说信号的订阅](http://tangent.gift/2016/04/10/iOS-ReactiveCocoa使用之细说信号的订阅/)
* [说说ReactiveCocoa2](http://limboy.me/ios/2013/12/27/reactivecocoa-2.html)
* [ReactiveCocoa2实战](http://limboy.me/ios/2014/06/06/deep-into-reactivecocoa2.html)
* [iOS开发-ReactiveCocoa(RAC)框架](http://yimouleng.com/2015/12/20/ios-ReactiveCocoa/)