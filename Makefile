all: git-commit thr point

.PHONY: git-commit
git-commit:
	git checkout master >> .local.git.out || echo
	git add Makefile 
	git add Threads/*.c Threads/*.cc >> .local.git.out || echo
	git add Pointers/*.c >> .local.git.out || echo
	git commit -a -m "Commit from Makefile" >> .local.git.out || echo
	git push >> .local.git.out || echo

thr:
	g++ -o Threads/thr Threads/thr.cc -lpthread

point:
	gcc -o Pointers/pointers Pointers/pointers.c

clean:
	rm -f *.o Threads/thr
	rm -f Pointers/pointers


