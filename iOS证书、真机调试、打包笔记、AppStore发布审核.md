# iOS证书、真机调试、打包笔记、AppStore发布审核

### 证书
iOS分为开发和发布证书

### 真机调试
> 注意真机调试只能使用开发证书才能执行，否则会出现`The executable was signed with invalid entitlements`错误。

1. 添加iPhone的uuid到`Member Center`；
2. 在对应的开发描述文件中配置好证书和设备。

### 多机共享账号
1. 根据证书创建p12交换文件（可以不设置密码）共享到其他Mac；
2. 在`Member Center`根据对应的证书生成`mobileprovision`描述文件共享到其他Mac；
3. 如需要推送服务，只需要分享者在`Member Center`配置就行，不需要发送推送证书给除了集成的推送平台之外的第三方的人。

### 打包

#### 非本地Team
1. release
2. 检查team，设置为none
3. 添加mobileprovsion
4. applicationloader
5. 注意：需要拨出手机，显示iOS Device，并在release的时候检查Code Signing的Provisioning Profile

#### 自动打包ipa
在shell中使用`xcodebuild+xcrun`可以打包出ipa，具体的[参考实例](https://github.com/webfrogs/xcode_shell)

### 企业证书
不受UUID的限制，但是个人和公司证书，需要提供UUID

#### 企业证书重签名
> 完整的重签名`shell`脚本，[在这里](files/anewsign.sh)
> 
> 1. 需要把里面的`<name>`和`new name`改为你需要重签名的`ipa`名字和重签名后的`ipa`名字；
> 2. 把重签名需要用的描述文件更名为`embedded.mobileprovision`；
> 3. 还需要下载[entitlements.plist](files/entitlements.plist)并修改其中的`pplication-identifier`、`keychain-access-groups`
> 4. 最后把`anewsign.sh`、`ipa`、`mobileprovision`、`entitlements.plist`放在一个目录下执行`anewsign.sh`就可以自动生成重签名的`ipa`。

1. 解压：`unzip <name>.ipa`
2. 删除：`rm -rf Payload/<name>.app/_CodeSignature`
3. 更换描述文件：`cp embedded.mobileprovision Payload/<name>.app/embedded.mobileprovision`
4. 重签名：`codesign -f -s "iPhone Distribution: TEST Electronics Co., Ltd. (6AP32F8XFF)" --entitlements entitlements.plist --resource-rules Payload/Remay-iOS.app/ResourceRules.plist Payload/<name>.app`
5. 压缩成ipa包：`zip -r <new name>.ipa Payload`

### 获取AppStore应用的IPA包
在iTunes中下载IPA，然后用Finder查看即可。
[如何获取AppStore应用的IPA包](http://www.jianshu.com/p/4ee125401340)

### 无账号密码时，使用Archive生成的.xcarchive包打包
1. 把.xcarchive更改为.ipa
2. 把更名后的.ipa包拖拽到iTunes中
3. 再从iTunes中拖拽到桌面就可以得到ipa包

### 制作越狱iOS设备IPA包
1. 将运行目标选为iOS Device;
2. xcode->product->Edit Scheme->Run xxx.app->Build Configuration设置为Release;
3. xcode->product->archive,此时project->Build Settings->code sign需要为有效的profile,才能成功;
4. Orgnizer->Archives->Distribute->Export as Xcode Archive,选择存储路径，保持此归档文件（假如此归档文件的名字是AAA）；
5. 将AAA文件显示包内容，Products->Application目录下为xxx.app;
6. 创建一个名字为Payload的目录，将xxx.app拷贝到此目录；
7. 在Payload同级目录下制作iTunesArtwork（安装在ios上的桌面图标）和iTunesMetadata.plist（一些appstore购买信息）.方法:找到一个从appstore下载下来的ipa包，将其后缀改成.zip，然后双击解压便可找到这两个文件,最后将这两个文件拷贝进Payload同级目录便可;
8. 将Payload、iTunesArtwork和iTunesMetadata.plist一并压缩，则会得到文件"归档.zip";
9. 将"归档.zip"改成xxx.ipa，xxx.ipa和上面的xxx.app，前缀需一样;
10.用91手机助手，将xxx.ipa包装进越狱ios设备中。
[制作越狱iOS设备IPA包](http://www.cnblogs.com/ouyangfang/archive/2013/02/21/2921146.html)

### 提交准备
1. 首先在`iTunes Connect`中创建app，访问[iTunes Connect](https://itunesconnect.apple.com)，使用你的`iOS`开发者账号登陆，点击右边的`Manage Your Apps`，点击左上角的`Add New App`，选择`iOS App`，然后完成表格。（注意，创建时填的APP就是你开发的项目，名称和`ID`一定要相同）。
2. 提交`1024x1024无圆角`图标，模拟器截图上传到`iTunes Connect`。
3. `Xcode`打包`ipa`，在`Organizer`上传`ipa`到`AppStore`，或者使用`ApplicationLoader`来上传ipa。
4. 二进制`ipa`文件上传完成后，需要等待8分钟左右时间，才会在`iTunnes Connect`的`构建版本`处可供选择，此时选中一个`ipa`后即可点击`提交以供审核`，进入下图所示，如没进行`加密`和`广告`，则都选择`否`，然后点击提交后等待苹果的审核。
![image](images/58190C81-B3F8-46E7-9320-AED561AF9268.png)
5. 新应用上架审核时间大概7天，应用版本更新审核时间大概3天。


### AppStore发布审核
1. 遇到元数据被拒绝，要不要提交以供审核？ 
> 只要回复`Apple`发过来的邮件中的问题就行，不需要点击提交以供审核，大概需要等待2天。我大概等待2天不到。期间`iTunes Connect`中一直显示着元数据被拒的小红点，不要急，等待几天就行了。


### 问题
1. 钥匙串中显示此证书的签发者无效？
> a. 按照你那个链接下载，https://developer.apple.com/certificationauthority/AppleWWDRCA.cer，并安装。
> b. 在keychains里选择login,然后点选Certificates，在这个界面，选择工具栏的View -> Show Expired Certificates，这时候你会发现一个过期的“WWDR Certificate”（Apple Worldwide Developer Relations Certification Authority），删除它。
> c. 在System的那一栏也有这个过期的“WWDR Certificate”，一并删除它。
> 4. 不出意外你的证书那里从 “This certificate has an invalid issuer”（此证书的签发者无效）变成了 “This certificate is valid”了。

2. Your build settings specify a provisioning profile with the UUID “”, however, no such provisioning profile was found
> 可以Clean后重试，或者加上关闭Xcode。

### 参考
* [iOS 开发流程笔记](https://github.com/leecade/ios-dev-flow)
* [IOS应用程序发布到苹果APP STORE完整流程使用教程](http://www.asotops.com/article-11-1.html)
* [此证书的签发者无效解决办法](http://stackoverflow.com/questions/32821189/xcode-7-error-missing-ios-distribution-signing-identity-for)