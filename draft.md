Draft
=====

# 文件名规范

- 语言项目文件名因为全部小写，例如:`md-{lang}`,`{lang}`全部为小写
- 尽量不要window下编辑


# markdown规范

- 尽量少用 `-----` 作为h2标题，真的除非是全文的标题除外


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
       "mtime":{mtime}//最后修改时间,单位:秒
     }
  ],
  "mode":"{当前文件类型}"
  "name":"{当前文件名}",
  "path":"{当前文件路径}"
  "mtime":"{最后修改时间}"
}
```


markdown图片
-----------

均放置在`img/`

```
![title](http://www.ieemanual.com/md-java/img/xxx.png)
```







	
