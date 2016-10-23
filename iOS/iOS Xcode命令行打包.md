# iOS Xcode命令行打包
2016年6月6日 12:30

### 前言
在项目的开发过程中，经常会遇到客户需要ipa包测试，但是每次手动去打包又觉得很烦，干脆一鼓作气，学习命令行打包，从此走向人生巅峰。

### xcodebuild打包

##### xcodebuild介绍
`xcodebuild`是苹果提供的打包项目或者工程的命令，可以使用`man xcodebuild`来查看[`man page`](files/xcodebuild手册.pdf)。

##### xcodebuild常用命令
* `xcodebuild -version`：查看版本
* `xcodebuild -list`：查看 project 中的 targets 和 configurations，或者 workspace 中 schemes，不会对工程造成影响。 配合 -project 或者  -workspace 使用。
* `xcodebuild -showBuildSettings`：查看当前工程 build setting 的配置参数，不会对工程造成影响。 配合 -project 或者  -workspace 使用。
* `xcodebuild -showsdks`：列出 Xcode 所有可用的 SDKs，不会对工程造成影响
* `xcodebuild -usage`：查看 xcodebuild 的命令，不会对工程造成影响

##### 使用xcodebuild和xcrun打包签名
> 如果不在工程配置文件中指定签名文件那必须在参数中指定签名文件（CODE_SIGN_IDENTITY）。（如果你的工程在真机中能编译通过，那么使用xcodebuild 命令行肯定是可以build 成功的）

1. xcproject使用（Build）：`xcodebuild -project <Name>.xcodeproj -target <Name> -configuration Release`
2. xcworkspace使用（Build）：`xcodebuild -workspace <Name>.xcworkspace -scheme <Name> -configuration Release`
2. 从.app包得到ipa文件：`xcrun -sdk iphoneos -v PackageApplication ./build/Release-iphoneos/$(target|scheme).app ~/Desktop/<name>.ipa`

##### 对xcrun打包出ipa和xcodebuild export出ipa的误解：`xcodebuild可以做到打包出ipa，为啥好多人自动打包时还要使用xcrun？`
在和同学的聊天中，被一言点醒，突然醒悟过来，xcodebuild有从archive中导出ipa的指令，可是没见到从.app导出.ipa的指令（但是有build出.app的指令），.app包（未签名）是build的过程中生成的，build configuration为Debug时生成Debug的.app包，为Release时生成Release的.app包。实际上xcodebuild export和xcrun PackageApplication出ipa是原理不同的，xcrun是从build得到的.app包导出.ipa包，xcodebuild则是从.archive包中导出.ipa包。`也就是build的方式是生成.app包，archive是生成.archive包。.app包需要xcrun进行签名。archive包则可以用xcodebuild直接导出`。误解的原因主要是没理解build包和archive包。另外，以前把archive后缀改为.ipa拖到iTunes，再从iTunes拖出ipa。估计就是iTunes对archive包做了xcodebuild的export操作。.app包好像也是可以拖到iTunes，再拖出来得到ipa包，估计就是进行了xcrun的PackageApplication操作。**使用xcrun时从build的app包中得到ipa包，而xcodebuild archive得到的是archive包，然后从archive包中导出ipa包**


##### 制作shell脚本实现全自动打包

### xctool打包
1. 进行clean：`xctool -workspace PackageExample.xcworkspace -scheme PackageExample -configuration ${buildConfiguration} clean`
2. 打包：`xctool -workspace PackageExample.xcworkspace -scheme PackageExample -configuration ${buildConfiguration} archive -archivePath ${buildPath}`
3. 导出ipa包：`xcodebuild -exportArchive -exportFormat IPA -archivePath ${buildPath} -exportPath ${ipaName} -exportProvisioningProfile "$profile"`

[完整的脚本](files/autoarchive.sh)

### 持续集成与管理
见[这里](iOS持续集成与管理.md)

### 参考
* [iOS自动打包并发布脚本](http://liumh.com/2015/11/25/ios-auto-archive-ipa/)
* 在shell中使用`xcodebuild+xcrun`可以打包出ipa，具体的[参考实例](https://github.com/webfrogs/xcode_shell) 
* [xctool](https://github.com/facebook/xctool)
* [使用xctool自动打包，测试xcode项目](http://itindex.net/detail/44033-xctool-%E6%B5%8B%E8%AF%95-xcode)
* [动手搭建 iOS CI 环境之「了解 xcodebuild 命令」](http://blog.nswebfrog.com/2015/10/31/xcodebuild/)