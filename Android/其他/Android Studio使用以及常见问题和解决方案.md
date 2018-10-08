# Android Studio使用以及常见问题和解决方案

### 使用技巧

### 常见问题和解决方案

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
	


### 参考
* [Mac上解决Android Studio文档显示fetching Documentation...](http://www.5ixuexiwang.com/html/biancheng/yidongkaifa/android/2016/1207/2152.html)