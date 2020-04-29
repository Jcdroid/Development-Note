# UI-事件传递机制

### 事件流程
事件先到`DecorView->Activity->PhoneWindow->DecorView`

### 流程图
1. View不处理事件流程图![View不处理事件流程图](http://www.trinea.cn/wp-content/uploads/2016/01/touch1.jpg?dc9529&x24892)
2. View处理事件流程图![View不处理事件流程图](http://www.trinea.cn/wp-content/uploads/2016/01/touch2.jpg?dc9529&x24892)

### 参考
* [Android Touch事件传递机制](http://www.trinea.cn/android/touch-event-delivery-mechanism/)
* [事件到底是先到DecorView还是先到Window的？](https://wanandroid.com/wenda/show/12119)