# Android Studio使用以及常见问题和解决方案

### 使用技巧

#### Debug技巧

### 常用设置

默认代码超出100就会换行，如果想增大这个换行的出发条件，可在`Settings`-`Editor`-`Code Style`-`<语言>`-`Wrapping and Braces`-`Hard wrap at`中设置为`160`

### 常见问题和解决方案

* Android Studio中滚动代码在某些Windows机器上会变成翻页滚动

  > 在`Settings`-`Appearance & Behavior`-`Appearance`-`Window Options`中勾选`Smooth scrolling`即可

* Android 中 Project、Module、Library 有什么区别？

	```
	在Project 可以包含多含 Module。
	Project 相当于 Visual Studio 中的“解决方案”。
	Module 相当于 Visual Studio 中的“项目”。
	Module 分为三种：
		App Module：生成 .apk	
		Library Module：生成 .aar
		Java Module：生成 .jar
	```

* Android Studio文档显示fetching Documentation...

  > 在`sdk manager`中下载好`document`，然后`cd /Users/mzy/Library/Preferences`，再进入到对应的Android Studio版本文件夹中的`options`，打开`jdk.table.xml`，修改`javadocPath`节点的`url`（`http://developer.android.com/reference/`修改为`file://$APPLICATION_HOME_DIR$/sdk/docs/reference/`），重启AS即可。

* 真机运行出现`install_failed_user_restricted install canceled by user`错误
	
	> 小米手机：设置 -> 点击更多设置 -> 点击开发者选项 -> 点击"USB安装（允许通过USB安装应用）"
	
* 工程build时出现`transformclassesandresourceswithproguardforrelease'`
	
	> 把`Build Variants`切换到debug模式再bug即可，此时再切换release就不会报错了

* 出现R文件飘红，但是工程能正常运行的异常

	> `gradle build tool`需要和`Android Studio`版本保持一致或更低
	
* 出现第三方库无法引用飘红，请检查是否是跨lib引用，如果是，请使用api来标记引用的库，而不是`implementation`

* 下载`gradle-4.x-all.zip`出现`Connection reset`的问题，请手动到[官网](https://services.gradle.org/distributions/)下载对应的gradle存放到`C:\Users\<username>\.gradle\wrapper\dists`目录下

* 出现build的时候提示`Re-download dependencies and sync project`时，检查时候是`gradle-wrapper.properties`的gradle版本过高，可以降低版本，因为gradle的版本要和gradle build tool的保持相关性

* 编译时出现`AAPT2 error: check logs for details`的错误时，点击左侧的`Toggle View`切换到文本输出查看具体的错误

### 参考

* [Mac上解决Android Studio文档显示fetching Documentation...](http://www.5ixuexiwang.com/html/biancheng/yidongkaifa/android/2016/1207/2152.html)