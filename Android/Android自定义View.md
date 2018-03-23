# Android自定义View

### 常用方式
自定义View包含三种方式：

1. **自绘控件**：自绘控件的意思就是，这个View上所展现的内容全部都是我们自己绘制出来的
2. **组合控件**：组合控件的意思就是，我们并不需要自己去绘制视图上显示的内容，而只是用系统原生的控件就好了，但我们可以将几个系统原生的控件组合到一起，这样创建出的控件就被称为组合控件。
3. **继承控件**：继承控件的意思就是，我们并不需要自己重头去实现一个控件，只需要去继承一个现有的控件，然后在这个控件上增加一些新的功能，就可以形成一个自定义的控件了。

### 绘制基础
* 自定义绘制的方式是重写绘制方法，其中最常用的是 onDraw()
* 绘制的关键是 Canvas 的使用 
	* Canvas 的绘制类方法： drawXXX() （关键参数：Paint）
	* Canvas 的辅助类方法：范围裁切和几何变换
* 可以使用不同的绘制方法来控制遮盖关系

### 参考
* [Hencoder](http://hencoder.com/)
* [Android LayoutInflater原理分析，带你一步步深入了解View(一)](http://blog.csdn.net/guolin_blog/article/details/12921889)
* [Android自定义控件三部曲文章索引](http://blog.csdn.net/harvic880925/article/details/50995268)
* [awesome-view](https://github.com/xinghongfei/awesome-view)
* [推翻自己和过往，重学自定义View](http://blog.csdn.net/lfdfhl/article/details/51671038)
