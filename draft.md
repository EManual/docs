Draft
=====

文件目录结构
----------

```
---java
	---markdown //专门存放markdown目录
		---advance
			----info.json //存贮本文件目录的信息
			----xx.md
		---basic
			----xx.md
			----xx.md
			----xx.md			
	---img //专门存放图片文件路径
	---config.json
```

`info.json`

```
{
  "files" :[
     {
       "mode": "{mode}"//取值为file or tree,
       "name": "{name}"//名称
       “path”: "{path}"//表示改文件的路径,从根开始
     }
  ],
  "mode":"{当前文件类型}"
  "name":"{当前文件名}",
  "path":"{当前文件路径}"
}
```


markdown图片
-----------

均放置在`img/`

```
![title](http://www.ieemanual.com/md-java/img/xxx.png)
```







	