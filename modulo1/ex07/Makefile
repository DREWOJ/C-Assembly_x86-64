# A Makefile with variables and suffix rules
# Source: moodle ARCCP
# variaveis
INCLUDES = array_sort1.h
SOURCES = array_sort1.c main.c
OBJFILES = array_sort1.o main.o
EXEC = main
# Suffix rules
.SUFFIXES : .c .o
# How to build an object .o from a code file .c ; $< -- file name
.c.o:
	gcc -Wall -g -c $<

${EXEC}: ${OBJFILES}
	gcc -Wall -g -o ${EXEC} ${OBJFILES}

${OBJFILES}: ${SOURCES} ${INCLUDES}

run: ${EXEC}
	./${EXEC}

clean:
	rm -f ${OBJFILES} ${EXEC}


