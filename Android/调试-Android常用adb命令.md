# Android常用adb命令
* `adb devices`：查看已连接的设备
* `adb kill-server`：终止服务
* `adb start-server`：开启服务
* `adb install -r <name>.apk`：安装应用
* `adb remount`：将设备改为可读可写
* `adb push <xxx.apk> system/app`：使用push的方式安装apk到系统目录
* `adb shell am start PACKAGE_NAME/ACTIVITY_IN_PACKAGE`：启动Activity，如`adb shell am start -n com.jcdroid.io/.MainActivity`
* `adb connect [ip]`：连接指定ip（局域网内）的设备
* `adb disconnect [ip]`：断连
* `adb uninstall [package]`：卸载应用
* `adb shell`：进入设备的命令行
* `adb shell input text "string"`：**不能输中文和空格**
  。用来输入文字的。我们在调试程序的时候，很多情况下要键入文字，这在手机上可能并不是个问题，可到了电视上，用遥控器按键盘真的会让你崩溃的，这个命令简直就是福音！
* `adb shell am start -a "android.settings.APPLICATION_DETAILS_SETTINGS" -d "package:<package name>"`：快速打开应用详情页
* `adb shell getprop dalvik.vm.heapsize`：查看Android系统给每个应用分配的内存大小
* `adb shell screencap -p | perl -pe 's/\x0D\x0A/\x0A/g' > screen.png`：截取屏幕
* `adb shell input keyevent 82`：解锁屏幕
* `adb shell ps`：查看所有进程
* `adb shell ps <packagename>`或`adb shell ps | grep <packagename>`：显示指定应用的process信息
* `adb logcat`：显示日志流
* `adb logcat -s TAG_NAME`：按标签过滤
* `adb logcat "*:PRIORITY"`：按优先级过滤，如`adb logcat "*:D"`
* `adb logcat -s TAG_NAME:PRIORITY`：按标签名和优先级过滤，如`adb logcat -s TEST: W`
* `adb logcat -c`：清除logcat的缓冲区


### 参考
* [Android ADB常用命令](http://android.jobbole.com/61592/)
* [一些快速提高Android开发的脚本与技巧（终端篇](https://droidyue.com/blog/2016/05/02/android-development-bash-scripts/)

