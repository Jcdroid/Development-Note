# Android 关于jniLibs

> 上周末参加AndroidBus开发者论坛[上海站]，《小红书Android演进之路》（主讲:桑明明）提到.so文件，保留jniLibs下armeabi-v7a就可以了，这样就大大降低app的大小。这话是对的，因为我开发中也出现过这样的情况，jniLibs下所有的文件丢失了，app就小了两三兆（就一个友盟社会化分享）。but有bug（有的手机会崩溃）。保留一个试了，没有崩溃，然后再网上各种恶补.so文件的知识，cpu架构。

**微信apk中只有一个`armeabi-v7a`目录**

### jniLibs中的arm、mips、x86等CPU架构

### 参考
* [Android jniLibs下目录详解（.so文件）](http://www.jianshu.com/p/b758e36ae9b5)