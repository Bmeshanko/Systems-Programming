all: git-commit

.PHONY: git-commit
git-commit:
	git checkout master >> .local.git.out || echo
	git add Makefile *.c >> .local.git.out || echo
	git commit -a -m "Commit from Makefile" >> .local.git.out || echo
	git push >> .local.git.out || echo
