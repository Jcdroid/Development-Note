iOS证书、真机调试、打包笔记

###证书
iOS分为开发和发布证书

###真机调试
添加iPhone的uuid到`Member Center`

###多机共享账号
1. 根据证书创建p12交换文件（可以不设置密码）共享到其他Mac
2. 在`Member Center`根据对应的证书生成`mobileprovision`描述文件共享到其他Mac

###打包

####非本地Team
1. release
2. 检查team，设置为none
3. 添加mobileprovsion
4. applicationloader
5. 注意：需要拨出手机，显示iOS Device，并在release的时候检查Code Signing的Provisioning Profile

####自动打包ipa
在shell中使用`xcodebuild+xcrun`可以打包出ipa，具体的[参考实例](https://github.com/webfrogs/xcode_shell)
