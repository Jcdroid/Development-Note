# Java-集合之HashMap

HashMap在jdk1.8之前采用的`数组+单向链表`结构，使用**链地址法**解决hash冲突，jdk1.8之后当链表长度大于8时会自动转成**红黑树**，查找复杂度从O(n)变成O(logn)。HashMap是通过key计算hash得到index，计算hash的方法为**扰动函数**：hash(key) = (h = key.hashCode() ^ (h >>> 16))，它能让hash值尽量减少冲突均匀分布，避免计算index时出现不均匀的问题，计算index的方法：index = hash(key) & (数组长度 length- 1)，再把数据放置到对应index下的链表结构下（当通过key计算hash值时，如果出现同样的hash值，则会把数据放置在单向链表中），jdk1.8之前数据放置到链表是通过**头插**，**jdk1.8之后采用尾插**，使用头插在hashmap扩容时会改变链表的顺序，头插方式多线程操作时会导致链表成环从而查找时可能引起死循环，而使用尾插在扩容是链表还会保持原来的顺序。

**HashMap的键值都可以为null，当key为null时数据将存放在数组的第一个链表下**，HashMap最多只允许一条记录的键为null

### 问题
- 你看过HashMap源码嘛，知道原理嘛?
- 为什么用数组+链表？
- HashMap中插入节点的流程？
- HashMap如何解决hash碰撞的问题？
- hash冲突你还知道哪些解决办法？
- hash表如何优化？
- 我用LinkedList代替数组结构可以么?
- 既然是可以的,为什么HashMap不用LinkedList,而选用数组?
- HashMap扩容机制？
- HashMap线程安全问题？
- HashMap和HashTable区别？
- ConcurrentHashMap分段加锁的原理？
- HashMap和SparseArray的区别？
- ArrayList与LinkedList性能对比？
- 优化频繁删除添加节点的ArrayList效率？

### 其他

- 数组和链表的区别？

  数组内数据内存**连续**，链表内数据内存**不连续**（通过记录下一个数据的索引形成一条链）。数组查找复杂度O(1)，单链表查找复杂度O(n)，插入时数组需要移动对应索引后面的所有元素内存，而单链表只需要修改下一个元素的索引效率更高，删除操作同理
* 怎么处理HashMap在非线程安全的场景？

  使用Hashtable或ConcurrentHashMap，大部分情况都是使用ConcurrentHashMap。Hashtable直接在方法上加锁，并发度很低，最多同时允许一个线程访问，而ConcurrentHashMap就好很多了

* HashMap什么时候会触发扩容？

  当HashMap中元素总个数 > threshold = HashMap数组总容量 * 负载因子（loadFactor）时，会触发扩容
  
* 红黑树是什么？

  

```
1. 扩容是一个特别耗性能的操作，所以当程序员在使用HashMap的时候，估算map的大小，初始化的时候给一个大致的数值，避免map进行频繁的扩容。
2. 负载因子是可以修改的，也可以大于1，但是建议不要轻易修改，除非情况非常特殊。
3. HashMap是线程不安全的，不要在并发的环境中同时操作HashMap，建议使用ConcurrentHashMap。
4. JDK1.8引入红黑树大程度优化了HashMap的性能。
```

### ArrayList原理



### 参考
* [《我们一起进大厂》系列-HashMap](https://juejin.cn/post/6844904017269637128)
* [HashMap面试必问的6个点，你知道几个？](https://juejin.cn/post/6844903921190699022)
* [Java 8系列之重新认识HashMap](https://tech.meituan.com/2016/06/24/java-hashmap.html)
* [HashMap? ConcurrentHashMap? 相信看完这篇没人能难住你！](https://crossoverjie.top/2018/07/23/java-senior/ConcurrentHashMap/)
* [教你初步了解红黑树](https://blog.csdn.net/v_july_v/article/details/6105630)
* [3分钟让你明白 HashMap之红黑树树化过程](https://juejin.cn/post/6844903960889786375)