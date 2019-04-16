# Flutter网络操作

### 网络请求

#### dio库


### JSON解析

#### 以json_serializable的方式创建model类

##### 运行代码生成程序

```dart
import 'package:json_annotation/json_annotation.dart';

// user.g.dart 将在我们运行生成命令后自动生成
part 'user.g.dart';

///这个标注是告诉生成器，这个类是需要生成Model类的
@JsonSerializable()

class User{
  User(this.name, this.email);

  String name;
  String email;
  //不同的类使用不同的mixin即可
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
```
有两种运行代码生成器的方法:
* 一次性生成：通过在我们的项目根目录下运行`flutter packages pub run build_runner build`，我们可以在需要时为我们的model生成json序列化代码。
* 持续生成：使用`_watcher_`可以使我们的源代码生成的过程更加方便。它会监视我们项目中文件的变化，并在需要时自动构建必要的文件。我们可以通过`flutter packages pub runc build_runner watch`在项目根目录下运行来启动`_watcher_`。

##### 使用json_serializable模型

要通过`json_serializable`方式反序列化JSON字符串，我们不需要对先前的代码进行任何更改。

```dart
Map userMap = JSON.decode(json);
var user = new User.fromJson(userMap);
```

序列化也一样。调用API与之前相同。

```dart
String json = JSON.encode(user);
```

有了`json_serializable`，我们可以在`User`类上忘记任何手动的JSON序列化 。源代码生成器创建一个名为`user.g.dart`的文件，它具有所有必需的序列化逻辑。 现在，我们不必编写自动化测试来确保序列化的正常工作 - 这个库会确保序列化工作正常。

### 参考

* [JSON和序列化](https://flutterchina.club/json/)
