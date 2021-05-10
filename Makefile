CC=gcc
AR=ar

LIB=librandom.a

all: $(LIB)

librandom.a: random.o random.h
	$(AR) rcs $@ $<

%.o: %.c
	$(CC) -c $<

clean:
	rm -f *.o
	rm -f $(LIB)

.PHONY: all clean
