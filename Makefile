CC?=gcc
CFLAGS ?=
DEPS=$(wildcard *.h)
TARGETS=build test clean
OBJS=chunk.o debug.o memory.o main.o

build: main.exe

clean:
	rm -rf *.o
	rm -rf *.exe

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

%.exe: $(OBJS)
	$(CC) -o $@ $(OBJS)

.PHONY : $(TARGETS)
