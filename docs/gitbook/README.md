# gitbook overview
>docpress bug: 在一markdown内容页无法引用其他markdown d

[](../v3/draft.md)

### gitbook-markdown

gitbook的解析器，用于实现解析`SUMMARY.md`, `README.md`等预设的配置，约定的markdown文件，只会解析基本的**目录**结构

#### gitbook-markdown对`SUMMARY.md`解析

exampel:
```markdown
# Summary

* [Introduction](README.md)
* [Format](format/README.md)
   * [Output](format/output.md)
   * [Readme and Introduction](format/introduction.md)
   * [Chapters and Subchapters](format/chapters.md)
* [Build](build/README.md)
  * [Update with GIT](build/push.md)
  * [Common Errors](build/errors.md)
  * [ebook-convert](build/ebookconvert.md)
* [GitHub Integration](github/README.md)
   * [Transferring content to GitHub](github/transferring_to_github.md)
```

`gitbook-markdown`解析的结构是:

```json
{
    "chapters": [
        {
            "title": "Introduction",
            "path": "README.md",
            "articles": []
        },
        {
            "title": "Format",
            "path": "format/README.md",
            "articles": [
                {
                    "title": "Output",
                    "path": "format/output.md",
                    "articles": []
                },
                {
                    "title": "Readme and Introduction",
                    "path": "format/introduction.md",
                    "articles": []
                },
                {
                    "title": "Chapters and Subchapters",
                    "path": "format/chapters.md",
                    "articles": []
                },
                {
                    "title": "Build",
                    "path": "build/README.md",
                    "articles": [
                        {
                            "title": "Update with GIT",
                            "path": "build/push.md",
                            "articles": []
                        },
                        {
                            "title": "Common Errors",
                            "path": "build/errors.md",
                            "articles": []
                        },
                        {
                            "title": "ebook-convert",
                            "path": "build/ebookconvert.md",
                            "articles": []
                        }
                    ]
                }
            ]
        },
        {
            "title": "GitHub Integration",
            "path": "github/README.md",
            "articles": [
                {
                    "title": "Transferring content to GitHub",
                    "path": "github/transferring_to_github.md",
                    "articles": []
                }
            ]
        }
    ]
}
```

问题来了: 如何识别章节/文章？ 目测上述结构只有根节点是章节


### gitbook-parsers

用于组织markdown,assicdoc的各种解析器。例如上述的gitbook-markdown 就是其中一个解析器


gitbook-markdown解析完了，gitbook-parsers对他二次加工：

```json
{
    "chapters": [
        {
            "path": "README.md",
            "title": "Introduction",
            "level": "0",
            "articles": [], //文章列表
            "exists": true, //是否存在
            "external": false,  // 是否是外部链接(e.g http://a.com/Readme.md)
            "introduction": true //是否介绍页
        },
        {
            "path": "format/README.md",
            "title": "Format",
            "level": "1",
            "articles": [
                {
                    "path": "format/output.md",
                    "title": "Output",
                    "level": "1.1",
                    "articles": [],
                    "exists": true,
                    "external": false,
                    "introduction": false
                },
                {
                    "path": "format/introduction.md",
                    "title": "Readme and Introduction",
                    "level": "1.2",
                    "articles": [],
                    "exists": true,
                    "external": false,
                    "introduction": false
                },
                {
                    "path": "format/chapters.md",
                    "title": "Chapters and Subchapters",
                    "level": "1.3",
                    "articles": [],
                    "exists": true,
                    "external": false,
                    "introduction": false
                },
                {
                    "path": "build/README.md",
                    "title": "Build",
                    "level": "1.4",
                    "articles": [
                        {
                            "path": "build/push.md",
                            "title": "Update with GIT",
                            "level": "1.4.1",
                            "articles": [],
                            "exists": true,
                            "external": false,
                            "introduction": false
                        },
                        {
                            "path": "build/errors.md",
                            "title": "Common Errors",
                            "level": "1.4.2",
                            "articles": [],
                            "exists": true,
                            "external": false,
                            "introduction": false
                        },
                        {
                            "path": "build/ebookconvert.md",
                            "title": "ebook-convert",
                            "level": "1.4.3",
                            "articles": [],
                            "exists": true,
                            "external": false,
                            "introduction": false
                        }
                    ],
                    "exists": true,
                    "external": false,
                    "introduction": false
                }
            ],
            "exists": true,
            "external": false,
            "introduction": false
        },
        {
            "path": "github/README.md",
            "title": "GitHub Integration",
            "level": "2",
            "articles": [
                {
                    "path": "github/transferring_to_github.md",
                    "title": "Transferring content to GitHub",
                    "level": "2.1",
                    "articles": [],
                    "exists": true,
                    "external": false,
                    "introduction": false
                }
            ],
            "exists": true,
            "external": false,
            "introduction": false
        }
    ]
}
```
