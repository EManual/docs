main:
	@echo 'Welcome to eManual docs!'

commit:
	@git add ./docs
	@git commit -m 'Update docs/ at ${shell date}'

push:
	@git push origin master

serve:
	@docpress s

deploy:
	@echo "发布文档到GitHub Pages"
	git-update-ghpages emanual/docs _docpress/

.PHONY: main deploy
