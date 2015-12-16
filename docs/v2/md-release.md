## 文件目录结构

```
---dist
  ---emanual.apk
  ---emanual-<version>.apk
  ---info.json // description of current release
---CHANGELOG.md //all the changlog
---README.md
```

## `info.json`

```json  
{
    "version_name":"1.0.0",
    "version_code":11,
    "download_url":"http:www.iemanual.com/md-release/dist/emanual.apk",
    "update_time":"2015-02-28",
    "size":"2.3 MB"
    "change_log":[
      {"content":"fix xxxx"},
      {"content":"fix xxxx"}
    ]
}
```

## `CHANGELOG.md` 格式

```
### vX.Y.Z @YY-MM-DD

* xxxxx
* yyyyy

```
