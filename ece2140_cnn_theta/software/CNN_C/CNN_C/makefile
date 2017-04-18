IDIR = include
CC=gcc
CFLAGS=-Wall -std=c99 -I$(IDIR)
SRCDIR = src

_DEPS = CNN.h
DEPS = $(patsubst %,$(IDIR)/%,$(_DEPS))

_OBJ := $(wildcard $(SRCDIR)/*.c)
OBJ = $(patsubst %.c,%.o,$(_OBJ))

%.o: %.c $(DEPS)
	$(CC) $(CFLAGS) -c -o $@ $<

CNN: $(OBJ)
	gcc $(CFLAGS) -g -o $@ $^ -lm

clean:
	rm -f $(SRCDIR)/*.o
