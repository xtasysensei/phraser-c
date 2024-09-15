CC = clang
CFLAGS = -I./include -Wall

SRCS = src/main.c src/utils.c src/crypto.c src/seedphrase.c
OBJS = \$(SRCS:.c=.o)

TARGET = build/phraser

all: \$(TARGET)

\$(TARGET): \$(OBJS)
	@echo "Building phraser..."
	\$(CC) \$(OBJS) -o \$(TARGET)

clean:
	@echo "Cleaning up..."
	rm -f \$(OBJS) \$(TARGET)

test: all
	@echo "Running tests..."
	./tests/test_crypto
	./tests/test_seedphrases
	./tests/test_utils

.PHONY:
	all test clean
