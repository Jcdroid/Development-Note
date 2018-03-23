# Android常用adb命令

* **`adb connect [ip]`** 使用这个命令，可以连接指定ip的设备。有了这个命令，之前讲的问题就迎刃而解了，只要将我们的电脑和电视机（机顶盒）连入同一个局域网，就可以连接到相应的设备了，然后就可以在`android studio`里直接运行或调试程序了

* **`adb disconnect [ip]`** 断连
* **`adb install -r <name>.apk`**
* **`adb uninstall [package]`** 看名字相信大家也知道，这个命令可以用来卸载应用。在电视机（机顶盒）上卸载应用并不如我们在手机上方便，全部都要用遥控器来操作，使用这个命令就方便多了。而且这次开发过程中，由于我们设备有限，几个人使用一台电视机，经常需要卸载别人安装的不同签名的程序，这个命令省去了我们不少时间。
* **`adb shell input text "string"`** **不能输中文和空格**
。用来输入文字的。我们在调试程序的时候，很多情况下要键入文字，这在手机上可能并不是个问题，可到了电视上，用遥控器按键盘真的会让你崩溃的，这个命令简直就是福音！
* **`adb shell am start -a "android.settings.APPLICATION_DETAILS_SETTINGS" -d "package:<package name>"`** 快速打开应用详情页
* **`adb shell getprop dalvik.vm.heapsize`** 查看Android系统给每个应用分配的内存大小


### 参考
* [一些快速提高Android开发的脚本与技巧（终端篇](https://droidyue.com/blog/2016/05/02/android-development-bash-scripts/)

