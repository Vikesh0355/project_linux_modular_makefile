# Compiler and flags for the mul_div module
CC := gcc
CFLAGS := -Wall -Wextra -Werror -I../../src/mul_div -MMD

# Source and object files
SRC := mul_div.c
OBJ := mul_div.o
DEP := mul_div.d

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
