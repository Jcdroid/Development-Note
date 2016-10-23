# Android单元测试

* 常见错误
  
* 参考
  
  ``` 
  一直以来都没有好好整理过单元测试相关的内容，
  ```
  
  ### Robolectric
  
  ​



### 常见错误

1. **working directory 设置为$MODULE_DIR$**

如果在测试过程遇见如下问题：

``` 
java.io.FileNotFoundException: build\intermediates\bundles\debug\AndroidManifest.xml (系统找不到指定的路径。) 
java.lang.RuntimeException: build\intermediates\bundles\debug\AndroidManifest.xml not found or not a file; it should point to your project's AndroidManifest.xml
```

[解决的方式](http://robolectric.org/getting-started/#Note for Linux and Mac Users)就是设置working directory的值，设置方法如下图所示:

Edit Configurations -> Defaults -> JUnit，working directory改为`$MODULE_DIR$`

![](http://i.stack.imgur.com/WN0EQ.png)

![](http://upload-images.jianshu.io/upload_images/638283-1b52f9dad9dfeb3d.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

或者使用（推荐使用`$MODULE_DIR$`）：

Go the your JUnit configuration, Run > Edit Configurations. Notice the 'Working Directory' textbox. Append `/app` (for OSX and Linux) or `\app` (Windows), to the path written in the textbox. Try running again and it should work. ([Robolectric says “AndroidManifest.xml not found”](http://stackoverflow.com/questions/30913522/robolectric-says-androidmanifest-xml-not-found))

​

### 参考

1. [Android单元测试框架Robolectric3.0介绍](http://www.jianshu.com/p/9d988a2f8ff7)
2. [Android单元测试研究与实践](http://tech.meituan.com/Android_unit_test.html)