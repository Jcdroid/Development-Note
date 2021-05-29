# Flutter常见错误

* No toolchains found in the NDK toolchains folder for ABI with prefix: mips64el-linux-android

  > `gradle build tool`版本要和`gradle`版本适配，比如3.2.1使用4.6的gradle

* Error running Gradle: ProcessException: Process "\gradlew.bat" exited abnormally:

	> 把项目Android根目录下的build.gradle和Flutter SDK目录下的\packages\flutter_tools\gradle\flutter.gradle文件的repositories修改为下面的方式
	>
	> ```
	>//google()
	>//jcenter()
	>maven { url 'https://maven.aliyun.com/repository/google' }
    >maven { url 'https://maven.aliyun.com/repository/jcenter' }
    >maven { url 'http://maven.aliyun.com/nexus/content/groups/public' }
	> ```

* `flutter upgrade`时，运行出现类似`flutter\bin\internal\update_dart_sdk.ps1:62 字符: 5, Rename-Item $dartSdkPath "$oldDartSdkPrefix$oldDartSdkSuffix"`的错误

  > 在任务管理器中停止`dart.exe`，再重试`flutter upgrade`

* 执行任何`flutter`命令时出现`Unknown operating system. Cannot install Dart SDK.`错误

  > 在`flutter/bin`中执行`flutter.bat doctor`来代替`flutter doctor`，更新完毕后可以正常使用`flutter doctor`。如果还是提示同样的错误，**请尝试关闭IDEA和其他编辑器或重启电脑**

* 执行flutter命令出现`flutter/bin/cache/dart-sdk/bin/pub:No such file or directory`

  > 删除`flutter/bin/cache`目录，执行`flutter docotr`会重新下载cache

* 执行`flutter run -d chrome`出现`SocketException: Failed to create server socket (OS Error: Failed to start accept), address = localhost, port = 52113`，[isuues 53338](https://github.com/flutter/flutter/issues/53338)

  > 1. on cmd run `ipconfig`
  > 2. after running the `ipconfig` get the value of IPv4 Address.
  > 3. then on the app run: `flutter run -d chrome --web-port=8080 --web-hostname= the value of IPv4 Address`

### 参考

* [Flutter—No toolchains found in the NDK toolchains folder for ABI with prefix: mips64el-linux-android](https://blog.csdn.net/baoolong/article/details/82839931)
* [解决Flutter * Error running Gradle: ProcessException: Process "**\gradlew.bat" exited abnormally: 问题](https://www.jianshu.com/p/ff64e4ff3ffe)