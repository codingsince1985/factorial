all: main

main: factorial.o ../main.c
	gcc -o main factorial.o ../main.c

factorial.o: ../factorial.h factorial.c
	gcc -c -o factorial.o factorial.c

clean:
	rm *.o main
