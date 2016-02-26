# Android Gradle使用

**全文在windows环境中使用**

第一次使用Gradle命令行输入时，需要给gradle配置环境变量，gradle目录可以在android studio中找到，然后把bin配置到windows的环境变量中，这样就可以使用gradle命令了。

### Gradle常用命令

`gradle -v`  # 查看gradle版本

`gradle build`  # 检查依赖并编译打包

`gradle clean`  # 清除build目录

`gradle assemble`  # 编译并打包apk或aar

`gradle assembleDebug`  #编译并打Debug的apk或aar 

`gradle assembleRelease`  #编译并打Release的apk或aar

`gradle installRelease`  # Release模式打包并安装

`gradle uninstallRelease`  # 卸载Release模式包

### 传递性依赖

传递性依赖是指引入aar会自动去下载aar中的第三方dependencies。



### 参考

* [Gradle特性](https://segmentfault.com/a/1190000004018407)
* [构建神器Gradle](http://jiajixin.cn/2015/08/07/gradle-android/#)
* [Gradle命令详解与导入第三方包](http://stormzhang.com/devtools/2015/01/05/android-studio-tutorial5/)

