CC = clang
CFLAGS = -I./include -Wall

SRCS = src/main.c src/utils.c src/crypto.c src/seedphrase.c
OBJS = \$(SRCS:.c=.o)