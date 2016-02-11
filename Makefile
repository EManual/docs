main:
	@echo 'Welcome to eManual docs!'

syncUpdate:
	@git add -A
	@git commit -m 'Update at ${shell date}'
	@git push origin master

serve:
	@docpress s

.PHONY: main syncUpdate serve
