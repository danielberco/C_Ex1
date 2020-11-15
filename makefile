CC= gcc
FLAGS= -Wall

all: mymathd mymaths mains maind

#static
mains: main.o libmyMath.a
        $(CC) $(FLAGS) main.o -L. -lmyMath -o mains

#dynamic
maind: maind.o libmyMath.so
        $(CC) $(FLAGS) main.o -L. -lmyMath -o maind

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
basicMath.o: basicMath.c myMath.h
           $(CC) $(FLAGS) -c basicMath.c myMath.h
#mylib file
power.o: power.c myMath.h
           $(CC) $(FLAGS) -c power.c myMath.h
main.o: mainE.c myMath.h
        $(CC) $(FLAGS) -c mainE.c myMath.h



.PHONY: clean all

clean:
      rm -f *.o*.a*.so mains maind






