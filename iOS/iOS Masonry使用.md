#iOS Masonry使用

###问题
1. -[UIView mas_makeConstraints:]: unrecognized selector sent to instance
> 这个问题是由于没有正确导入Masonry引起的，可以检查pod中是不是写到test target中去了； 检查Other Link Flag是否包含-l"Masonry"		

2. 使用Masonry的mas_updateConstraints错误理解
> mas_updateConstraints方法里对同一个布局的理解就是相对的元素也是一致才行，所以，update是针对A->B A->B的变化，A->C是一个新的约束。所以在使用mas_updateConstraints时一定要分清楚是否update还是重新添加了一个约束。另外可以通过**设置约束优先级的方式来避免对一个masonry属性添加多个约束引起的约束冲突**。

3. 出现`Assertion failure in -[MASViewConstraint install]`错误
> 可能是由于没有addSubView导致的，检测这个view有没有在布局之前进行add操作

###参考
* [Masonry issues-188](https://github.com/SnapKit/Masonry/issues/188)
* [iOS AutoLayout进阶篇](http://mp.weixin.qq.com/s?__biz=MzA4MzEwOTkyMQ==&mid=2667374665&idx=1&sn=7efacb4620a9f5a9f67c62a542f76084&scene=23&srcid=0610HfVjTF9ODOdU8d6yw4EP#rd)