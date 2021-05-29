# Java-泛型

### 型变

Java 中的泛型是**不型变的**，这意味着 `List<String>` 并**不是** `List<Object>` 的子类型。

##### 通配符类型参数

- ? extends E 

  带 **extends** 限定（**上界**）的通配符类型使得类型是**协变的（covariant）**

- ? super E 

  带 **super** 限定（**下界**）的通配符类型使得类型是**逆变性（contravariance）**

### 泛型擦除



### 协变（covariant）



#### [Kotlin泛型](https://www.kotlincn.net/docs/reference/generics.html)

reified关键字

Java 类型系统中最棘手的部分之一是通配符类型（参见 [Java Generics FAQ](http://www.angelikalanger.com/GenericsFAQ/JavaGenericsFAQ.html)）。 而 Kotlin 中没有。 相反，它有两个其他的东西：**声明处型变**（declaration-site variance）与**类型投影**（type projections）。

##### 泛型约束

- 上界和下界 int、out关键字
