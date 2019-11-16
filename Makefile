CC=gcc
AR=ar
OBJECTS_MAIN=main.o
OBJECTS_LIB=basicMath.o power.o
FLAGS= -Wall -g

all: mymathd mymaths maind mains	
maind: $(OBJECTS_MAIN)  
	$(CC) $(FLAGS) -o maind $(OBJECTS_MAIN) ./libmyMath.so
mains: $(OBJECTS_MAIN)
	$(CC) $(FLAGS) -o mains $(OBJECTS_MAIN) libmyMath.a
mymaths: libmyMath.a
mymathd: libmyMath.so
libmyMath.a: $(OBJECTS_LIB) myMath.h
	$(AR) -rcs libmyMath.a $(OBJECTS_LIB)
libmyMath.so: $(OBJECTS_LIB) myMath.h
	$(CC) -shared -o libmyMath.so $(OBJECTS_LIB)	
basicMath.o: basicMath.c myMath.h
	$(CC) $(FLAG) -c basicMath.c
power.o: power.c myMath.h
	$(CC) $(FLAG) -c power.c 
main.o: main.c myMath.h
	$(CC) $(FLAG) -c main.c

.PHONY: clean all

clean:
	rm -f *.o *.a *.so progmains progmaind
