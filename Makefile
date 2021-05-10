CC=gcc
AR=ar

LIB=librandom.a

all: $(LIB)
	mkdir -p random/lib
	mkdir -p random/include
	mv $(LIB) random/lib
	cp random.h random/include

librandom.a: random.o random.h
	$(AR) rcs $@ $<

%.o: %.c
	$(CC) -c $<

clean:
	rm -f *.o
	rm -f $(LIB)
	rm -rf random

.PHONY: all clean
