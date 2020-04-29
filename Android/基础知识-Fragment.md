# 基础知识-四大组件之Fragment

### 常见问题
* Fragment重叠
	
	> 在onSaveInstanceState方法中保存Fragment实例，然后在onCreate中获取保存的Fragment实例，相应的进行add或者replace操作即可。

### 参考
* [fragment重叠的完美解决方案](https://blog.csdn.net/yuzhiqiang_1993/article/details/75014591)
* [FragmentTabHost页面重叠](https://blog.csdn.net/u011803341/article/details/68064339)