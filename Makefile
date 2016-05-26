PROGS = protobuff_io
BASEOBJ = lm_hello.pb.o protobuff_io.o
LDLIBS = -lprotobuf
CC = g++
CFLAGS = -g -Wall -std=c++0x
INCLUDES = -I./

all:$(PROGS)

protobuff_io:$(BASEOBJ)
	$(CC) $(CFLAGS) -o $@ $^ $(LDLIBS)

%.o:%.cc
	$(CC) $(CFLGAS) -$(INCLUDES) -c $^ -o $@

clean:
	rm -f $(PROGS) *.o
