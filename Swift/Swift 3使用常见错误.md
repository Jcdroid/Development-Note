# Swift 3使用常见错误

* 编译出错，错误`Use Legacy Swift Language Version” with pod 'xxx', '~> 4.0`
> 在pod file中添加下面的代码，详细见[这里](http://stackoverflow.com/questions/38446097/xcode-8-beta-3-use-legacy-swift-issue/38466703#38466703)
> 
> ```
> post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['SWIFT_VERSION'] = '3.0'
    end
  end
end
> ```

