# makefile.modules.mk

# Submodule object files
add_sub_OBJ := src/add_sub/add_sub.o
mul_div_OBJ := src/mul_div/mul_div.o

# Combine all object files from modules and the main program
OBJ := $(add_sub_OBJ) $(mul_div_OBJ) src/main.o
