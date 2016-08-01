# iOS地图CLLocationManager

### 问题
* 出现`Trying to start MapKit location updates without prompting for location authorization.`问题
> 在`info.plist`文件中添加下面的key-value即可
> 
```
	<key>NSLocationWhenInUseUsageDescription</key>
    <string>需要使用定位</string>   	
```


### 参考
* [Location Services not working in iOS 8](http://stackoverflow.com/questions/24062509/location-services-not-working-in-ios-8)