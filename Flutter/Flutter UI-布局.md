# Flutter UI-布局

### 实现类似Android的`wrap_content` 和`match_parent`效果

**wrap_content , wrap_content :**

```dart
//use this as child
 Wrap(
  children: <Widget>[*your_child*])
```

**match_parent, match_parent:**

```dart
//use this as child
Container(
  height: double.infinity,
  width: double.infinity,
  child: *your_child*
)
```

**match_parent, wrap_content :**

```dart
//use this as child
Row(
  mainAxisSize: MainAxisSize.max,
  children: <Widget>[*your_child*],
)
```

**wrap_content , match_parent:**

```dart
//use this as child
Column(
  mainAxisSize: MainAxisSize.max,
  children: <Widget>[*your_child*],
);
```

### 参考

* [Flutter 布局控件完结篇](https://juejin.im/post/5bab35ff5188255c3272c228)

* [The equivalent of wrap_content and match_parent in flutter?](https://stackoverflow.com/questions/42257668/the-equivalent-of-wrap-content-and-match-parent-in-flutter)