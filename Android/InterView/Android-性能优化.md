#  Android-性能优化

### 绘制优化

Android系统显示原理：绘制原理、刷新机制、卡顿的根本原因

性能分析工具：TraceView、Systrace UI性能分析

卡顿优化：列表滑动卡顿问题

1. ListView使用ViewHolder
2. 列表滚动时，禁止次要内容的加载和显示，等滑动停止再加载显示对应数据（如文本、图片）
3. 耗时操作使用线程池

布局优化：布局优化工具Hierarchy Viewer、布局复杂度避免过度绘制（层次、大小）、显示优化

1. 使用merge、include降低单个xml大小和重用

2. 使用tools：如showIn、RecyclerView的listitem和itemCount

3. style抽出重用

4. 使用ConstraintLayout降低布局层次，layout层级过多会导致过多的measure、layout、draw。ConstraintLayout为什么效果好？为什么多了层级，性能可能会差很多？

启动优化：App的启动速度如何优化？字节码插桩优化启动速度？懒加载预加载启动优化？使用ContentProvider优化（在application attachBaseContext之后，oncreate之前cp的oncreate会被调用）？使用Jetpack App Startup？[Android App 启动优化全记录](https://androidperformance.com/2019/11/18/Android-App-Lunch-Optimize)

提升动画性能

卡顿监控方法：监控原理

### 内存优化

Android内存管理机制：Java内存分配、内存回收机制、GC类型

分析工具：Memory Monitor、Head Viewer、Allocation Tracker、Leakcanary

避免内存泄漏：根除Activity的内存泄漏？

优化内存空间：图片内存优化Bitmap

图片加载模块设计与实现：异步加载、三级缓存、Glide、LRUCache

### 存储优化

存储方式：sp、file、sqlite、content provider

序列化：Serializable、Parcelable、Gson、Proto Buffers

sp优化

数据库优化

### 稳定性优化

> 怎么解决应用崩溃的问题？

代码质量：代码审查、代码静态扫描工具、lint

Crash监控：Java Crash监控、Native Crash监控、Crash上报机制

ANR：ANR分析、ANR监控，ANR怎么避免？ANR定位与监控？

保活：应用进程优先级、SyncAdapter提高进程优先级

### 耗电优化

耗电检测工具：Battery Historian

三大模块省电优化：显示、网络、CPU

Doze模式

### 应用体积优化

代码混淆

资源优化

### 搭建线上性能监控日志系统

腾讯的App性能监控方案是如何做的？



