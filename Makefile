main:
	@echo 'hello world!'

commit:
	@git add ./docs
	@git commit -m 'Update at ${shell date}'

push:
	@git push origin master

server:
	@docpress s

deploy:
	@echo "发布文档到GitHub Pages"
	git-update-ghpages emanual/docs _docpress/

.PHONY: main deploy
