# Atom插件

* Emmet
* Atom Beautify
* Autocomplete Paths
* Auto close HTML
* Minimap
* color-picker
* file-icons

### 让Emmet支持Vue
进入`Atom`-`Keymap`，在`keymap.cson`文件最下方添加下面的代码，详见[这里](https://github.com/emmetio/emmet-atom/issues/364)

	'atom-text-editor[data-grammar~="vue"]:not([mini])':
	    'tab': 'emmet:expand-abbreviation-with-tab'

### 参考
* [强力推荐：Atom入坑必备插件](http://blog.csdn.net/m13026178198/article/details/52843849)
* [Missing support for .vue files](https://github.com/emmetio/emmet-atom/issues/364)