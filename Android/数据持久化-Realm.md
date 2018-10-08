# 数据持久化-Realm

> 数据库Realm，是用来替代sqlite的一种解决方案，它有一套自己的数据库存储引擎，比sqlite更轻量级，拥有更快的速度，并且具有很多现代数据库的特性，比如支持JSON，流式api，数据变更通知，自动数据同步,简单身份验证，访问控制，事件处理，最重要的是跨平台，目前已有Java，Objective C，Swift，React-Native，Xamarin这五种实现。

### 框架常用类
* Realm
* RealmConfiguration
* RealmObject
* RealmList

### 初始化
* 在`Application`的`onCreate`中添加`Realm.init(this)`即可，也可以使用`RealmConfiguration`进行一些自定义的配置
* 创建实体，直接新建一个类继承`RealmObject`

### 注解
* @PrimaryKey
* @Required
* @Ignore
* @Index

### 增删改查
###### 增
	类型一 ：新建一个对象，并进行存储
	Realm realm=Realm.getDefaultInstance();

	realm.beginTransaction();
	User user = realm.createObject(User.class); // Create a new object
	user.setName("John");
	user.setEmail("john@corporation.com");
	realm.commitTransaction();

 	类型二：复制一个对象到Realm数据库
	Realm realm=Realm.getDefaultInstance();
	
	User user = new User("John");
	user.setEmail("john@corporation.com");
	
	// Copy the object to Realm. Any further changes must happen on realmUser
	realm.beginTransaction();
	realm.copyToRealm(user);
	realm.commitTransaction();

##### 删


### 异步操作

### 版本升级