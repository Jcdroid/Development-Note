# Android dp与px的关系

### getDimension、getDimensionPixelSize、getDimensionPixelOffset关系
getDimension和getDimensionPixelOffset的功能类似，都是获取某个dimen的值(计算得到的值单位为px)，但是如果单位是dp或sp，则需要将其乘以density，如果是px，则不乘。并且getDimension返回float，getDimensionPixelOffset返回int。而getDimensionPixelSize则不管写的是dp还是sp还是px,都会乘以denstiy。
代码如下：

```
<resources>  
    <dimen name="dp_01">16dp</dimen>  
    <dimen name="px_01">16px</dimen>  
    <dimen name="sp_01">16sp</dimen>  
</resources> 
```
```
float a1=getResources().getDimension(R.dimen.dp_01);    
int a2=getResources().getDimensionPixelOffset(R.dimen.dp_01);    
int a3=getResources().getDimensionPixelSize(R.dimen.dp_01);    
  
float b1=getResources().getDimension(R.dimen.px_01);  
int b2=getResources().getDimensionPixelOffset(R.dimen.px_01);    
int b3=getResources().getDimensionPixelSize(R.dimen.px_01);    
  
float c1=getResources().getDimension(R.dimen.sp_01);    
int c2=getResources().getDimensionPixelOffset(R.dimen.sp_01);    
int c3=getResources().getDimensionPixelSize(R.dimen.sp_01);    
  
Log.d("test", "getDimension= "+a1+", getDimensionPixelOffset="+a2+",getDimensionPixelSize="+a3);    
Log.d("test", "getDimension= "+b1+", getDimensionPixelOffset="+b2+",getDimensionPixelSize="+b3);    
Log.d("test", "getDimension= "+c1+", getDimensionPixelOffset="+c2+",getDimensionPixelSize="+c3);
```
LogCat中查看输出结果：

```//Device (480*800,240dpi,density=1.5):  
getDimension= 24.0, getDimensionPixelOffset=24,getDimensionPixelSize=24    
getDimension= 16.0, getDimensionPixelOffset=16,getDimensionPixelSize=24    
getDimension= 24.0, getDimensionPixelOffset=24,getDimensionPixelSize=24
```

### CommonUtils.dip2px
```
public static int dip2px(Context context, float dpValue) {
        final float scale = context.getResources().getDisplayMetrics().density;
        return (int) (dpValue * scale + 0.5f);
    }
```

### 计算关系
```
int value1 = CommonUtils.dip2px(VideoDetailActivity.this, getResources().getDimension(R.dimen.padding_8));
int value2 = CommonUtils.dip2px(VideoDetailActivity.this, 8);
int value3 = getResources().getDimensionPixelSize(R.dimen.padding_8);
int value4 = getResources().getDimension(R.dimen.padding_8);
```
value1 != value2 == value3 == value4

如果想要动态设置topMargin等值，需要使用value2、value3、value4的计算方式（推荐value4）,value3、value4动态计算得到的效果是和在xml中使用该padding_8设置的效果一样的，前提是dimen定义的单位为dp

### 参考
* [getDimension，getDimensionPixelOffset和getDimensionPixelSize的一点说明](http://blog.csdn.net/cnmilan/article/details/38339109)