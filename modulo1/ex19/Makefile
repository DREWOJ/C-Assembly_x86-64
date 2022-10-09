# A Makefile with variables and suffix rules
# Source: moodle ARCCP
# variaveis
INCLUDES = find_word.h upper1.h
SOURCES = find_word.c upper1.c main.c
OBJFILES = find_word.o upper1.o main.o
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
