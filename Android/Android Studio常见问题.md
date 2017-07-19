# Android Studio常见问题

1. Android Studio文档显示fetching Documentation...
> 在`sdk manager`中下载好`document`，然后`cd /Users/mzy/Library/Preferences`，再进入到对应的Android Studio版本文件夹中的`options`，打开`jdk.table.xml`，修改`javadocPath`节点的`url`（`http://developer.android.com/reference/`修改为`file://$APPLICATION_HOME_DIR$/sdk/docs/reference/`），重启AS即可。


### 参考
* [Mac上解决Android Studio文档显示fetching Documentation...](http://www.5ixuexiwang.com/html/biancheng/yidongkaifa/android/2016/1207/2152.html)