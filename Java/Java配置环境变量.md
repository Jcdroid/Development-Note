# Java配置环境变量

### Windows

> 以下路径在**系统变量**中配置

* `ANDROID_HOME`：`<绝对路径>\Sdk`
* `JAVA_HOME`：`<绝对路径>\Android Studio\jre`
* `classpath`：`%JAVA_HOME%\lib;%JAVA_HOME%\lib\dt.jar;%JAVA_HOME%\lib\tools.jar`
* `path`：`%JAVA_HOME%\bin;%JAVA_HOME%\jre\bin;D:\Program Files\Android\Android Studio\gradle\gradle-4.6\bin;D:\Program Files\Git\bin;D:\Sdk\platform-tools;D:\Sdk\tools;C:\Windows\System32;C:\Windows\SysWOW64;D:\Program Files\nodejs;D:\Program Files\Python27;D:\Program Files\Python27\Scripts;D:\Program Files\Python37-32;D:\Program Files\Python37-32\Scripts;D:\Program Files\TortoiseSVN\bin;D:\flutter\bin;`（包含gradle、git、adb和ping的配置）