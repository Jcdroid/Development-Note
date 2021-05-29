# Android-View之RecyclerView原理

复用机制讲解？

缓存机制讲解？

### 复用与缓存

四级缓存：mActiveCached、mCache、ExtensionCache

### 与ListView缓存的区别

ListView的缓存机制相对比较好理解，它只有两级缓存，一级缓存**Active View**是负责屏幕内的ItemView快速复用，而**Scrap View**是缓存屏幕外的数据，当该数据从屏幕外滑动到屏幕内的时候需要走一遍getView()方法