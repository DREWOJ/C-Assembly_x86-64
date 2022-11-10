
INCLUDES = asm.h
SOURCES = proc.s call_proc.s main.c
OBJFILES = proc.o call_proc.s main.o
EXEC = main

# Suffix rules
.SUFFIXES : .c .o .s

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

