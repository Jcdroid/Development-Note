# Android网络框架及异常处理策略

### 请求数据

### 响应数据
常见服务端响应数据格式如下

	{
  		"code": 0,
  		"msg": "正常",
  		"data": {
    		"id": 1,
    		"account": "121313",
    		"accountName": "alipay",
    		"income": "600.000000"
  		}
	}
其中`code`为我们自定义的操作状态码；`msg`为服务器端返回的操作信息（无论操作成功与否，客户端都应该根据业务给出准确的提示，客户端则根据实际情况选择展示与否。）。`data`则是请求返回的具体内容，通常`data`根据请求接口的不同最终会被解析成不同的实体类。

### 缓存
包含数据库、文件、SP等缓存技术

### 异常处理

### 参考
* [Retrofit响应数据及异常处理策略](http://blog.csdn.net/dd864140130/article/details/52689010)
* [如何使用Retrofit请求非Restful API](http://www.jianshu.com/p/2263242fa02d)