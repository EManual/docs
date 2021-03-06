## 理念

>万物皆Markdown。

用markdown去表示一切

## 开发&编辑环境

- Linux & Mac OS X ,尽量不要window下编辑，中文文件名容易没有转码而导致错误
- 批量修改可以使用Sublime Text 字符串替换


## 文件名规范

- 语言项目文件名因为全部小写，例如:`md-{lang}`,`{lang}`全部为小写
- 尽量不要window下编辑
- 标点符号
  - 中文符号不能用(因为客户端忘记url encode就404了)故统一不适用中文符号，使用英文符号代替
  - NOTE: **文件名不能使用`:`**,Linux下正常，OS X下直接创建不行，用命令行创建自动转成/ ，windows下直接跪了:直接截断后面的，**所以不再能使用冒号，用空格代替**
  - 详细中英文对应，请看:[emanual-filename](https://github.com/EManual/EManual-CLI/issues/8)


## 资源(resources)

命名: 
1. 1x的默认为`[name].png`, 例如`angular.png`
2. 2x的为`[name]@2x.png`, 例如`angular@2x.png`
3. 如此类推,`angular@nx.png`

## 模块源

文件目录结构
```
|── feeds-book // 各类教程
    └──feeds
        └── php-the-right-way
                |---- info.json //php-the-right-way.json
                |---- Readme.md //一些补充说明
    
    
├── feeds-interview  // 面试模块
    |---java-xxx 
        └── info.json //面试题描述资料
      └── c-xxx
        └── info.json 
```

描述book的`info.json`格式如下

```json
{
    "name": "java",
    "md5": "xxxx",
    "icon_url": "", // 图片链接 16*16@1x
    //下载链接
    "url": "http://us.iemanual.com/xxx/yy.tar", //已打包好的
    "homepage":"http://foo-bar.com", //主页
    "author": "Foo Bar",  //原作者
    "maintainers":[  //book维护人员
        {
            "name":"User A",
            "email":"foo@gmail.com",
            "homepage":"https://github.com/foo"
        }
    ]
}
```

描述interview的json格式如下

```json
{
    "name": "java-xxx",
    "md5": "xxxx", //前5位即可
    "icon_url": "", // 图片链接 16*16@1x
    //mirror
    "url": "http://us.iemanual.com/xxx/yy.tar"
}
```


## 搜索(Index)支持?

TO BE DONE

## 客户端实现

- [Android客户端](./android.md)
