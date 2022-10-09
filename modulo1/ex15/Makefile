# A Makefile with variables and suffix rules
# variaveis

INCLUDES = functions.h
SOURCES = check.c populate.c inc_nsets.c main.c
OBJFILES = check.o populate.o inc_nsets.o main.o
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

