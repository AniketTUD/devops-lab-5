prog: hello.o
	gcc -o prog hello.o

hello.o: hello.c
	gcc -o hello.o -c hello.c
