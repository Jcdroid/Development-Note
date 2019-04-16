# Android Studio添加Live Templates

路径：`Setting - Editor - Live Templates`，类似iOS的`code snippet`。

### 常用的snippet

* **`getInstance`**。添加`Abbreviation`为`getInstance`，`Description`为`create a single instance`，`Template text`为：

    ```java
    private static $class$ sInstance;
    
    private $class$() {
        // no instance
    }
    
    public static $class$ getInstance() {
        if (sInstance == null) {
            synchronized ($class$.class) {
                if (sInstance == null) {
                    sInstance = new $class$();
                }
            }
        }
        return sInstance;
    }
    ```