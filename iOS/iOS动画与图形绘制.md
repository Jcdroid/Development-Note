# iOS动画与图形绘制

### 动画
> 动画可分为两类：关键帧动画、逐帧动画

###### CAAnimation
* CABasicAnimation，可设定起始结束两个关键帧的信息。
* CAKeyframeAnimation，除首尾外，还可添加多个中间关键点。
* CAAnimationGroup ，可组合多个动画，因为上面两种动画一次只能设置一个属性值。
* CATransition，图层过渡动画，默认是淡入。比如修改一个 CALayer的背景色时，是从初始色慢慢淡入过渡到结束色。
可修改为新颜色把旧颜色顶出去等效果。还可使用 CIFilter 滤镜做过渡效果，一些开源 UIViewController 的过渡动画使用了这种方式。

##### 隐式动画
即系统自动添加上的动画。当我们改变 CALayer 的一个可动画的属性值时，就会触发系统的隐式动画。可动画的属性值，可以在 CALayer 的文档中找到，属性说明中标有 Animatable 的，就是可自动添加动画的属性。

但是，有一个例外，对于 UIView 背后对应的 CALayer，系统关闭了隐式动画，所以当我们直接修改 UIView 或者是其底层的 CALayer 时，变化是直接生效的，没有动画效果。

UIView 有一系列的`animateWithDuration`动画方法，在这些方法中 UIView 会恢复隐式动画，所以在动画的 block 中修改属性时，又会触发隐式动画。

### 图形绘制

CGContextRef

CALyaer

CAShapeLayer

UIBezierPath

### 参考
* [iOS核心高级动画技巧](https://zsisme.gitbooks.io/ios-/content/chapter6/cashapelayer.html)
* [Core Animation2-CABasicAnimation](http://www.cnblogs.com/mjios/archive/2013/04/15/3021343.html#label0)
* [放肆的使用UIBezierPath和CAShapeLayer画各种图形](http://www.jianshu.com/p/c5cbb5e05075)
* [解析 iOS 动画原理与实现](http://www.jianshu.com/p/13c231b76594)
* [iOS-Core-Animation-Advanced-Techniques](https://github.com/AttackOnDobby/iOS-Core-Animation-Advanced-Techniques)