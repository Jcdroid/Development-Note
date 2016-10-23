#iOS导入ReactiveCocoa

1. 单独使用github "ReactiveCocoa/ReactiveCocoa”将会出现Building scheme "Result-Mac" in Result.xcworkspace BUILD FAIL的错误，解决办法见：https://github.com/ReactiveCocoa/ReactiveCocoa/issues/1951
2. 使用ReactiveCocoa3.0会出现错误dyld: Library not loaded: @rpath/libswiftCore.dylib，参考http://stackoverflow.com/questions/26024100/dyld-library-not-loaded-rpath-libswiftcore-dylib
3. Box也需要手动添加，貌似ReactiveCocoa 3.0并不会创建Box Framework

```
github "robrix/Box" == 1.2.1
github "antitypical/Result" == 0.5
github "ReactiveCocoa/ReactiveCocoa" == 3.0
```