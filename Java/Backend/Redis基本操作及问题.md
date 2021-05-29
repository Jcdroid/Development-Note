# Redis基本操作及问题

> redis的配置可以在`redis.windows.conf`中查看和修改（包括密码）

### 常用命令

* Windows的redis[下载地址](https://github.com/MSOpenTech/redis)

* 运行redis：`redis-server`
* 启动的时候使用`--maxmemory` 命令限制Redis的内存：`redis-server redis.windows.conf --maxmemory 200m`，也可以在修改配置文件`redis.windows.conf`：`maxmemory 209715200`
* 启动redis：`redis-server --service-start`
* 停止redis：`redis-server --service-stop`
* redis配置密码：打开`redis.windows.conf`，找到`# requirepass foobared `，去掉行前的注释，并修改密码为所需的密码，保存文件，如`requirepass 123`，该行注释后代表没有设置redis密码
* 登录redis：`redis-cli -h 127.0.0.1 -p 6379`，有密码时可以加上`-a password`，如`redis-cli -h 127.0.0.1 -p 6379 -a 123`，也可以简化为`redis-cli`，登录成功后可以输入`ping`查看是否登录成功，还有一些命令：`keys *`、`config get *`、`config get requirepass`、`set 1 2`等等

### 参考

* [在windows上部署使用Redis](https://www.cnblogs.com/hankleo/p/10264183.html)
* [关于win本地远程连接不到redis问题](https://blog.csdn.net/qq_17635843/article/details/78523043)