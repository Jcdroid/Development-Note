# Python开发规范

### 命名规范
* **包名** 全部使用一个单词的小写，如果实在需要两个单词，可以用`-`连接，如`data-fetching`。
* **类名** python类名都使用小写，断词可以用`_`，如`django_config.py`。类名通常是名词或名词短语。
* **方法名** 方法名都以`lowerCamelCase`风格编写。方法名通常是动词或动词短语。
* **常量名** 常量名命名模式为 `CONSTANT_CASE`，全部字母大写，用下划线分隔单词。
* **参数名** 参数名以`lowerCamelCase`风格编写，参数应该避免用单个字符命名。
* **局部变量名** 局部变量名以`lowerCamelCase`风格编写，比起其它类型的名称，局部变量名可以有更为宽松的缩写。


### 注释规范
* 类注释

	```
	
	```
* 方法注释
		
	```
	
	```
* 块注释

	```
	#
	# code...
	#
	```
* **其他一些注释** 如类过时、方法过时的标记，TODO、FIXME、XXX

	```
	// @deprecated
	// TODO
	// FIXME
	```
	
### 其他

### 参考

* [Google Python 编码规范](https://mp.weixin.qq.com/s/4urZJ1OHZfDCygcMcEiA4A)