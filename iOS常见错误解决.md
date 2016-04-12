#iOS 常见错误解决
1. **没有找到文件错误（clang: error: no such file or directory: '/xxx/xxx/xxx.m'	clang: error: no input files）**

	`Project > target > Build Phases > Compile Sources remove xxx.m`

2. **pod install很慢**

	`pod install --verbose --no-repo-update`
	
	`pod update --verbose --no-repo-update`

3. **clang: error: linker command failed with exit code 1 (use -v to see invocation)**
	`注意在pod里面导入了第三方包，然后在vendor重复导入了一遍将出现这个错误`