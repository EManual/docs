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

## 模块源

文件目录结构
```
    feeds
    ├── interview  // 面试
    │   └── java-xxx.json //javaXX面试题目
    └── modules // 各类教程
        └── php-the-right-way.json //php-the-right-way.json
```

描述一个module的json格式如下

```json
{
    "name": "java",
    "md5": "xxxx", //前5位即可
    "icon_url": "", // 图片链接 16*16@1x
    //下载链接
    "url": "http://us.iemanual.com/xxx/yy.tar"
}
```

描述一个interview的json格式如下

```json
{
    "name": "java",
    "md5": "xxxx", //前5位即可
    "icon_url": "", // 图片链接 16*16@1x
    //mirror
    "url": "http://us.iemanual.com/xxx/yy.tar"
}
```


## 面试模块

描述一个面试题目`questionA.md`

```text
    - type: Reply   //必填 判断judgment 单选Radio 多选choice 回答Reply
    - tag: 前端 node.js npm //可选
    - difficulty:  1 //可选，0-5，默认0
    - from: 'Google 2015笔试'

    --------  // 分割线，上下至少一个有一个空行

    在android中使用SQLiteOpenHelper这个辅助类时，可以生成一个数据库，并可以对数据库版本进行管理的方法可以是()

    //如果是有选项的话
    ```option
    A、getWriteableDatabase()
    B、getReadableDatabase()
    C、getDatabase()
    D、getAbleDatabase()
    ```

    ---------

    答案：AB
```
