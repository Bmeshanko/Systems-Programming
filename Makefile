all: git-commit thr

.PHONY: git-commit
git-commit:
	git checkout master >> .local.git.out || echo
	git add Makefile Threads/*.c Threads/*.cc >> .local.git.out || echo
	git commit -a -m "Commit from Makefile" >> .local.git.out || echo
	git push >> .local.git.out || echo

thr:
	g++ -o Threads/thr Threads/thr.cc -lpthread

clean:
	rm -f *.o thr


