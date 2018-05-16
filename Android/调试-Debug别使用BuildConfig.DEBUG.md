
# Debug别使用BuildConfig.DEBUG

### 提出问题
平时判断应用是否处在debug模式下，一般使用`BuildConfig.DEBUG`来判断的，可是这里面其实有选择

```
public final class BuildConfig {
  public static final boolean DEBUG = false;
}
```
BuildConfig中的DEBUG值是由`app`项目中`build.gradle`的下面代码中的`debuggable`控制的

```
buildTypes {
        debug {
            debuggable true
            minifyEnabled false
            signingConfig signingConfigs.debug
        }
        release {
            debuggable false
            minifyEnabled false
            signingConfig signingConfigs.release
        }
    }
```
所以平时在使用`BuildConfig`的`DEBUG`时，要注意这里的DEBUG是`debuggable`的意思，一旦`buildTypes`（是否能进行debug，而不是是否是debug状态）中的`release`的`debuggable`改为`true`时，BuildConfig.DEBUG的值就是`true`了，实际上这里的值是根据`build.gradle`文件生成的。

### 解决方案
那既然`BuildConfig.java`文件中的常量是根据app的`build.gradle`生成的，那我们是不是就可以想到在`build.gradle`中给`BuildConfig.java`文件添加新的常量。

下面代码的`buildConfigField`就是用来给`BuildConfig.java`文件添加常量的，下面我添加了一个`IS_DEBUG`的`boolean`类型常量，点击`sync now`就可以在`BuildConfig`中看到`IS_DEBUG`常量了。

```
buildTypes {
        debug {
            debuggable true
            minifyEnabled false
            signingConfig signingConfigs.debug
            buildConfigField("boolean", "IS_DEBUG", "true")
        }
        release {
            debuggable false
            minifyEnabled false
            signingConfig signingConfigs.release
            buildConfigField("boolean", "IS_DEBUG", "false")
```