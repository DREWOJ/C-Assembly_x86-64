INCLUDES = asm.h
SOURCES = sum.s sub.s multiplication.s division.s modulus.s power2.s power3.s main.c
OBJFILES = sum.o sub.o multiplication.o division.o modulus.o power2.o power3.o main.o
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
