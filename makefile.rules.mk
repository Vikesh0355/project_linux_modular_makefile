# makefile.rules.mk

# Compiler flags (specific to this part)
CFLAGS := -Isrc/add_sub -Isrc/mul_div -Wall -Wextra -Werror

# Rule to compile main.c into an object file src/main.o
src/main.o: src/main.c
	$(CC) $(CFLAGS) -c $< -o $@

# Rule to compile src/add_sub/add_sub.c into an object file
src/add_sub/add_sub.o: src/add_sub/add_sub.c src/add_sub/add_sub.h
	$(CC) $(CFLAGS) -c $< -o $@

# Rule to compile src/mul_div/mul_div.c into an object file
src/mul_div/mul_div.o: src/mul_div/mul_div.c src/mul_div/mul_div.h
	$(CC) $(CFLAGS) -c $< -o $@

# Link all object files to create the final executable 'my_project'
my_project: $(OBJ)
	$(CC) $(LDFLAGS) -o $@ $(OBJ)

