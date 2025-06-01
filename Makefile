# Root Makefile

# Include the module-specific Makefiles
include makefile.modules.mk
include makefile.rules.mk
include makefile.verify.mk

# Compiler and global flags
CC := gcc
CFLAGS := -Wall -Wextra -Werror -Isrc/add_sub -Isrc/mul_div -MMD
LDFLAGS := 

# Default target: Build the main program
all: my_project

# Clean all build artifacts (submodules, main program, tests)
clean:
	$(MAKE) -C src/add_sub clean
	$(MAKE) -C src/mul_div clean
	rm -f src/main.o my_project $(TEST_EXE)

# Run the main executable
run: my_project
	./my_project

# Build and run the test executable
test: $(TEST_EXE)
	@echo "Running tests..."
	@./$(TEST_EXE)

# Declare 'clean', 'run', 'test' as phony to avoid conflicts
.PHONY: all clean run test


# make -compile the files
# make run - run the executable
# make test - verify the test cases
# make verify - verify the test cases