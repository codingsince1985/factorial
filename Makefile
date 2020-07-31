all: recursive iterative

recursive: recursive/factorial.o main.c
	gcc -o recursive/main recursive/factorial.o main.c

iterative: iterative/factorial.o main.c
	gcc -o iterative/main iterative/factorial.o main.c

recursive/factorial.o: factorial.h recursive/factorial.c
	gcc -c -o recursive/factorial.o recursive/factorial.c

iterative/factorial.o: factorial.h iterative/factorial.c
	gcc -c -o iterative/factorial.o iterative/factorial.c

clean:
	rm iterative/*.o iterative/main recursive/*.o recursive/main
