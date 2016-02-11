### 文档存放目录

```
|--/data/dataio.github.emanual.app //应用根目录
    |---files/
        |----download/  //下载文档临时存放
        |----books/     //Book List
              |----http2-explained/     //Book :http2-explained  
                  |----book           //解压book.zip后的内容
                      |---book.json  //合并后book.json
                      |---_license/  //相关协议
                      |---.....
              |----docker-practice/     //已解压好的文档
                  |----book       解压book.zip后的内容
              
```

NOTE:
- 获取`books/`的文件状态，从而决定显示那些已经安装,获取文档文件下的`book.json`可以获取整个文档的基本信息
- `download/`下载完毕后记得删除
