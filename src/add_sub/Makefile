# Compiler and flags for the add_sub module
CC := gcc
CFLAGS := -Wall -Wextra -Werror -I../../src/add_sub -MMD

# Source and object files
SRC := add_sub.c
OBJ := add_sub.o
DEP := add_sub.d

# Default target: compile the object file
all: $(OBJ)

# Compile .c to .o and generate .d dependency files
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Include dependency files if they exist
-include $(DEP)

# Clean up object and dependency files
clean:
	rm -f $(OBJ) $(DEP)

.PHONY: all clean
