main: sum_even.o main.o
	gcc sum_even.o main.o -o main
sum_even.o: sum_even.c
	gcc -g -Wall -c sum_even.c -o sum_even.o
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
clean:
	rm -f *.o main
run: main
	./main
