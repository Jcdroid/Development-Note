# Java常用Tips

### 判断对象相等

- 使用`Objects.equals(a, b)`
- 使用`Objects.deepEquals(a, b)`

### 数组和列表的引用传递

* 数组：重新构造数组。String[] arr = new String[]{oldArr[0], oldArr[1]}
* 列表：使用GsonUtils.deepCopy
* 数组转列表：Arrays.asList(arr)，这种生成的List是不能执行remove和add操作的，需要使用new ArrayList<>(Arrays.asList(arr))来重新构造新的List