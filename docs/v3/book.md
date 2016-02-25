## 构建Book

### Requirement 

- Node.js 5+
  - [gitbook@2.x][1] `$ npm install -g gitbook-cli`
  - [gitbook-ext: EManual-GitBook-cli@1.x][2]  `$ npm install -g emanual-gitbook-cli`
  - [md5-cli][3] `$ npm install -g md5-cli2`
- zip `$ apt-get install zip`

  
## Book模块

本想自订一套规范，但是GitBook的已经做得挺完善，于是采用gitbook作为一个规范: 用一份含有TOC(table of content)的
的markdown来组织整个模块的内容。

一般的gitbook目录结构

```
├── README.md
├── SUMMARY.md
├── XXXXX
│   ├── README.md
│   └── visibility.md
├── styles
│   └── website.css
└── styling
    ├── book.md
    └── homepage.md
```

用一份`SUMMERY.md`来组织整本书的TOC(table of content),也就是目录了

例如
```
# Summary

* [Introduction](README.md)   //第一个首页
* [Build](build/README.md)
   * [Update with GIT](build/push.md)
   * [ebook-convert](build/ebookconvert.md)
.......
```

同时需要通过`SUMMERY.md`解析生成一份`summery.json`。对应上述的生成如下

```
{
    "chapters": [  //章节
        {
            "title":"Introduction",   //名称
            "path": "README.md"  //对应的markdown文件
            "url": "index.html",
            "level": "0",
            "exists": true, //是否存在
            "external": false,  // 是否是外部链接(e.g http://a.com/Readme.md)
            "introduction": true, //是否介绍页
            "articles": [] //文章列表
        },
        {
            "title":"Build",   
            "path": "build/README.md",
            "url": "build/index.html"
            "level": "1",
            "exists": true, //是否存在
            "external": false,  // 是否是外部链接(e.g http://a.com/Readme.md)
            "introduction": true, //是否介绍页
            "articles": [] //文章列表
            "articles": [   //子目录
                {
                    "title":"Update with GIT",   
                    "path": "build/push.md",
                    "url": "build/push.html",
                    "level": "1.1",
                    "exists": true, //是否存在
                    "external": false,  // 是否是外部链接(e.g http://a.com/Readme.md)
                    "introduction": false, //是否介绍页
                    "articles": [] //文章列表
                },
                {
                    "title":"Introduction",
                    "path": "build/ebook-convert.md",
                    "url": "build/ebookconvert.html",
                    "level": "1.2",
                    "exists": true, //是否存在
                    "external": false,  // 是否是外部链接(e.g http://a.com/Readme.md)
                    "introduction": false, //是否介绍页
                    "articles": [] //文章列表
                }
            ]
        }
    ]
}
```
  
  
[1]: https://github.com/GitbookIO/gitbook
[2]: https://github.com/EManual/EManual-GitBook-cli
[3]: https://www.npmjs.com/package/md5-cli2
  
