# Java基础知识精要

#### `Math.round`、`Math.ceil`和`Math.floor`的区别
	* Math.round：四舍五入
	* Math.ceil：天花板数，向上取整。*如果参数小于0且大于-1.0，结果为-0*
	* Math.floor：地板数，向下取整

	如果参数是NaN、无穷、正0，负0，那么结果与参数相同，如参数是-0.0，那么结果就是-0.0

#### 表达式的数据类型
	表达式的数据类型自动提升, 关于类型的自动提升，注意下面的规则。
	
	* 所有的byte,short,char型的值将被提升为int型；
	* 如果有一个操作数是long型，计算结果是long型；
	* 如果有一个操作数是float型，计算结果是float型；
	* 如果有一个操作数是double型，计算结果是double型；
	* 没有final修饰的变量相加后会被自动提升为int型，与目标类型byte不相容，需要提升为int型。final的变量会被JVM优化。

#### 内存区域
	* 用new创建的对象在堆区
	* 函数中的临时变量在栈去
	* java中的字符串在字符串常量区

#### final
final修饰的成员变量为基本数据类型是，在赋值之后无法改变。当final修饰的成员变量为引用数据类型时，在赋值后其指向地址无法改变，但是对象内容还是可以改变的。
final修饰的成员变量在赋值时可以有三种方式。1、在声明时直接赋值；2、在构造器中赋值；3、在初始代码块中进行赋值。


#### 可以处理Unicode字符的IO流
字符流是字节流根据字节流所要求的编码集解析获得的
可以理解为`字符流=字节流+编码集`

	字节流：
	InputStream   
	|-- FileInputStream (基本文件流）   
	|-- BufferedInputStream   
	|-- DataInputStream   
	|-- ObjectInputStream
	字符流
	Reader 
	|-- InputStreamReader (byte->char 桥梁） 
	|-- BufferedReader (常用） 
	Writer 
	|-- OutputStreamWriter (char->byte 桥梁） 
	|-- BufferedWriter 
	|-- PrintWriter （常用）
字节流继承于InputStream OutputStream，字符流继承于InputStreamReader OutputStreamWriter

#### 构造方法调用
子类构造方法在调用时必须先调用父类的，父类没有无参构造，必须在子类中显式调用父类有参构造

#### 字符串常量池
JVM为了减少字符串对象的重复创建，其维护了一个特殊的内存，这段内存被成为字符串常量池或者字符串字面量池。

#### 基本数据类型所占字节数

	byte 1个字节
	short 2个字节
	char 2个字节
	int 4个字节
	long 8个字节
	float 4个字节
	double 8个字节

#### Java非静态属性和静态方法的多态性
静态属性和静态方法只是可以继承没有表现出多态性。因为静态方法和静态属性没有采用动态绑定。具体表现就是，将子类实例向上转型则会调用到基类中的静态方法和属性，不转型就调用子类自身的静态方法和属性。编译器不推荐通过实例去调用静态方法和属性，因为这种调用方式容易造成混淆。
         
实际上，在Java的规范中，Java对于类的方法和属性采用了两种完全不同的处理机制：**对于方法，使用重载机制实现了多态性；对于属性，使用的是同名属性隐藏机制**。所谓的同名属性隐藏机制是指：在具有父子关系的两个类中，子类中相同名字的属性会使得从父类中继承过来的同名属性变得不可见，不管类型是否一致，名称一致的两个属性就是同名属性。在子类中，无法简单地通过属性名称来获取父类中的属性，而是必须通过父类名称加属性名称(super.变量名)的方法才可以访问父类中的该属性。一般而言，为了代码容易阅读，极其不建议在父类和子类中使用同名属性。

#### JVM内存
JVM 内存可简单分为三个区：

1、堆区（heap）：用于存放所有对象，是线程共享的（注：数组也属于对象）

2、栈区（stack）：用于存放基本数据类型的数据和对象的引用，是线程私有的（分为：虚拟机栈和本地方法栈）

3、方法区（method）：用于存放类信息、常量、静态变量、编译后的字节码等，是线程共享的（也被称为非堆，即 None-Heap）

Java 的垃圾回收器（GC）主要针对堆区

#### 移位运算符
java中有三种移位运算符

* `<<`：左移运算符，num << 1,相当于num乘以2
* `>>`：右移运算符，num >> 1,相当于num除以2
* `>>>`：无符号右移，忽略符号位，空位都以0补齐

#### 关键字、保留关键字、显式常量
* 48个关键字：abstract、assert、boolean、break、byte、case、catch、char、class、continue、default、do、double、else、enum、extends、final、finally、float、for、if、implements、import、int、interface、instanceof、long、native、new、package、private、protected、public、return、short、static、strictfp、super、switch、synchronized、this、throw、throws、transient、try、void、volatile、while。
* 2个保留关键字（现在没用以后可能用到作为关键字）：goto、const。
* 3个特殊显式常量：true、false、null。



