# Android compileSdkVersion、minSdkVersion和targetSdkVersion

* compileSdkVersion

  > 编译时使用的sdk版本
	
* minSdkVersion

  > 最小支持的 API 版本，这个值直接决定了你的 APK 是否能够安装在设备上

* targetSdkVersion

  > 编译后生成的apk执行时的sdk版本。 targetSdkVersion 是 Android 系统提供前向兼容的主要手段。随着 Android 系统的升级，某个系统的 API 或者模块的行为可能会发生改变，但是为了保证老 APK 的行为还是和以前兼容。只要 APK 的 targetSdkVersion 不变，即使这个 APK 安装在新 Android 系统上，其行为还是保持老的系统上的行为，这样就保证了系统对老应用的前向兼容性。targetSdkVersion 指定了我们希望的 API 所呈现的版本形式，但是只能向前。
  

用较低的 minSdkVersion 来覆盖最大的人群，用最新的 SDK 设置 target 和 compile 来获得最好的外观和行为。

### 参考

* [Android：compileSdkVersion、buildToolsVersion、minSdkVersion与targetSdkVersion](https://www.jianshu.com/p/a29f8640d84f)
* [提升targetSdkVersion至26+适配概要](https://lx8421bcd.github.io/2018/12/21/%E6%8F%90%E5%8D%87targetSdkVersion%E8%87%B326+%E9%80%82%E9%85%8D%E6%A6%82%E8%A6%81/)
* [Android targetSdkVersion 升级至 26 指南](https://blog.csdn.net/u010289802/article/details/95863551)
* [【开发技术】如何选择 compileSdkVersion, minSdkVersion 和 targetSdkVersion](https://mp.weixin.qq.com/s?__biz=MzAwODY4OTk2Mg==&mid=402663112&idx=1&sn=51a24508e380c4d9d53b080498513ea1&scene=38#wechat_redirect)
* [Android targetSdkVersion 升级到 26 总结](https://juejin.im/post/5d0c9eaff265da1bc8543157)
* [targetSdkVersion升级到28一些修改的地方(持续更新)](https://www.jianshu.com/p/6ce99e03080f)

