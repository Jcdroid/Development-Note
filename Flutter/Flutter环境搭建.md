# Flutter环境搭建

### Windows

* 命令行安装Flutter SDK：`git clone -b stable https://github.com/flutter/flutter.git`
* 定位并打开 `flutter` 的文件夹，双击运行 **flutter_console.bat** 开始安装
* 环境变量添加`../flutter/bin`目录
* 安装VSCode，在扩展中搜索`Flutter`插件并添加，默认也会自动添加`Dart`插件
* 运行`flutter doctor`，按照提示完成剩余的未操作项即可

### 运行

* 执行`flutter run`即可
* 如果提示有gradle的错误，请到android根目录的`build.gradle` + app目录下的`build.gradle`，设置为最新的AS可运行的相同版本，如果提示`flutter.gradle`的有异常，修改`flutter.gradle`中的build tool为最新的AS可运行的相同版本

### 快捷键

安装**IntelliJ IDEA Keybindings**可以映射Intellij的快捷键（**类似Android代码提示快捷键可以在File --> Preferences --> Keyboard Shortcuts输入trigger suggest修改为Ctrl+Alt+Space**）

### 常见问题

* 执行`flutter run`时卡在 package get
	
	>具体操作
	>
	>- Linux 或 Mac
	>
	>```shell
	>export PUB_HOSTED_URL=https://pub.flutter-io.cn
	>export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
	>```
	>
	>- Windows
	>
	>新增两个环境变量即可
	>
	>```shell
	>PUB_HOSTED_URL ===== https://pub.flutter-io.cn
	>FLUTTER_STORAGE_BASE_URL ===== https://storage.flutter-io.cn
	>```

### 参考

* [在 Windows 操作系统上安装和配置 Flutter 开发环境](https://flutter.cn/docs/get-started/install/windows)
* [Flutter 卡在 package get 的解决办法](https://jimbray.xyz/post/using-flutter-in-china/)
* [Flutter - 必备的VSCode插件](https://www.jianshu.com/p/064f281015ba)