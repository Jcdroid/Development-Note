# Android Annotations注解使用

### 执行注解
* @Nullable注解能被用来标注给定的参数或者返回值可以为null。
* @NonNull注解能被用来标注给定的参数或者返回值不能为null。

### 资源类型注解
@StringRes, @DrawableRes, @ColorRes, @InterpolatorRes

@AnyRes特殊的资源类型注解。它被用来标注一个未知的特殊类型的资源

### 类型定义注解
@IntDef, @StringDef

### 线程注解
如果你的方法只能在指定的线程类型中被调用，那么你就可以使用以下4个注解来标注它:

* @UiThread
* @WorkerThread
* @MainThread
* @BinderThread

如果一个类中的所有方法都有相同的线程需求，那么你可以注解类本身。

@UiThread还是@MainThread?

在进程里只有一个主线程。这个就是@MainThread。同时这个线程也是一个@UiThread。比如activity的主要窗口就运行在这个线程上。然而它也有能力为应用创建其他线程。这很少见，一般具备这样功能的都是系统进程。通常是把和生命周期有关的用@MainThread标注，和View层级结构相关的用@UiThread标注。但是由于@MainThread本质上是一个@UiThread，而大部分情况下@UiThread又是一个@MainThread，所以工具(lint ,Android Studio,等等)可以把他们互换，所以你能在一个可以调用@MainThread方法的地方也能调用@UiThread方法，反之亦然。

### RGB颜色整型
@ColorInt注解，表示你期望的是一个代表颜色的整数值。

### 权限注解
如果你的方法的调用需要调用者有特定的权限，你可以使用`@RequiresPermission`注解。

### 方法重写
@CallSuper
如果你的API允许使用者重写你的方法，但是呢，你又需要你自己的方法(父方法)在重写的时候也被调用，这时候你可以使用@CallSuper标注。

### 返回值
@CheckResult
如果你的方法返回一个值，你期望调用者用这个值做些事情，那么你可以使用@CheckResult注解标注这个方法。

@VisibleForTesting
你可以把这个注解标注到类、方法或者字段上，以便你在测试的时候可以使用他们。

@Keep
我们还在注解库里添加了@Keep注解，但是Gradle插件还支持（尽管已经在进行中）。被这个注解标注的类和方法在混淆的时候将不会被混淆。

### 其他
@TargetApi
标记此变量、方法或类需要的Android api版本

@RequiresApi
标记此变量、方法或类需要的Android api版本

### 参考

* [Android注解支持(Support Annotations)](http://www.flysnow.org/2015/08/13/android-tech-docs-support-annotations.html)