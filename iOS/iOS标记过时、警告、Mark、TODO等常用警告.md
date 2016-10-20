iOS标记过时、警告、Mark、TODO等常用警告

过时

### 过时
1. `DEPRECATED_ATTRIBUTE`
2. `__attribute__((deprecated))`
3. `__deprecated`
4. `__deprecated_msg("use name instead.")`
5. `DEPRECATED_MSG_ATTRIBUTE("use name instead.")`
6. `__attribute__((deprecated("use name instead.")))`
7. `__attribute__((deprecated("Use -[XXClass xxxMethod:] instead.")))`
8. `NS_DEPRECATED_IOS(2_0, 7_0, "Use -xxxMethod:") __TVOS_PROHIBITED`
9. `NS_ENUM_DEPRECATED_IOS(3_0, 8_0, "Use UIUserNotificationType for user notifications and registerForRemoteNotifications for receiving remote notifications instead.") __TVOS_PROHIBITED`

### 警告

> 1. `#warning "xxx"`


### 参考
* [How do I flag a method as deprecated in Objective-C 2.0](http://stackoverflow.com/questions/3908715/how-do-i-flag-a-method-as-deprecated-in-objective-c-2-0)