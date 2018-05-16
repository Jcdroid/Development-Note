# Axios的使用
> Axios读音`爱可信`

### 基本使用
* `GET`请求：`axios.get(url, {config})`
	
	```
	axios.get('/user', {
    	params: {
      		ID: 12345
    	}
  	})
  	.then(function (response) {
    	console.log(response);
  	})
  	.catch(function (error) {
    	console.log(error);
  	});
	```

* `POST`请求：`axios.post(url, {config})`

	```
	axios.post('/user', {
    	firstName: 'Fred',
    	lastName: 'Flintstone'
  	})
  	.then(function (response) {
    	console.log(response);
  	})
  	.catch(function (error) {
    	console.log(error);
  	});
	```

* 同时执行多个请求

	```
	function getUserAccount() {
  		return axios.get('/user/12345');
	}
	
	function getUserPermissions() {
  		return axios.get('/user/12345/permissions');
	}
	
	axios.all([getUserAccount(), getUserPermissions()])
  	.then(axios.spread(function (acct, perms) {
    	// Both requests are now complete
  	}));
	```

### 常用API
* axios(config)：可以直接通过config来完成请求

	```
	// GET request for remote image
	axios({
	  method:'get',
	  url:'http://bit.ly/2mTM3nY',
	  responseType:'stream'
	})
	  .then(function(response) {
	  	response.data.pipe(fs.createWriteStream('ada_lovelace.jpg'))
	});
	
	// Send a POST request
	axios({
	  method: 'post',
	  url: '/user/12345',
	  data: {
	    firstName: 'Fred',
	    lastName: 'Flintstone'
	  }
	});
	```
* `axios(url[, config])`
	
	```
	// Send a GET request (default method)
axios('/user/12345');
	```
##### 请求方法别名
* axios.request(config)
* axios.get(url[, config])
* axios.delete(url[, config])
* axios.head(url[, config])
* axios.options(url[, config])
* axios.post(url[, data[, config]])
* axios.put(url[, data[, config]])
* axios.patch(url[, data[, config]])

##### 并发性
> 下列接口用于处理并发请求(同时处理多个多个request)

* axios.all(iterable)
* axios.spread(callback)

##### 创建axios实例
> 可以用自定义的config创建一个axios实例
**axios.create([config])**

	var instance = axios.create({
  		baseURL: 'https://some-domain.com/api/',
  		timeout: 1000,
  		headers: {'X-Custom-Header': 'foobar'}
	});

##### 实例方法
> 下面是实例的所有可用方法，方法中的config会与axios实例中的config合并。（实例可以将一些通用的config先配置好）

* axios#request(config)
* axios#get(url, [config])
* axios#delete(url, [config])
* axios#head(url, [config])
* axios#options(url[, config])
* axios#post(url[, data[, config]])
* axios#put(url[, data[, config]])
* axios#patch(url[, data[, config]])

