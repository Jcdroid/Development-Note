# Vue项目中npm的使用
---
> npm全称Node Package Manager，是node.js的模块依赖管理工具。由于npm的源在国外，所以国内用户使用起来各种不方便。下面整理出了一部分国内优秀的npm镜像资源，国内用户可以选择使用。

### 国内优秀npm镜像推荐及使用
--
#### 淘宝npm镜像
* 搜索地址：`http://npm.taobao.org/`
* registry地址：`http://registry.npm.taobao.org/`

#### cnpmjs镜像
* 搜索地址：`http://cnpmjs.org/`
* registry地址：`http://r.cnpmjs.org/`

### 如何使用
* 临时使用：

		npm --registry https://registry.npm.taobao.org install express

* 持久使用

		npm config set registry https://registry.npm.taobao.org
		// 配置后可通过下面方式来验证是否成功
		npm config get registry
		// 或
		npm info express

* 通过cnpm使用：

		npm install -g cnpm --registry=https://registry.npm.taobao.org
		// 使用
		cnpm install express

### 项目构建
1. `npm install`（当出现vue相关安装错误时，根据提示可使用`npm install --save vue-resource`）
2. `npm run dev`即可

### 常见问题

* node-sass下载失败解决方案

  > 先改为淘宝镜像，再分别尝试`npm install sass-loader --save-dev`和`npm install node-sass --save-dev`

### 参考
* [国内优秀npm镜像推荐及使用](http://riny.net/2014/cnpm/)