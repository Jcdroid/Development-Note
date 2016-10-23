# iOS UICollectionView使用

### 前言

### UICollectionViewDataSource

### UICollectionViewDelegate

### UICollectionViewDelegateFlowLayout

### 固定UICollectionView的section
见[这里](http://stackoverflow.com/questions/15233180/uicollectionview-with-a-sticky-header)

### 问题
1. 当`UICollectionView`中`item`的没有按照预计的显示，比如**想要一行四列，可是显示出来的结果确是一行三列**
> 这时候请检查`UICollectionViewDelegateFlowLayout`代理里面的`sizeForItemAtIndexPath`、`insetForSectionAtIndex`、`minimumLineSpacingForSectionAtIndex`、`minimumInteritemSpacingForSectionAtIndex`是否按照预计的计算，还有是否有设置`UICollectionView`的`contentInset`属性

2. 控制台出现`the item height must be less than the height of the UICollectionView minus thesection insets top and bottom values.`警告 
> UICollectionViewFlowLayout的itemSize的宽或者高设置的有问题！它的size必须在父容器的范围之内！