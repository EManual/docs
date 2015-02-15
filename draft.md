Draft
=====

# 文件名规范

- 语言项目文件名因为全部小写，例如:`md-{lang}`,`{lang}`全部为小写
- 尽量不要window下编辑


# markdown规范

- 尽量少用 `-----` 作为h2标题，真的除非是全文的标题除外


资料文件目录结构
----------

```
---java
  ---dist //打包后的目录，例如打包成zip
    ----{lang} // `emanual create`生成的包含info.json的markdown文件
    ----{lang}.zip  //对应语言的打包
	---markdown //专门存放markdown目录
		---0001-advance
			----info.json //存贮本文件目录的信息
			----xx.md
		---0002-basic  //YYYY-{name}四位序号
			----0001-xx.md
			----0002-xx.md
			----0002-xx.md			
	---img //专门存放图片文件路径
```

`info.json` (由`emanual create生成`)

```
{
  "files" :[
     {
       "mode": "{mode}"//取值为file or tree,
       "name": "{name}"//当前名称(拼音)
       "rname": "{raw_name}"//原来的名字不含拼音
       “path”: "{path}"//表示改文件的路径,从根开始(注意:指的是资源包得根目录,例如这个`/java`)
       "mtime":{mtime}//最后修改时间,单位:秒
     }
  ],
  "mode":"{当前文件类型}"
  "name":"{当前文件名}",
  "rname": "{原来的名字不含拼音}",
  "path":"{当前文件路径}"
  "mtime":"{最后修改时间}"
}
```


markdown图片
-----------

- 避免出现图片 
- 均放置在`img/`

```
![title](http://www.ieemanual.com/md-java/img/xxx.png)
```


# 新闻资讯模块

> 类似于上面的其他语言模块结构，但是有异同,对他提出了特别的需求

- 支持分页(`{page}.json`,404找不到该页说明不能翻页了)
- 支持内容预览(段落显示前10-30个字)
- 抛弃`info.json`，因为内容太少，有用信息只有`page`(页码)


新闻资讯文章目录结构
----------

```
---java
  ---dist //打包后的目录，例如打包成zip
    ----1.json //第一页信息
    ----2.json 
       ....
    ----{page}.json 
    ----newsfeeds //对`../markdown`目录预处理好(拼音转换)
  ---markdown //专门存放markdown目录
    ---2014
      ----2014-01-01-xxxxx.md
    ---2015
      ----2015-01-01-xxxxx.md   
  ---img //专门存放图片文件路径
```

`{page}.json`

```json
[
    {
        "name":"{拼音转换后的名称}",
        "rname":"{为转换的名称}", 
        "description":"{10-20字的简介}",
        
     }
]
```







	
