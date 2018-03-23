# iOS适配相关

###  Points, Rendered Pixels, Physical Pixels, Physical Device
* Points: 是iOS开发中引入的抽象单位，称作点。开发过程中所有基于坐标系的绘制都是以 point 作为单位，在iPhone 2G,3G,3GS的年代，point 和屏幕上的像素是完全一一对应的，即 320 480 (points), 也是 320 480 (pixels)
* Rendered Pixels: 渲染像素， 以 point 为单位的绘制最终都会渲染成 pixels，这个过程被称为光栅化。基于 point 的坐标系乘以比例因子可以得到基于像素的坐标系，高比例因子会使更多的细节展示，目前的比例因子会是 1x，2x，3x
* Physical Pixels: 物理像素，就是设备屏幕实际的像素
* Physical Device: 设备屏幕的物理长度，使用英寸作为单位。比如iPhone 4屏幕是3.5英寸，iPhone 5 是4英寸，iphone 6是4.7英寸，这里的数字是指手机屏幕对角线的物理长度。实际上会是Physical Pixels的像素值(而不是Rendered Pixels的像素值)会渲染到该屏幕上, 屏幕会有 PPI(pixels-per-inch) 的特性，PPI 的值告诉你每英寸会有多少像素渲染。

### iOS 10
* 关于权限说明

> 出现下面的错误时，是由于没有进行权限说明
> `This app has crashed because it attempted to access privacy-sensitive data without a usage description.  The app's Info.plist must contain an NSPhotoLibraryUsageDescription key with a string value explaining to the user how the app uses this data.`
> 
> NSPhotoLibraryUsageDescription、NSCameraUsageDescription、NSContactsUsageDescription、NSMicrophoneUsageDescription


### 参考
* [iOS屏幕适配和设计流程分析](http://www.hudongdong.com/ios/487.html)
* [iOS日常学习 - iOS10上关于NSPhotoLibraryUsageDescription等问题](http://blog.csdn.net/wang631106979/article/details/52578001)