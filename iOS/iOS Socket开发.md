#iOS Socket开发
---
### 前言
	最近在搞iOS的Socket连接硬件开发，遇到了一些问题，在这里记录下来，以防止下次再犯。

Google得知，在iOS的`Socket`开发中，最常用的第三方开源库是[`CocoaAsyncSocket`](https://github.com/robbiehanson/CocoaAsyncSocket)，这个库使用起来比较简单，但还是有一些点需要注意。

### 关于Socket
Socket是应用层与TCP/IP协议族通信的中间软件抽象层，它是一组接口。

1. TCP：面向连接、传输可靠(保证数据正确性,保证数据顺序)、用于传输大量数据(流模式)、速度慢，建立连接需要开销较多(时间，系统资源)。
2. UDP：面向非连接、传输不可靠、用于传输少量数据(数据包模式)、速度快。

### CocoaAsyncSocket
CocoaAsyncSocket支持`TCP`和`UDP`。它有两组类，分别是`AsyncSocket`、`AsyncUdpSocket`、`GCDAsyncSocket`和`GCDAsyncUdpSocket`，具体使用可以看[这里](https://github.com/robbiehanson/CocoaAsyncSocket)

### iOS结构体字节对齐问题
在数据传输过程中，需要注意传输使用的基本数据类型，因为不同的基本类型在不同的平台所占用的字节数是不同的，这样就可能导致*server端*的接收到的数据紊乱。
> 注意：在32和64平台中有些基本数据类型所占的字节长度是不同的，所以会导致各个不同的平台中使用`sizeof`会出现不同的值，比如`long`型在32占4字节，在64为占8字节

###参考
* [iOS的Socket开发基础](http://www.coderyi.com/archives/429)
* [C/C++字节对齐详解](http://www.linuxsong.org/2010/09/c-byte-alignment/)
* [在C语言中，double、long、unsigned、int、char类型数据所占字节数](http://blog.csdn.net/lyl0625/article/details/7350045)