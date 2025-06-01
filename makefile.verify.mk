# makefile.verify.mk

# Test executable and its source file
TEST_EXE := test/test_main
TEST_SRC := test/test_main.c

# 'verify' target: Build all test executables and run them
verify: $(TEST_EXE)
	@echo "Running tests...."
	@for test in $(TEST_EXE); do \
		./$$test || exit 1; \
	done

# Rule to build the test executable by compiling test source
$(TEST_EXE): $(TEST_SRC) src/add_sub/add_sub.o src/mul_div/mul_div.o
	$(CC) $(CFLAGS) -o $@ $^

