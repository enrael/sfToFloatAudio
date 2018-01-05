OBJS = sf2float.o portsf.o ieee80.o
CFLAGS = -g -w
CC = g++

all: programa

programa: $(OBJS)
	g++ -o $@ $?

%.o: %.c
	g++ $(CFLAGS) -c $< -o $@

clean:
	rm -f  programa $(OBJS)