main: copy_vec.o main.o
	gcc copy_vec.o main.o -o main

copy_vec.o: copy_vec.c
	gcc -g -Wall -c copy_vec.c -o copy_vec.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o main

run: main
	./main