### Config
> 下面列出了config的所有配置项，其中之后url是必填的。当method没有指定方法，默认为GET

	{
	  // `url` is the server URL that will be used for the request
	  url: '/user',
	
	  // `method` is the request method to be used when making the request
	  method: 'get', // default
	
	  // `baseURL` will be prepended to `url` unless `url` is absolute.
	  // It can be convenient to set `baseURL` for an instance of axios to pass relative URLs
	  // to methods of that instance.
	  baseURL: 'https://some-domain.com/api/',
	
	  // `transformRequest` allows changes to the request data before it is sent to the server
	  // This is only applicable for request methods 'PUT', 'POST', and 'PATCH'
	  // The last function in the array must return a string or an instance of Buffer, ArrayBuffer,
	  // FormData or Stream
	  // You may modify the headers object.
	  transformRequest: [function (data, headers) {
	    // Do whatever you want to transform the data
	
	    return data;
	  }],
	
	  // `transformResponse` allows changes to the response data to be made before
	  // it is passed to then/catch
	  transformResponse: [function (data) {
	    // Do whatever you want to transform the data
	
	    return data;
	  }],
	
	  // `headers` are custom headers to be sent
	  headers: {'X-Requested-With': 'XMLHttpRequest'},
	
	  // `params` are the URL parameters to be sent with the request
	  // Must be a plain object or a URLSearchParams object
	  params: {
	    ID: 12345
	  },
	
	  // `paramsSerializer` is an optional function in charge of serializing `params`
	  // (e.g. https://www.npmjs.com/package/qs, http://api.jquery.com/jquery.param/)
	  paramsSerializer: function(params) {
	    return Qs.stringify(params, {arrayFormat: 'brackets'})
	  },
	
	  // `data` is the data to be sent as the request body
	  // Only applicable for request methods 'PUT', 'POST', and 'PATCH'
	  // When no `transformRequest` is set, must be of one of the following types:
	  // - string, plain object, ArrayBuffer, ArrayBufferView, URLSearchParams
	  // - Browser only: FormData, File, Blob
	  // - Node only: Stream, Buffer
	  data: {
	    firstName: 'Fred'
	  },
	
	  // `timeout` specifies the number of milliseconds before the request times out.
	  // If the request takes longer than `timeout`, the request will be aborted.
	  timeout: 1000,
	
	  // `withCredentials` indicates whether or not cross-site Access-Control requests
	  // should be made using credentials
	  withCredentials: false, // default
	
	  // `adapter` allows custom handling of requests which makes testing easier.
	  // Return a promise and supply a valid response (see lib/adapters/README.md).
	  adapter: function (config) {
	    /* ... */
	  },
	
	  // `auth` indicates that HTTP Basic auth should be used, and supplies credentials.
	  // This will set an `Authorization` header, overwriting any existing
	  // `Authorization` custom headers you have set using `headers`.
	  auth: {
	    username: 'janedoe',
	    password: 's00pers3cret'
	  },
	
	  // `responseType` indicates the type of data that the server will respond with
	  // options are 'arraybuffer', 'blob', 'document', 'json', 'text', 'stream'
	  responseType: 'json', // default
	
	  // `responseEncoding` indicates encoding to use for decoding responses
	  // Note: Ignored for `responseType` of 'stream' or client-side requests
	  responseEncoding: 'utf8', // default
	
	  // `xsrfCookieName` is the name of the cookie to use as a value for xsrf token
	  xsrfCookieName: 'XSRF-TOKEN', // default
	
	  // `xsrfHeaderName` is the name of the http header that carries the xsrf token value
	  xsrfHeaderName: 'X-XSRF-TOKEN', // default
	
	  // `onUploadProgress` allows handling of progress events for uploads
	  onUploadProgress: function (progressEvent) {
	    // Do whatever you want with the native progress event
	  },
	
	  // `onDownloadProgress` allows handling of progress events for downloads
	  onDownloadProgress: function (progressEvent) {
	    // Do whatever you want with the native progress event
	  },
	
	  // `maxContentLength` defines the max size of the http response content in bytes allowed
	  maxContentLength: 2000,
	
	  // `validateStatus` defines whether to resolve or reject the promise for a given
	  // HTTP response status code. If `validateStatus` returns `true` (or is set to `null`
	  // or `undefined`), the promise will be resolved; otherwise, the promise will be
	  // rejected.
	  validateStatus: function (status) {
	    return status >= 200 && status < 300; // default
	  },
	
	  // `maxRedirects` defines the maximum number of redirects to follow in node.js.
	  // If set to 0, no redirects will be followed.
	  maxRedirects: 5, // default
	
	  // `socketPath` defines a UNIX Socket to be used in node.js.
	  // e.g. '/var/run/docker.sock' to send requests to the docker daemon.
	  // Only either `socketPath` or `proxy` can be specified.
	  // If both are specified, `socketPath` is used.
	  socketPath: null, // default
	
	  // `httpAgent` and `httpsAgent` define a custom agent to be used when performing http
	  // and https requests, respectively, in node.js. This allows options to be added like
	  // `keepAlive` that are not enabled by default.
	  httpAgent: new http.Agent({ keepAlive: true }),
	  httpsAgent: new https.Agent({ keepAlive: true }),
	
	  // 'proxy' defines the hostname and port of the proxy server
	  // Use `false` to disable proxies, ignoring environment variables.
	  // `auth` indicates that HTTP Basic auth should be used to connect to the proxy, and
	  // supplies credentials.
	  // This will set an `Proxy-Authorization` header, overwriting any existing
	  // `Proxy-Authorization` custom headers you have set using `headers`.
	  proxy: {
	    host: '127.0.0.1',
	    port: 9000,
	    auth: {
	      username: 'mikeymike',
	      password: 'rapunz3l'
	    }
	  },
	
	  // `cancelToken` specifies a cancel token that can be used to cancel the request
	  // (see Cancellation section below for details)
	  cancelToken: new CancelToken(function (cancel) {
	  })
	}
