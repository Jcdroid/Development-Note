# Android OOM的问题

### ImageView setImageResource出现OOM
检查后发现是由于把750*1134的图片放在`drawable`目录下，应该当在`drawable-xxhdpi`下，见以下：

* drawable-xxhdpi: 1920x1080
* drawable-xhdpi: 1280x720
* drawable-hdpi: 960x540
* drawable-mdpi: 640x360

### 在RecycleView中使用Picasso加载图片出现OOM
1. 图片裁剪：可以使用Picasso的`resize`或`resizeDimen`
2. 查看大图放弃memory cache：`memoryPolicy(NO_CACHE, NO_STORE)`
3. RecyclableImageView：重写ImageView的onDetachedFromWindow方法，在它从屏幕中消失时回调，去掉drawable引用，能加快内存的回收。
	
	```
	public class RecyclerImageView extends ImageView
	{ 
		private Drawable originalDrawable;
	    @Override
	    protected void onAttachedToWindow() {
	        super.onAttachedToWindow();
	        setImageDrawable(originalDrawable);
	    }
	    @Override    
	    protected void onDetachedFromWindow() {
	        super.onDetachedFromWindow();
	        originalDrawable = getDrawable();
	        setImageDrawable(null);   
	    }
	}
	```
4. 新进程中查看大图：只要在AndroidManifest.xml中定义Activity时加入process属性，即可在新进程中打开此Activity。

	```
	<activity android:name=".PictureActivity" android:process=":picture"/>
	```
5. 列表页滑动优化：picasso可以对多个加载请求设置相同的tag

	```
	Object tag = new Object();
	Picasso.with( imageView.getContext() )
			.load(url)
			.resize(dp2px(250),dp2px(250))
			.centerCrop()
			.tag(tag)
			.into(imageView);
	```
6. 设置RGB_565：对于不透明的图片可以使用RGB_565来优化内存。

	```
	Picasso.with( imageView.getContext() )
			.load(url)
			.config(Bitmap.Config.RGB_565)
			.into(imageView);
	```
	默认情况下，Android使用ARGB_8888：
	
	```
	Android中有四种，分别是：
	ALPHA_8：每个像素占用1byte内存
	ARGB_4444:每个像素占用2byte内存
	ARGB_8888:每个像素占用4byte内存
	RGB_565:每个像素占用2byte内存
	```

### 参考
* [OutOfMemory while setting image in ImageView](https://stackoverflow.com/questions/33279223/outofmemory-while-setting-image-in-imageview)
* [使用Picasso加载图片的内存优化实践](http://www.jianshu.com/p/6b746c904a49)
* [Picasso And Context](https://stackoverflow.com/questions/23928019/picasso-and-context)
* [JakeWharton的避免OOM建议](https://github.com/square/picasso/issues/1104)
* [Clear Cache memory of Picasso](https://link.jianshu.com/?t=http://stackoverflow.com/questions/27502659/clear-cache-memory-of-picasso)