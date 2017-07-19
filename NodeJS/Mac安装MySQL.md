# Mac安装MySQL

1. 下载MySQL 5.6：[下载地址](https://dev.mysql.com/downloads/mysql/)；
2. 安装后(默认安装在`/usr/local`目录下)，打开`系统偏好设置`，进入`MySQL`，开启mysql服务；
3. 此时我们在命令行输入`mysql -u root -p`命令会提示没有commod not found，我们还需要将mysql加入系统环境变量。

	```
	(1).进入/usr/local/mysql/bin,查看此目录下是否有mysql；
	(2).执行vim ~/.bash_profile
	    在该文件中添加mysql/bin的目录：
	    PATH=$PATH:/usr/local/mysql/bin
	添加完成后，按esc，然后输入wq保存。
	最后在命令行输入source ~/.bash_profile
	```
4. 现在你就可以通过`mysql -u root -p`登录mysql了，会让你输入密码，默认没有密码，直接回车就行了。登录成功后，你可以通过下面的命令修改密码：
`SET PASSWORD FOR 'root'@'localhost' = PASSWORD('newpass');`

### 参考
* [mac安装mysql的两种方法](http://www.jianshu.com/p/fd3aae701db9)