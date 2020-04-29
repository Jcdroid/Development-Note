# Java集合类


1. List
	* ArrayList
	* LinkedList
	* Vector
   
2. Set
	* HashSet
	* LinkedHashSet
	* TreeSet

3. Map
	* Hashtable
	* HashMap
	* LinkedHashMap
	* TreeMap
	* ConcurrentHashMap

![](../images/集合.png)

![](../images/集合1.png)

### ArrayList和LinkedList的区别
ArrayList是实现了基于动态数组的结构，而LinkedList则是基于实现链表的数据结构。多数情况下如果查询操作较多ArrayList的效果更好，如果删除,插入较多LinkedList的效果较好。



### List

* **数组转列表**：Arrays.asList(arr)，这种生成的List是不能执行remove和add操作的，需要使用new ArrayList<>(Arrays.asList(arr))来重新构造新的List
* **数组迭代时执行remove或add**：使用不当可能引发ConcurrentModificationException

### 参考

* [ArrayList和LinkedList的区别](https://www.jianshu.com/p/e591690afacb)