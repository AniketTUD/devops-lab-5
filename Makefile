CC = gcc
PROG_NAME ?= prog

$(PROG_NAME): hello.o
	$(CC) -o $(PROG_NAME) hello.o

%.o: %.c
	$(CC) -MD -MF $(subst .c,.d,$^) -o $@ -c $^

.PHONY: clean
clean:
	rm -f *.o
	rm -f $(PROG_NAME)

.PHONY: install
install: $(PROG_NAME)
	install -m 655 -o root $(PROG_NAME) /usr/bin

