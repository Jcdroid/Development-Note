# Android Dagger2学习.md

### APT(Annotation Processing Tool)和annotationProcessor
gradle2.2以上，推荐使用Google提供的annotationProcessor，而不是apt。Android 官方的 annotationProcessor 同时支持 javac 和 jack 编译方式，而 android-apt 只支持 javac 方式。当然，目前 android-apt 在 Android Gradle 插件 2.2 版本上面仍然可以正常运行，如果你没有想支持 jack 编译方式的话，可以继续使用 android-apt。

### 什么是依赖注入(Dependency injection)
简单的说就是在Module创建的时候，将它所依赖的另一个Module通过构造器传递给它，也叫注入。

### 相关Annotation说明
1. `@Module`：表明这个类是一个Dagger module，类中的方法提供依赖。
2. `@Inject`：表明这个module所要注入的类。
3. `@Provides`：表明这个方法是注入的提供者(injection provider)，方法的名称是什么不重要，关键是返回的类型。在@Module注解的类中使用。
4. `@Singleton`：使用了Singleton注解的方法总是会返回相同的实例化对象，这种方式比平时用的单例模式要好很多。每次注入，我们不会得到一个新的实例对象，而是返回一个已经存在，同时也解释了provider的作用。Application 对象是唯一的。
5. `@Component`：其注解的类是modules与injection之间的桥接接口(interface)，有自己的生命周期，生命周期结束，接口下提供的对象也会被回收。
6. `@Subcomponet`：用来扩展@Component，同Component基本有一样的属性。不同的是：1. 其注解的接口要在父Component中声明；2. 可以访问父Component中的所有元素。
7. `@Scope`：这个注解使Dagger持有Component中提供的对象的一个实例，这个实例随component有一定的生命周期，Provider 方法如果没有使用@Scope注解，它提供的对象在每次使用@Inject注入使用时都会新建一个新的对象。@Singleton是一个被Dagger定义的特殊的Scope，我们也可以定义自己的Scope。另外，一旦同时使用自己定义的@Scope与@Singleton，那后者将会失效。

### 参考
* [Dagger2从入门到放弃再到恍然大悟](https://www.jianshu.com/p/39d1df6c877d)
* [Java注解Annotation基础](http://www.open-open.com/lib/view/open1423558996951.html)
* [Dagger2官网](https://google.github.io/dagger/)
* [[译] 详解 Dagger 2（Android）](http://www.liuhaihua.cn/archives/70662.html)
* [Dagger on Android－Dagger2详解](http://blog.fidroid.com/post/android/dagger-on-android-dagger2xiang-jie)
* [DI 框架 Dagger2 系统性学习 - 不容错过的干货](https://juejin.im/entry/584e71298e450a006acc1b83)
* [android-apt 即将退出历史舞台](http://blog.csdn.net/asce1885/article/details/52878076)
* [利用APT实现Android编译时注解](http://blog.csdn.net/mcryeasy/article/details/52740041)
* [使用Dagger 2依赖注入 - API](https://juejin.im/entry/572232fc1532bc00624b5c8e)