* url —— 用来向服务器发送请求的url
* method —— 请求方法，默认是GET方法
* baseURL —— 基础URL路径，假如url不是绝对路径，如https://some-domain.com/api/v1/login?name=jack,那么向服务器发送请求的URL将会是baseURL + url。
* transformRequest —— transformRequest方法允许在请求发送到服务器之前修改该请求，此方法只适用于PUT、POST和PATCH方法中。而且，此方法最后必须返回一个string、ArrayBuffer或者Stream。
* transformResponse —— transformResponse方法允许在数据传递到then/catch之前修改response数据。此方法最后也要返回数据。
* headers —— 发送自定义Headers头文件，头文件中包含了http请求的各种信息。
* params —— params是发送请求的查询参数对象，对象中的数据会被拼接成url?param1=value1&param2=value2。
* paramsSerializer —— params参数序列化器。
* data —— data是在发送POST、PUT或者PATCH请求的数据对象。
* timeout —— 请求超时设置，单位为毫秒
* withCredentials —— 表明是否有跨域请求需要用到证书
* adapter —— adapter允许用户处理更易于测试的请求。返回一个Promise和一个有效的response
* auth —— auth表明提供凭证用于完成http的身份验证。这将会在headers中设置一个Authorization授权信息。自定义Authorization授权要设置在headers中。
* responseType —— 表示服务器将返回响应的数据类型，有arraybuffer、blob、document、json、text、stream这6个类型，默认是json类似数据。
* xsrfCookieName —— 用作 xsrf token 值的 cookie 名称
* xsrfHeaderName —— 带有 xsrf token 值 http head 名称
* onUploadProgress —— 允许在上传过程中的做一些操作
* onDownloadProgress —— 允许在下载过程中的做一些操作
* maxContentLength —— 定义了接收到的response响应数据的最大长度。
* validateStatus —— validateStatus定义了根据HTTP响应状态码决定是否接收或拒绝获取到的promise。如果 validateStatus 返回 true (或设置为 null 或 undefined ),promise将被接收;否则,promise将被拒绝。
* maxRedirects —— maxRedirects定义了在node.js中redirect的最大值，如果设置为0，则没有redirect。
* httpAgent —— 定义在使用http请求时的代理
* httpsAgent —— 定义在使用https请求时的代理
* proxy —— proxy定义代理服务器的主机名和端口，auth
* cancelToken —— cancelToken定义一个 cancel token 用于取消请求

### Response
> 当我们ajax获取数据成功后会返回一个response对象，数据如下：

	{
	  // `data` is the response that was provided by the server
	  data: {},
	
	  // `status` is the HTTP status code from the server response
	  status: 200,
	
	  // `statusText` is the HTTP status message from the server response
	  statusText: 'OK',
	
	  // `headers` the headers that the server responded with
	  // All header names are lower cased
	  headers: {},
	
	  // `config` is the config that was provided to `axios` for the request
	  config: {},
	
	  // `request` is the request that generated this response
	  // It is the last ClientRequest instance in node.js (in redirects)
	  // and an XMLHttpRequest instance the browser
	  request: {}
	}

response是通过promise的then方法来获取，有时也会出现ajax报错，此时就会到catch中去捕获异常error对象。具体使用方法如下：

	axios.get('/user/12345')
	  .then(function(response) {
	    console.log(response.data);
	    console.log(response.status);
	    console.log(response.statusText);
	    console.log(response.headers);
	    console.log(response.config);
	    console.log(response.request);
	  })
	  .catch(function(error) {
	    console.log(error)
	  });
	  
### 默认Config
> 可以指定将应用于每个请求的配置默认值。

##### 设置全局axios默认值

	axios.defaults.baseURL = 'https://api.example.com';
	axios.defaults.headers.common['Authorization'] = AUTH_TOKEN;
	axios.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded';

##### 设置全局的实例默认值

	// Set config defaults when creating the instance
	const instance = axios.create({
	  baseURL: 'https://api.example.com'
	});
	
	// Alter defaults after instance has been created
	instance.defaults.headers.common['Authorization'] = AUTH_TOKEN;

##### 配置优先顺序
> 后者将优先于前者

	// Create an instance using the config defaults provided by the library
	// At this point the timeout config value is `0` as is the default for the library
	const instance = axios.create();
	
	// Override timeout default for the library
	// Now all requests using this instance will wait 2.5 seconds before timing out
	instance.defaults.timeout = 2500;
	
	// Override timeout for this request as it's known to take a long time
	instance.get('/longRequest', {
	  timeout: 5000
	});

