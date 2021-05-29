# AndroidX迁移

> 迁移到androidx后并非需要对所有依赖库进行升级到对应androidx版本，原因是当我们在gradle.properties文件中添加`android.enableJetifier=true`属性开启Jetifier后执行打包时会自动将依赖的support库修改为新的androidx库，对于第三方库会对aar中class文件、xml文件以及proguard文件和pom依赖进行处理。

![img](https://user-gold-cdn.xitu.io/2020/4/26/171b440331ea0b31?imageView2/0/w/1280/h/960/format/webp/ignore-error/1)

### 常见问题

1. failed to transform file using Jetifier. Reason: null

   > 在`gradle.properties`中添加`android.jetifier.blacklist=<name>.jar`

### 参考

* [是时候迁移至 AndroidX 了！](https://juejin.im/post/5ea4e7fae51d4546d83b2af6)
* [58同城迁移到AndroidX实践及Jetifier源码分析](https://www.jianshu.com/p/3bb7a48bfa7e)
* [您有一份AndroidX升级指南未领取](https://juejin.im/post/5bf203b7f265da6136220f89)
* [Android:你好,androidX！再见,android.support](https://www.jianshu.com/p/41de8689615d)

