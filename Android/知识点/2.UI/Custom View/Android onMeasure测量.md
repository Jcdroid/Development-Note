# Android onMeasure测量

### ViewGroup的测量
Android的试图测量是从ViewGroup开始的，onMeasure方法在ViewGroup中是个抽象方法，不进行直接的测量，都是在ViewGroup的子类中进行View的测量。

```
1 .测量控件大小是父控件发起的
2. 父控件要测量子控件大小，需要重写onMeasure方法，然后调用measureChildren或者measureChildWithMargin方法
3. on Measure方法的参数是通过getChildMeasureSpec生成的
4. 如果我们自定义控件需要使用wrap_content，我们需要重写onMeasure方法
测量控件的步骤： 
父控件onMeasure->measureChildren、measureChildWithMargin->getChildMeasureSpec-> 
子控件的measure->onMeasure->setMeasureDimension-> 
5. 父控件onMeasure结束调用setMeasureDimension保存自己的大小
```

### View的测量
使用从ViewGroup传递过来的MeasureSpec，分别计算出宽高（width、height），再调用setMeasureDimension(width, height)保存自己的大小。