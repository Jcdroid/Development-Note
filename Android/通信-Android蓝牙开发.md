# Android蓝牙开发
> 要在 APP 中使用蓝牙功能，需要在 Manifest 中申请蓝牙相关的权限。在 Android 6.0 及以上平台中，还需要申请定位权限。为什么会这样？因为 BLE 确实有定位的能力。

Android 平台包含蓝牙网络堆栈支持，凭借此项支持，设备能以无线方式与其他蓝牙设备交换数据。应用框架提供了通过 Android Bluetooth API 访问蓝牙功能的途径。 这些 API 允许应用以无线方式连接到其他蓝牙设备，从而实现点到点和多点无线功能。



### [BluetoothAdapter](https://developer.android.com/reference/android/bluetooth/BluetoothAdapter.html)

表示本地蓝牙适配器（蓝牙无线装置）。 `BluetoothAdapter` 是所有蓝牙交互的入口点。 利用它可以发现其他蓝牙设备，查询绑定（配对）设备的列表，使用已知的 MAC 地址实例化 `BluetoothDevice`，以及创建 `BluetoothServerSocket` 以侦听来自其他设备的通信。



### [BluetoothDevice](https://developer.android.com/reference/android/bluetooth/BluetoothDevice.html)

表示远程蓝牙设备。利用它可以通过 `BluetoothSocket` 请求与某个远程设备建立连接，或查询有关该设备的信息，例如设备的名称、地址、类和绑定状态等。



### [BluetoothSocket](https://developer.android.com/reference/android/bluetooth/BluetoothSocket.html)

表示蓝牙套接字接口（与 TCP `Socket` 相似）。这是允许应用通过 InputStream 和 OutputStream 与其他蓝牙设备交换数据的连接点。



### [BluetoothServerSocket](https://developer.android.com/reference/android/bluetooth/BluetoothServerSocket.html)

表示用于侦听传入请求的开放服务器套接字（类似于 TCP `ServerSocket`）。 要连接两台 Android 设备，其中一台设备必须使用此类开放一个服务器套接字。 当一台远程蓝牙设备向此设备发出连接请求时，`BluetoothServerSocket` 将会在接受连接后返回已连接的 `BluetoothSocket`。



### [BluetoothClass](https://developer.android.com/reference/android/bluetooth/BluetoothClass.html)

描述蓝牙设备的一般特征和功能。 这是一组只读属性，用于定义设备的主要和次要设备类及其服务。 不过，它不能可靠地描述设备支持的所有蓝牙配置文件和服务，而是适合作为设备类型提示。



### [BluetoothProfile](https://developer.android.com/reference/android/bluetooth/BluetoothProfile.html)

表示蓝牙配置文件的接口。 *蓝牙配置文件*是适用于设备间蓝牙通信的无线接口规范。 免提配置文件便是一个示例。 如需了解有关配置文件的详细讨论，请参阅[使用配置文件](https://developer.android.com/guide/topics/connectivity/bluetooth#Profiles)



### [BluetoothHeadset](https://developer.android.com/reference/android/bluetooth/BluetoothHeadset.html)

提供蓝牙耳机支持，以便与手机配合使用。 其中包括蓝牙耳机和免提（1.5 版）配置文件。



### [BluetoothA2dp](https://developer.android.com/reference/android/bluetooth/BluetoothA2dp.html)

定义高质量音频如何通过蓝牙连接和流式传输，从一台设备传输到另一台设备。“A2DP”代表高级音频分发配置文件。



### [BluetoothHealth](https://developer.android.com/reference/android/bluetooth/BluetoothHealth.html)

表示用于控制蓝牙服务的健康设备配置文件代理。



### [BluetoothHealthCallback](https://developer.android.com/reference/android/bluetooth/BluetoothHealthCallback.html)

用于实现 `BluetoothHealth` 回调的抽象类。您必须扩展此类并实现回调方法，以接收关于应用注册状态和蓝牙通道状态变化的更新内容。



### [BluetoothHealthAppConfiguration](https://developer.android.com/reference/android/bluetooth/BluetoothHealthAppConfiguration.html)

表示第三方蓝牙健康应用注册的应用配置，以便与远程蓝牙健康设备通信。



### [BluetoothProfile.ServiceListener](https://developer.android.com/reference/android/bluetooth/BluetoothProfile.ServiceListener.html)

在 `BluetoothProfile` IPC 客户端连接到服务（即，运行特定配置文件的内部服务）或断开服务连接时向其发送通知的接口。



### 参考

* [蓝牙](https://developer.android.com/guide/topics/connectivity/bluetooth)

* [Android 上的蓝牙实践](https://juejin.im/entry/583d9054c59e0d006b4bb039)