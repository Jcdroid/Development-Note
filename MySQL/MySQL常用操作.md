# MySQL常用操作

* 环境变量：`D:\Program Files\MySQL\MySQL Server 5.6\bin`

### 忘记密码

1. 第一步：netstat -nat(可以查看mysql是否启动了，如果启动了，可以用输入net stop mysql<版本>（如net stop mysql56）（或者通过任务管理器结束进程）)
2. 第二步：mysqld --skip-grant-tables，不要关闭窗口
3. 第三步：开启一个新的cmd，然后输入mysql -uroot -p 回车后，输入密码的时候直接按回车键就可以了
4. 第四步：修改密码：update mysql.user set password = PASSWORD("123456") where user="root";
5. 第五步：刷新密码：flush privileges;
6. 第六步：退出：exit，然后通过新密码就可以重新登陆了

### 参考

* [windows下mysql密码忘记了](https://www.cnblogs.com/wzyxidian/p/5875493.html)