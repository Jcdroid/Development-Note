# iOS nil、Nil、NULL、NSNull的区别

### 前言
> 一直都分不太清楚OC定义的各种`空`，在搜索了相关资料之后，只好老老实实记录下来，以供下次查阅。

### 区别
> NULL、nil、Nil这三者对于Objective-C中值是一样的，都是(void *)0

* NULL是宏，是对于C语言指针而使用的，表示空指针
* nil是宏，是对于Objective-C中的对象而使用的，表示对象为空
* Nil是宏，是对于Objective-C中的类而使用的，表示类指向空，如`Class class = Nil`
* NSNull是类类型，是用于表示空的占位对象，与JS或者服务端的null类似的含意

|标志    |值            |含义                      |
|-------|:------------:|------------------------:|
|NULL   | (void *)0    | C指针的字面零值			   |
|nil    | (id)0	        | Objective-C对象的字面零值 |
|Nil	| (Class)0	    | Objective-C类的字面零值   |
|NSNull	| [NSNull null]	|用来表示零值的单独的对象     |




### 参考
* [nil / Nil / NULL / NSNull](http://nshipster.cn/nil/)
* [nil、Nil、NULL和NSNull区别](http://www.henishuo.com/nil-nil-null-nsnull-difference/)