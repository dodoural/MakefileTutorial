

CC = gcc
CFLAGS = -Wall -Werror
INC = -I./Inc
LIBS = -pthread
SOURCES =./Src/
BUILD_DIR =./build/

executable: $(BUILD_DIR)main.o $(BUILD_DIR)pThreadFuncs.o $(BUILD_DIR)ops.o
	$(CC) $(INC) -o executable main.o ops.o pThreadFuncs.o $(LIBS)
	mkdir -p build
	mv *.o executable build/
$(BUILD_DIR)main.o: $(SOURCES)main.c
	$(CC) $(INC) -c $(SOURCES)main.c
$(BUILD_DIR)pThreadFuncs.o: $(SOURCES)pThreadFuncs.c
	$(CC) $(INC) -c $(SOURCES)pThreadFuncs.c
$(BUILD_DIR)ops.o: $(SOURCES)ops.c
	$(CC) $(INC) -c $(SOURCES)ops.c
clean:
	rm -Rf build/
