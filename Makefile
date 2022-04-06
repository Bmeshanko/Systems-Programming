all: git-commit

.PHONY: git-commit
git-commit:
	git add --all
	git commit -a -m "Commit from Makefile"
	git push
