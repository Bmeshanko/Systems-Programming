all: git-commit

.PHONY: git-commit
git-commit:
	git checkout master >> .local.git.out || echo
	git add --all
	git commit -a -m \\"Commit from Makefile\\"
	git push origin master
