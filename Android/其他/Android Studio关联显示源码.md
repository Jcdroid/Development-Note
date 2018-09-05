# Android Studio关联显示源码

在`jdk.table.xml`中修改`<soucePath>`标签为下面的参考格式（其中有各个版本的源码路径配置）

```xml
    <sourcePath>
      <root type="composite">
        <root url="file://D:/Sdk/sources/android-28" type="simple" />
      </root>
    </sourcePath>
```
配置好之后save，再重启Android Studio