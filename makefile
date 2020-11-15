CC= gcc
FLAGS= -Wall

all: mains maind

#dynamic
maind: main.o libmyMath.so
                $(CC) $(FLAGS) main.o -L. -lmyMath -o maind

#static
mains: main.o libmyMath.a
                $(CC) $(FLAGS) main.o -L. -lmyMath -o mains

#make main program
main.o: mainE.c
                $(CC) $(FLAGS) -c mainE.c -o main.o

mymaths: libmyMath.a
mymathd: libmyMath.so

#static library
libmyMath.a: basicMath.o power.o myMath.h
                ar -rcs libmyMath.a basicMath.o power.o
#dynamic library
libmyMath.so: basicMath.o power.o myMath.h
                $(CC) -shared $(FLAGS) basicMath.o power.o -o libmyMath.so

#mylib file
basicMath.o: basicMath.c
                $(CC) $(FLAGS) -c -fPIC basicMath.c
#mylib file
power.o: power.c
                $(CC) $(FLAGS) -c -fPIC power.c

.PHONY: clean all

clean:
                rm -f mains maind .o lib
