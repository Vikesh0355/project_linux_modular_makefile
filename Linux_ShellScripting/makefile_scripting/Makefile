# Declare the compiler
cc = g++
# Compiler flags
CFLAGS = -c -Wall
# Target to build everything
all: edit
# Link object files into the final executable
edit: main.o function1.o function2.o
	$(cc) main.o function1.o function2.o -o edit
# Compile source files into object files
main.o: main.cpp
	$(cc) $(CFLAGS) main.cpp
function1.o: function1.cpp
	$(cc) $(CFLAGS) function1.cpp
function2.o: function2.cpp
	$(cc) $(CFLAGS) function2.cpp
# Clean up build artifacts
clean:
	rm -rf *.o edit
