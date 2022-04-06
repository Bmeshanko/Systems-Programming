all: git-commit

.PHONY: git-commit
git-commit:
	git checkout master >> .local.git.out || echo
	git add . >> .local.git.out || echo
	git commit -a -m "Commit from Makefile" >> .local.git.out || echo
	git push
