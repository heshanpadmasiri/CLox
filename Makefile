CC ?= clang
CFLAGS ?=
DEPS=$(wildcard *.h)
TARGETS=build test clean

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

%.exe: %.o
	$(CC) -o $*.exe $*.o

clean:
	rm -rf *.o
	rm -rf *.exe

.PHONY : $(TARGETS)
