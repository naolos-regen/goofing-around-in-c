#ifndef INCLUDE_H
# define INCLUDE_H

// quicksort.c

void	swap_vars(void **data, int i, int j);
void	quicksort(void **data, int l, int r, int (*compar)(void *, void*));

// compar.c

int	int_compar(void *c1, void *c2);
int	char_compar(void *c1, void *c2);
int	string_compar(void *c1, void *c2);

// print_xx.c

void	print_int(void *data);
void	print_char(void *data);
void	print_string(void *data);
void	print_pointer(void *data);

// for_each.c
#include <stdlib.h>
void	ft_foreach(void *arr, int len, size_t elem_size, void (*f)(void *));




#endif
