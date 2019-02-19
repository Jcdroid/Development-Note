# Flutter基础学习

### 路由管理

### 包管理

### 资源管理

### Widgets基础

#### Widget简介

##### 基础Widgets
* `Text`：该 widget 可让创建一个带格式的文本。
* `Row`、 `Column`： 这些具有弹性空间的布局类Widget可让您在水平（Row）和垂直（Column）方向上创建灵活的布局。其设计是基于web开发中的Flexbox布局模型。
* `Stack`： 取代线性布局 (译者语：和Android中的FrameLayout相似)，`Stack`允许子 widget 堆叠， 你可以使用`Positioned`来定位他们相对于Stack的上下左右四条边的位置。Stacks是基于Web开发中的绝对定位（absolute positioning )布局模型设计的。
* `Container`：`Container`可让您创建矩形视觉元素。`container`可以装饰一个`BoxDecoration`, 如`background`、一个边框、或者一个阴影。`Container`也可以具有边距（margins）、填充(padding)和应用于其大小的约束(constraints)。另外，`Container`可以使用矩阵在三维空间中对其进行变换。

##### 生命周期
* `initState`：当Widget第一次插入到Widget树时会被调用，对于每一个State对象，Flutter framework只会调用一次该回调，所以，通常在该回调中做一些一次性的操作，如状态初始化、订阅子树的事件通知等。不能在该回调中调用BuildContext.inheritFromWidgetOfExactType（该方法用于在Widget树上获取离当前widget最近的一个父级InheritFromWidget，关于InheritedWidget我们将在后面章节介绍），原因是在初始化完成后，Widget树中的InheritFromWidget也可能会发生变化，所以正确的做法应该在在build（）方法或didChangeDependencies()中调用它。
* `didChangeDependencies`：当State对象的依赖发生变化时会被调用；例如：在之前build() 中包含了一个InheritedWidget，然后在之后的build() 中InheritedWidget发生了变化，那么此时InheritedWidget的子widget的didChangeDependencies()回调都会被调用。典型的场景是当系统语言Locale或应用主题改变时，Flutter framework会通知widget调用此回调。
* `build`：主要是用于构建Widget子树的，会在这些场景被调用：在调用initState()之后；在调用didUpdateWidget()之后；在调用setState()之后；在调用didChangeDependencies()之后；在State对象从树中一个位置移除后（会调用deactivate）又重新插入到树的其它位置之后。
* `reassemble`：此回调是专门为了开发调试而提供的，在热重载(hot reload)时会被调用，此回调在Release模式下永远不会被调用。
* `didUpdateWidget`：在widget重新构建时，Flutter framework会调用Widget.canUpdate来检测Widget树中同一位置的新旧节点，然后决定是否需要更新，如果Widget.canUpdate返回true则会调用此回调。正如之前所述，Widget.canUpdate会在新旧widget的key和runtimeType同时相等时会返回true，也就是说在在新旧widget的key和runtimeType同时相等时didUpdateWidget()就会被调用。
* `deactivate`：当State对象从树中被移除时，会调用此回调。在一些场景下，Flutter framework会将State对象重新插到树中，如包含此State对象的子树在树的一个位置移动到另一个位置时（可以通过GlobalKey来实现）。如果移除后没有重新插入到树中则紧接着会调用dispose()方法。
* `dispose`：当State对象从树中被永久移除时调用；通常在此回调中释放资源。

##### 文字、字体样式

###### Text
Text用于显示简单样式文本，它包含一些控制文本显示样式的一些属性，如：style、 textAlign、 overflow、maxLines、textScaleFactor

###### TextStyle

### 布局类Widgets

### 容器类Widgets

### 可滚动Widgets

### 功能型Widgets

### 事件处理与通知