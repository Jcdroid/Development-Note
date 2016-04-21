#iOS Masonry使用

###问题
1. -[UIView mas_makeConstraints:]: unrecognized selector sent to instance

		这个问题是由于没有正确导入Masonry引起的：1. 可以检查pod中是不是写到test target中去了；2. 检查Other Link Flag是否包含-l"Masonry"
		
		
		
###参考
1. [Masonry issues-188](https://github.com/SnapKit/Masonry/issues/188)