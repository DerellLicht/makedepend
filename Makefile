OBJS=cppsetup.o ifparser.o include.o main.o parse.o pr.o
SRCS=cppsetup.c ifparser.c include.c main.c parse.c pr.c
BIN=makedepend

all: $(BIN)

clean:
	rm -f $(BIN).exe *.o

depend:
	$(BIN) $(SRCS)

$(BIN): $(OBJS)
	gcc -Wall -s -O3 $(OBJS) -o $@

%.o: %.c
	gcc -Wall -c -O3 $<

# DO NOT DELETE

cppsetup.o: def.h ifparser.h
ifparser.o: ifparser.h
include.o: def.h
main.o: def.h imakemdep.h
parse.o: def.h
pr.o: def.h
