# iOS信鸽推送证书设置指南

## iOS证书命令
* 证书有效期：`openssl x509 -in xxx.pem -noout -dates`
* 连接APNS测试证书是否合法
	* 开发环境：`openssl s_client -connect gateway.sandbox.push.apple.com:2195 -cert xxx.pem -key xxx.pem`	
	* 生产环境：`openssl s_client -connect gateway.push.apple.com:2195 -cert xxx.pem -key xxx.pem`	
* 生成pem格式的证书：`openssl pkcs12 -in CertificateName.p12 -out CertificateName.pem -nodes`

### 推送证书、描述文件等
如果需要调试推送，先要在`Certificate Center`的`APP ID`中配置开发和生成的推送证书，再在`Provisioning Profiles`中创建对应`APP id`的描述文件（包含开发和生成两个）

### 常见问题
* 注册失败，如下代码
`[xgpush warning!]rspCode is 47, XGPush register errorBlock`
> 好像照样能正常接收到推送，不知道原因



## 参考
* [iOS 证书设置指南](http://developer.qq.com/wiki/xg/iOS%E6%8E%A5%E5%85%A5/iOS%20%E8%AF%81%E4%B9%A6%E8%AE%BE%E7%BD%AE%E6%8C%87%E5%8D%97/iOS%20%E8%AF%81%E4%B9%A6%E8%AE%BE%E7%BD%AE%E6%8C%87%E5%8D%97.html)