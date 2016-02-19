## Interview模块

### Requirement 

- node.js
    - [emanual-interview][1] `$ npm install -g emanual-interview`


### 草案

描述一个面试题目`questionA.md`

ref: [为啥没有单双选][choice]

```text
    - type: reply   //必填 判断judgment 选择choice([为啥没有单双选][choice]) 回答reply
    - tag: 前端 node.js npm //可选
    - difficulty:  1 //可选，0-5，默认0
    - from: 'Google 2015笔试'

    --------  // 分割线，上下至少一个有一个空行

    在android中使用SQLiteOpenHelper这个辅助类时，可以生成一个数据库，并可以对数据库版本进行管理的方法可以是()

    //如果是有选项的话(每一行一个选项)
    ```option
    A、getWriteableDatabase()
    B、getReadableDatabase()
    C、getDatabase()
    D、getAbleDatabase()
    ```

    ---------// 分割线，上下至少一个有一个空行

    答案：AB
```

根据markdown 可以编译成这么一份`questionA.json`:

```json
{
    "type": "reply",
    "tag": ["前端", "node.js", "npm"],
    "difficulty": 1 ,
    "from": "Google 2015笔试",
    "description": "{试题的markdown内容}",
    "options": [
        "getWriteableDatabase()",
        "getReadableDatabase()",
        "getDatabase()",
        "getAbleDatabase()"
    ],
    "answer": "{试题的markdown 答案}"
}
```

同样地，需要通过`SUMMERY.md`解析生成一份`summery.json`

--------------------

[choice]: https://github.com/Jayin/think/issues/7
[1]: https://github.com/EManual/node-emanual-interview
