编程助手开发文档
-------------

在你参与EManual开发、学习前，请查看本文档，包含一些规范和约定。

### 安装

* 文档生成工具docpress
```
$ npm install -g docpress
```

* 同步文档到GitHub Pages工具[git-update-ghpages](https://github.com/rstacruz/git-update-ghpages)

```
$ npm install -g git-update-ghpages
```

### 本地预览

```
$ make serve
```

### 发布到`gh-pages`

```
$ make deploy
```

### 提交修改并推送到GitHub

```
$ make commit && make push
```
