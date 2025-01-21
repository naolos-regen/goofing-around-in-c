OUT	= example01
CC	= gcc
CCFLAGS	= -Wall -Werror -Wextra
SRC	= src/compar.c src/for_each.c src/print_xx.c src/quicksort.c src/main.c
OBJ	= $(SRC:.c=.o)

.PHONY: all
all: $(OUT)

$(OUT): $(OBJ)
	$(CC) $(CCFLAGS) -o $@ $^

%.o: %.c include/include.h
	$(CC) $(CCFLAGS) -c $< -o $@

.PHONY: clean
clean:
	rm -f $(OBJ)

.PHONY: fclean
fclean: clean
	rm -f $(OUT)

.PHONY: re
re: fclean all

