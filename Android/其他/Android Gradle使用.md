# Android Gradle使用

**全文在windows环境中使用**

第一次使用Gradle命令行输入时，需要给gradle配置环境变量，gradle目录可以在android studio中找到，然后把bin配置到windows的环境变量中，这样就可以使用gradle命令了。

### Gradle常用命令
> 在Mac环境中对应将gradle替换成`./gradlew`，**注意：如果在windows中出现`gradle`命令找不到的情况，请使用`gradlew`，如果在`git bash`中无法运行，请尝试在cmd中运行**，或者执行`.\gradlew.bat`

`gradle -v`  # 查看gradle版本

`gradle build`  # 检查依赖并编译打包

`gradle build ----stacktrace`  # 检查依赖并编译打包，打印出编译信息和错误信息

`gradle clean`  # 清除build目录

`gradle assemble`  # 编译并打包apk或aar

`gradle assembleDebug`  #编译并打Debug的apk或aar 

`gradle assembleRelease`  #编译并打Release的apk或aar

`gradle installRelease`  # Release模式打包并安装

`gradle uninstallRelease`  # 卸载Release模式包

### 传递性依赖

传递性依赖是指引入aar会自动去下载aar中的第三方dependencies。


### Build Variants的使用

具体使用可以查看[官方文档](https://developer.android.com/studio/build/build-variants?hl=zh-cn)

### 新版本的更新

`Gradle 3.4` 引入了新的依赖配置，新增了 `api` 和 `implementation` 来代替 `compile` 依赖配置。其中 `api` 和以前的 `compile` 依赖配置是一样的。使用 `implementation` 依赖配置，会显著提升构建时间。
`api`和`implementation`的区别在于`implementation`不会暴露其依赖库给其他引用其本身的工程，简单来说就是可能隐藏内部的依赖库。

如果你是一个lib库的维护者，对于所有需要公开的 API 你应该使用 api 依赖配置，测试依赖或不让最终用户使用的依赖使用 implementation 依赖配置。[Gradle 依赖配置 api VS implementation](https://yuweiguocn.github.io/gradle-new-dependency-configurations/)


### 注意
* 如果在Mac系统中运行`./gradlew`出现`gradlew: Permission Denied`的问题，请执行`chmod +x gradlew`

* 当出现`Exception is:
org.gradle.api.GradleScriptException: A problem occurred evaluating root project`错误时，请检查`gradle/wrapper/gradle-wrapper.properties`中的gradle版本是否在在本机安装


### 参考
* [配置构建变体](https://developer.android.com/studio/build/build-variants?hl=zh-cn)
* [Gradle 完整指南（Android）](https://juejin.im/entry/57c7a00e0a2b58006b1a1358)
* [Gradle特性](https://segmentfault.com/a/1190000004018407)
* [构建神器Gradle](http://jiajixin.cn/2015/08/07/gradle-android/#)
* [Gradle命令详解与导入第三方包](http://stormzhang.com/devtools/2015/01/05/android-studio-tutorial5/)
* [Android Build Variants 为项目设置变种版本](http://blog.csdn.net/mq2553299/article/details/71429657?locationNum=13&fps=1)
* [Android Studio的两种模式及签名配置](http://www.cnblogs.com/details-666/p/keystore.html)
* [How to set versionName in APK filename using gradle?](https://stackoverflow.com/questions/18332474/how-to-set-versionname-in-apk-filename-using-gradle)
* [How to get current buildType in Android Gradle configuration](https://stackoverflow.com/questions/25739163/how-to-get-current-buildtype-in-android-gradle-configuration)
