# Flutter常用命令
* `flutter --help` 显示帮助信息

* `flutter create <project_name>` 创建flutter工程

* `flutter doctor` 检查flutter环境

* `flutter run` 启动flutter应用程序

* `flutter build apk` build apk包（`flutter build`命令默认使用`--release`）

* `flutter build ipa` build ipa包（`flutter build`命令默认使用`--release`）

* `flutter build aar` build aar包（可以添加到现有Android工程）

* `flutter build ios-framework` build ios framework（可以添加到现有iOS工程）

* `flutter upgrade` 更新Flutter SDK

* `flutter clean` 清除工程

* `flutter packages get` 下载依赖包

  ```
  常用命令:
    flutter create <output directory> 创建项目
    flutter run [options]             运行项目
  
  使用: flutter <command> [arguments]
  
    全局选项:
    -h, --help                  打印帮助信息
    -v, --verbose               动态日志
  
    -d, --device-id             目标设备 ID 或名称
        --version               查看命令版本
        --suppress-analytics    禁止分析报告
        --bug-report            提交 bug
  
    可用的命令:
      analyze          分析 dart 代码
      attach           附加应用到连接中的设备
      build            构建应用
      channel          列出或者切换通道
      clean            删除 build/ 文件夹
      config           配置 flutter
      create           创建项目
      devices          列出已连接的设备
      doctor           检查 flutter 信息
      drive            Runs Flutter Driver tests for the current project.
      emulators        列出可用的设备
      format           格式化 Dart 文件
      fuchsia_reload   热加载
      help             显示帮助信息
      install          在连接的设备中安装 app
      logs             显示正在运行的应用的日志
      packages         包
      precache         Populates the Flutter tool's cache of binary artifacts.
      run              运行应用
      screenshot       为应用截图
      stop             停止运行
      test             Run Flutter unit tests for the current project.
      trace            Start and stop tracing for a running Flutter app.
      upgrade          更新 flutter
  ```

