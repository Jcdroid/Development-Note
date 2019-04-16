# Android常见错误解决

### 编译错误
1. AAPT: libpng error: Not a PNG file
	> 
	> ```
	> android {
	> 	aaptOptions {
	>   	cruncherEnabled = false
	> 	}
	> }
	> ```
	> 具体见[这里](http://stackoverflow.com/questions/23366222/libpng-error-not-a-png-file-error-showing-in-android-studio)

### 运行错误
###### 添加so文件时常见错误

1. java.lang.UnsatisfiedLinkError: Couldn't load entryexpro from loader dalvik.system.PathClassLoader
	> 在main下面创建jniLibs目录然后把so文件放在jniLibs下；
	> 或把so文件放在libs下，然后在app的build.gradle下添加下面的代码
	> ```
	> 	android {
	> 		main {
	> 			jniLibs.srcDirs = ['libs']
	> 		}
	> 	}	
	> ```
	> 具体见[这里](http://blog.csdn.net/yy1300326388/article/details/46291417)

2. java.lang.UnsatisfiedLinkError: dlopen failed: "/data/app-lib/com.mzy.remay_test-1/libentryexpro.so" is too small to be an ELF executable

  > 这个问题是由于so文件大小不正确引起的，在文件管理中查看.so文件所占的大小，如果为0字节，说明copy的时候不正确，具体请看[这里](http://bugly.qq.com/bbs/forum.php?mod=viewthread&tid=1000)

3. 出现一些比较奇怪的异常时

  > 清除缓存并重启`Invalidate Caches / Restart`

4. 出现`AAPT2 error: check logs for details`错误

  > 可能是由于其他的错误导致AAPT2 error的，可以优先解决报错的其他错误

5. 运行出现`Manifest merger failed with multiple errors, see logs`，但不显示详细的错误位置

  > 运行`gradlew processDebugManifest --stacktrace`

### 参考
* [安卓开发中遇到的奇奇怪怪的问题（二）](https://blog.csdn.net/qq_17766199/article/details/79941199)