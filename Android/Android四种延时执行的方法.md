# Android四种延时执行的方法

1. 开启新线程：Thread + Handler
2. 利用定时器：Timer + Handler
3. Handler + postDelayed
4. 利用AlarmManager，特点时刻广播指定意图 能实现，一般的简单任务不这么做

### 参考
* [Android延时执行调用的几种方法](http://blog.csdn.net/tdstds/article/details/38751571)