### 拦截器
> axios可以拦截`requests`或`response`，然后再进行`then`或`catch`。

	// Add a request interceptor
	axios.interceptors.request.use(function (config) {
	    // Do something before request is sent
	    return config;
	  }, function (error) {
	    // Do something with request error
	    return Promise.reject(error);
	  });
	
	// Add a response interceptor
	axios.interceptors.response.use(function (response) {
	    // Do something with response data
	    return response;
	  }, function (error) {
	    // Do something with response error
	    return Promise.reject(error);
	  });
如果需要移除拦截器，可以使用

	const myInterceptor = axios.interceptors.request.use(function () {/*...*/});
	axios.interceptors.request.eject(myInterceptor);
也可以将拦截添加到实例中

	const instance = axios.create();
	instance.interceptors.request.use(function () {/*...*/});

### 处理错误

	axios.get('/user/12345')
	  .catch(function (error) {
	    if (error.response) {
	      // The request was made and the server responded with a status code
	      // that falls out of the range of 2xx
	      console.log(error.response.data);
	      console.log(error.response.status);
	      console.log(error.response.headers);
	    } else if (error.request) {
	      // The request was made but no response was received
	      // `error.request` is an instance of XMLHttpRequest in the browser and an instance of
	      // http.ClientRequest in node.js
	      console.log(error.request);
	    } else {
	      // Something happened in setting up the request that triggered an Error
	      console.log('Error', error.message);
	    }
	    console.log(error.config);
	  });
可以使用`validateStatus`配置选项定义一个自定义`HTTP`状态码错误范围。

	axios.get('/user/12345', {
	  validateStatus: function (status) {
	    return status < 500; // Reject only if the status code is greater than or equal to 500
	  }
	})

### 取消请求
> 可以使用一个cancel令牌来取消请求，cancel令牌可以使用`CancelToken.source`来创建。

	const CancelToken = axios.CancelToken;
	const source = CancelToken.source();
	
	axios.get('/user/12345', {
	  cancelToken: source.token
	}).catch(function(thrown) {
	  if (axios.isCancel(thrown)) {
	    console.log('Request canceled', thrown.message);
	  } else {
	    // handle error
	  }
	});
	
	axios.post('/user/12345', {
	  name: 'new name'
	}, {
	  cancelToken: source.token
	})
	
	// cancel the request (the message parameter is optional)
	source.cancel('Operation canceled by the user.');
还可以通过将`executor`函数传递给`CancelToken`构造函数来创建一个cancel令牌

	const CancelToken = axios.CancelToken;
	let cancel;
	
	axios.get('/user/12345', {
	  cancelToken: new CancelToken(function executor(c) {
	    // An executor function receives a cancel function as a parameter
	    cancel = c;
	  })
	});
	
	// cancel the request
	cancel();
> 注意：可以使用相同的cancel令牌取消多个请求。

### 使用`application/x-www-form-urlencoded`格式
> 默认情况下，axios将JavaScript对象序列化为JSON。要在`application/x-www-form-urlencode`格式中发送数据，可以使用以下选项之一。

##### 浏览器
在浏览器中，可以使用`URLSearchParams`，API如下

	const params = new URLSearchParams();
	params.append('param1', 'value1');
	params.append('param2', 'value2');
	axios.post('/foo', params);
> 请注意，所有浏览器都支持`URLSearchParams`(见[caniuse.com](https://www.caniuse.com/#feat=urlsearchparams))，但是可以使用`polyfill`使全局环境可用。

或者，可以使用[qs](https://github.com/ljharb/qs)库来编码数据。

	const qs = require('qs');
	axios.post('/foo', qs.stringify({ 'bar': 123 }));
或者以另一种方式(ES6)，

	import qs from 'qs';
	const data = { 'bar': 123 };
	const options = {
	  method: 'POST',
	  headers: { 'content-type': 'application/x-www-form-urlencoded' },
	  data: qs.stringify(data),
	  url,
	};
	axios(options);

##### Node.js
在Node.js中，可以使用querystring模块，如下所示

	const querystring = require('querystring');
	axios.post('http://something.com/', querystring.stringify({ foo: 'bar' }));
你也可以使用[qs](https://github.com/ljharb/qs)库

### 参考
* [axios](https://github.com/axios/axios)
* [Vue.js学习系列三 —— axios和网络传输相关知识的学习实践](https://www.jianshu.com/p/8e5fb763c3d7)
* [Vue 爬坑之路（六）—— 使用 Vuex + axios 发送请求](https://www.cnblogs.com/wisewrong/p/6402183.html)
* [浅谈 Axios 在 Vue 项目中的使用](https://www.cnblogs.com/coolslider/p/7838309.html)