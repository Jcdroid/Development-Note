# Vuex的使用
>  Vuex 的 mutations，从结果上看，mutations 类似于事件，用于提交 Vuex 中的状态 state action 和 mutations 也很类似，主要的区别在于，action 可以包含异步操作，而且可以通过 action 来提交 mutations。另外还有一个重要的区别：mutations 有一个固有参数 state，接收的是 Vuex 中的 state 对象 action 也有一个固有参数 context，但是 context 是 state 的父级，包含  state、getters、commit、dispatch

### 提供的辅助函数
* mapState
* mapGetters
* mapActions
* mapMutations

### 参考
* [Vuex 2.0 源码分析（上）](http://www.imooc.com/article/14739)
* [Vuex 2.0 源码分析（中）](http://www.imooc.com/article/14740)
* [Vuex 2.0 源码分析（下）](http://www.imooc.com/article/14741)