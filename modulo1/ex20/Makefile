# A Makefile with variables and suffix rules
# Source: moodle ARCCP
# variaveis
INCLUDES = find_all_words.h
SOURCES = find_all_words.c main.c
OBJFILES = find_all_words.o main.o
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
