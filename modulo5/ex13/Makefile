INCLUDES = function.h
SOURCES =  count_odd_matrix.s new_matrix.c main.c
OBJFILES = count_odd_matrix.o new_matrix.o main.o
EXEC = main

# Suffix rules
.SUFFIXES: .c .o .s

# How to build an object .o from a code file .c ; $< -- file name
.c.o:
	gcc -Wall -g -c $<
.s.o:
	gcc -Wall -g -c $<

${EXEC}: ${OBJFILES}
	gcc -Wall -g -o ${EXEC} ${OBJFILES}

${OBJFILES}: ${SOURCES} ${INCLUDES}

run: ${EXEC}
	./${EXEC}

clean:
	rm -f ${OBJFILES} ${EXEC}

