# Android APP混合开发
 1. **使用拦截URL，进行匹配，分发的方式**。这种方式简单快速，但是只能单向的从网页到原生，不能从原生发送数据到网页。
 
 2. **使用Android提供的API进行JS注入**。这种方式相对来说比较麻烦，需要APP和网页端都新增对应的响应对方的代码。
 
 3. **使用提供的开源库**，如[java-js-webview-bridge](https://github.com/pedant/safe-java-js-webview-bridge)，这个项目的原理就是使用 WebChromeClient.onJsPrompt 方法来进行交互，本质上都是js调用 `prompt` 函数，传输一些参数， `onJsPrompt` 方法拦截到 `prompt` 动作，然后解析数据，最后调用相应的Native方法。

 ### 参考
 * [谈谈Android App混合开发](https://www.tuicool.com/articles/m6RVFfA)