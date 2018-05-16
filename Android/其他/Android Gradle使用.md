# Android Gradle使用

**全文在windows环境中使用**

第一次使用Gradle命令行输入时，需要给gradle配置环境变量，gradle目录可以在android studio中找到，然后把bin配置到windows的环境变量中，这样就可以使用gradle命令了。

### Gradle常用命令
> 在Mac环境中对应将gradle替换成`./gradlew`

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

### 注意
* 如果在Mac系统中运行`./gradlew`出现`gradlew: Permission Denied`的问题，请执行`chmod +x gradlew`

* 当出现`Exception is:
org.gradle.api.GradleScriptException: A problem occurred evaluating root project`错误时，请检查`gradle/wrapper/gradle-wrapper.properties`中的gradle版本是否在在本机安装


### 参考
* [Gradle 完整指南（Android）](https://juejin.im/entry/57c7a00e0a2b58006b1a1358)
* [Gradle特性](https://segmentfault.com/a/1190000004018407)
* [构建神器Gradle](http://jiajixin.cn/2015/08/07/gradle-android/#)
* [Gradle命令详解与导入第三方包](http://stormzhang.com/devtools/2015/01/05/android-studio-tutorial5/)
* [Android Build Variants 为项目设置变种版本](http://blog.csdn.net/mq2553299/article/details/71429657?locationNum=13&fps=1)
* [Android Studio的两种模式及签名配置](http://www.cnblogs.com/details-666/p/keystore.html)
* [How to set versionName in APK filename using gradle?](https://stackoverflow.com/questions/18332474/how-to-set-versionname-in-apk-filename-using-gradle)
* [How to get current buildType in Android Gradle configuration](https://stackoverflow.com/questions/25739163/how-to-get-current-buildtype-in-android-gradle-configuration)
