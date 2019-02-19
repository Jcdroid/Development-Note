# Android Jenkins自动构建

### 创建local.properties（并不需要创建这个文件）

	localProperties="${WORKSPACE}\local.properties"
	if [  !  -f $localProperties ]; then
	    touch $localProperties
	    echo "sdk.dir=D\:\\Sdk" > $localProperties
	fi

### 准备

* jdk
* android sdk
* gradle
* tomcat

### 常见错误
* android error: xxx file not found.
    
    勾选`Force GRADLE_USER_HOME to use workspace`，详见[这里](https://www.jianshu.com/p/7c2f34b5f133)

* Could not download kotlin-stdlib.jar

    可能是网络不好导致不能下载成功，重试几次即可

### 参考
* [实践Jenkins+Gradle实现Android自动化构建，并上传至fir.im](https://blog.csdn.net/cunxinaimei/article/details/52540197)
* [Jenkins实现Android自动化打包](https://blog.csdn.net/zhaoyanjun6/article/details/77102359)


