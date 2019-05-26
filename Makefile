

CC = gcc
CFLAGS = -Wall
INC = -I./Inc
LIBS = -pthread
SOURCES =./Src/

executable: main.o pThreadFuncs.o ops.o
	$(CC) $(INC) -o executable main.o ops.o pThreadFuncs.o $(LIBS)
	mkdir -p build
	mv executable *.o build/
main.o: $(SOURCES)main.c
	$(CC) $(INC) -c $(SOURCES)main.c $(LIBS)
pThreadFuncs.o: $(SOURCES)pThreadFuncs.c
	$(CC) $(INC) -c $(SOURCES)pThreadFuncs.c $(LIBS)
ops.o: $(SOURCES)ops.c
	$(CC) $(INC) -c $(SOURCES)ops.c
clean:
	rm -Rf build/
