# 关于LocalStorage

### localstorage的限制
localStorage是HTML5新增的方法，它允许JavaScript在用户计算机硬盘上永久储存数据（除非用户主动删除）。

但localStorage也有一些限制：

首先是localStorage和Cookies类似，都有域的限制，运行在不同域的JavaScript无法调用其他域localStorage的数据；

其次是单个域在localStorage中存储数据的大小通常有限制（虽然W3C没有给出限制），对于Chrome这个限制是5MB；

最后localStorage只能储存字符串型的数据，无法保存数组和对象，但可以通过join、toString和JSON.stringify等方法先转换成字符串再储存。
localStorage

localstorage可以说是对cookie的优化，使用它可以方便在客户端存储数据，并且不会随着HTTP传输。
使用场景

（1）需要缓存的数据比较大
（2）数据具有过期时间
分类

localstorage存储对象分为两种：

① sessionStrage： session即会话的意思，在这里的session是指用户浏览某个网站时，从进入网站到关闭网站这个时间段，session对象的有效期就只有这么长---临时保存。

② localStorage： 将数据保存在客户端硬件设备上，不管它是什么，意思就是下次打开计算机时候数据还在--长久保存。


### 参考
* [JavaScript本地存储实践localStorage](http://blog.csdn.net/huazhongkejidaxuezpp/article/details/50283081)