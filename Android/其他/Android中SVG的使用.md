# Android中SVG的使用

### 常见问题

* 部分手机上会崩溃，类似`java.lang.ArrayIndexOutOfBoundsException: length=32; index=32 at `的错误

  > PS导出SVG的时候为了路径精细会使用科学计算符，类似 `1.05e-4,2.75448`，而低版本 Android  是不能识别的，所以就会发生越界。像这么小的数，我们改成0或者1就可以了，对图片不会产生较大的影响。

### 参考

* [Android 中使用 SVG 的一个坑](https://www.jianshu.com/p/85322036913d)